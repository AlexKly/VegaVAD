import config
from config import np, Counter, wav, resampy, python_speech_features


# Extraction features for each file like a time-series:
def extractFeaturesTimeSeries(info_wav_file: list, info_target: list, ind: int, num_files: int) -> np.ndarray:
    # Create massive for stacking features in first step:
    dataset_tmp = np.zeros((1, config.NFEATURES + 2))

    for i in range(len(info_wav_file)):
        # Load audio file and target:
        (sample_rate, sig) = wav.read(config.HEAD_DIR + info_wav_file[i + (ind * num_files)])
        sig = resampy.resample(x=sig, sr_orig=sample_rate, sr_new=config.SAMPLE_RATE)

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

        # Create array of targets:
        target = info_target[i + (ind * num_files)]
        markers = np.zeros(features.shape[0])
        markers[:] = target

        # Merge label and frames and all frames in dataset:
        dataset_tmp = np.vstack((dataset_tmp, np.hstack((markers.reshape(markers.shape[0], 1), features))))

    # Delete row consist of zeros:
    dataset = dataset_tmp[1:]

    return dataset


# Extraction features for each file like a images:
def extractFeaturesImages(info_wav_file: list, info_target: list, ind: int, num_files: int) -> np.ndarray:
    dataset = list()

    for i in range(len(info_wav_file)):
        # Load audio file and target:
        (sample_rate, sig) = wav.read(config.HEAD_DIR + info_wav_file[i + (ind * num_files)])
        sig = resampy.resample(x=sig, sr_orig=sample_rate, sr_new=config.SAMPLE_RATE)

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

        # Create array of targets:
        target = info_target[i + (ind * num_files)]
        markers = np.zeros(features_logfbank.shape[0])
        markers[:] = target

        for j in range(int(np.floor(features_logfbank.shape[0] / config.NFRAMES))):
            spectrogram_image = features_logfbank[j * config.NFRAMES:(j + 1) * config.NFRAMES]
            spectrogram_image_in_line = spectrogram_image.reshape(config.NFRAMES * config.NFRAMES)
            label_spectrogram_image = Counter(markers[j * config.NFRAMES:(j + 1) * config.NFRAMES]).most_common()[0]
            dataset.append((label_spectrogram_image[0], spectrogram_image_in_line))

    dataset = np.array(dataset)

    return dataset
