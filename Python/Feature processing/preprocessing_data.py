import config
from config import np, tqdm, librosa, python_speech_features


# Extraction features for each file like a time-series:
def extractFeaturesTimeSeries(info_wav_file: list, info_target: list, train_cycle: bool) -> np.ndarray:
    # Create massive for stacking features in first step:
    if train_cycle:
        dataset_tmp = np.zeros((1, config.NFEATURES + 2))
    else:
        dataset_tmp = np.zeros((1, config.NFEATURES + 1))

    for i in tqdm(range(len(info_wav_file))):
        # Load audio file and target:
        sig, sample_rate = librosa.load(config.HEAD_DIR + info_wav_file[i], sr=config.SAMPLE_RATE)

        # Extract features:
        features_fbank, feature_energy = python_speech_features.base.fbank(signal=sig,
                                                                           samplerate=config.SAMPLE_RATE,
                                                                           winlen=config.FRAME_LENGTH,
                                                                           winstep=config.FRAME_STEP,
                                                                           nfilt=config.NFEATURES,
                                                                           nfft=config.NFFT,
                                                                           lowfreq=0,
                                                                           highfreq=None,
                                                                           preemph=config.PREEMPHASIS_COEF,
                                                                           winfunc=config.WINDOW_FUNCTION)

        # Logfbank and log energy:
        features_logfbank = np.log(features_fbank)
        feature_logenergy = np.log(feature_energy)

        # Merge logfbank and log energy:
        features = np.hstack((feature_logenergy.reshape(feature_logenergy.shape[0], 1), features_logfbank))

        if train_cycle:
            # Create array of targets:
            target = info_target[i]
            markers = np.zeros(features.shape[0])
            markers[:] = target

            # Merge label and frames and all frames in dataset:
            dataset_tmp = np.vstack((dataset_tmp, np.hstack((markers.reshape(markers.shape[0], 1), features))))
        else:
            # Merge label and frames and all frames in dataset:
            dataset_tmp = np.vstack((dataset_tmp, features))

    # Delete row consist of zeros:
    dataset = dataset_tmp[1:]

    return dataset


# Extraction features for each file like a images:
def extractFeaturesImages(info_wav_file: list, info_target: list, train_cycle: bool) -> np.ndarray:
    dataset = list()

    for i in tqdm(range(len(info_wav_file))):
        # Load audio file and target:
        sig, sample_rate = librosa.load(config.HEAD_DIR + info_wav_file[i], sr=config.SAMPLE_RATE)

        # Extract logfbank features:
        features_logfbank = python_speech_features.base.logfbank(signal=sig,
                                                                 samplerate=config.SAMPLE_RATE,
                                                                 winlen=config.FRAME_LENGTH,
                                                                 winstep=config.FRAME_STEP,
                                                                 nfilt=config.NFEATURES,
                                                                 nfft=config.NFFT,
                                                                 lowfreq=0,
                                                                 highfreq=None,
                                                                 preemph=config.PREEMPHASIS_COEF)

        if train_cycle:
            # Create array of targets:
            target = info_target[i]
            markers = np.zeros(features_logfbank.shape[0])
            markers[:] = target

        spectrogram_image = np.zeros((config.NFRAMES, config.NFRAMES))
        spectrogram_image_in_line = np.zeros(config.NFRAMES * config.NFRAMES)
        for j in range(int(np.floor(features_logfbank.shape[0] / config.NFRAMES))):
            spectrogram_image = features_logfbank[j * config.NFRAMES:(j + 1) * config.NFRAMES]
            spectrogram_image_in_line = spectrogram_image.reshape(config.NFRAMES * config.NFRAMES)
            if train_cycle:
                label_spectrogram_image = 1 if np.sum(
                    markers[j * config.NFRAMES:(j + 1) * config.NFRAMES]) > config.NFRAMES / 2 else 0
                dataset.append((label_spectrogram_image, spectrogram_image_in_line))
            else:
                dataset.append(spectrogram_image_in_line)

    dataset = np.array(dataset)

    return dataset
