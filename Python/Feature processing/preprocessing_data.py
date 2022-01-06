import config
from config import np, Counter, tqdm, librosa, python_speech_features


# Cutting dataset for training and test:
def cuttingDataset(list_files: list, target_list: list, dataset_size: int, is_train: bool):
    current_size_label_0 = 0
    current_size_label_1 = 0
    current_size_label_2 = 0
    ind_list_files = 0
    continue_cutting = True
    cuttung_list_files = list()
    cutting_target_list = list()

    while continue_cutting:

        if is_train:
            if target_list[ind_list_files] == 0 and current_size_label_0 < dataset_size:
                cuttung_list_files.append(list_files[ind_list_files])
                cutting_target_list.append(target_list[ind_list_files])
                current_size_label_0 = current_size_label_0 + 1
            elif target_list[ind_list_files] == 1 and current_size_label_1 < dataset_size:
                cuttung_list_files.append(list_files[ind_list_files])
                cutting_target_list.append(target_list[ind_list_files])
                current_size_label_1 = current_size_label_1 + 1
            elif target_list[ind_list_files] == 2 and current_size_label_2 < dataset_size:
                cuttung_list_files.append(list_files[ind_list_files])
                cutting_target_list.append(target_list[ind_list_files])
                current_size_label_2 = current_size_label_2 + 1

            ind_list_files = ind_list_files + 1

            if current_size_label_0 + current_size_label_1 + current_size_label_2 == 3 * dataset_size:
                continue_cutting = False
        else:
            cuttung_list_files.append(list_files[ind_list_files])
            cutting_target_list.append(target_list[ind_list_files])

            ind_list_files = ind_list_files + 1

            if ind_list_files == dataset_size:
                continue_cutting = False

    return cuttung_list_files, cutting_target_list


# Extraction features for each file like a time-series:
def extractFeaturesTimeSeries(info_wav_file: list, info_target: list) -> np.ndarray:
    # Create massive for stacking features in first step:
    dataset_tmp = np.zeros((1, config.NFEATURES + 2))

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

        # Create array of targets:
        target = info_target[i]
        markers = np.zeros(features.shape[0])
        markers[:] = target

        # Merge label and frames and all frames in dataset:
        dataset_tmp = np.vstack((dataset_tmp, np.hstack((markers.reshape(markers.shape[0], 1), features))))

    # Delete row consist of zeros:
    dataset = dataset_tmp[1:]

    return dataset


# Extraction features for each file like a images:
def extractFeaturesImages(info_wav_file: list, info_target: list) -> np.ndarray:
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

        # Create array of targets:
        target = info_target[i]
        markers = np.zeros(features_logfbank.shape[0])
        markers[:] = target

        for j in range(int(np.floor(features_logfbank.shape[0] / config.NFRAMES))):
            spectrogram_image = features_logfbank[j * config.NFRAMES:(j + 1) * config.NFRAMES]
            spectrogram_image_in_line = spectrogram_image.reshape(config.NFRAMES * config.NFRAMES)
            label_spectrogram_image = Counter(markers[j * config.NFRAMES:(j + 1) * config.NFRAMES]).most_common()[0]
            dataset.append((label_spectrogram_image[0], spectrogram_image_in_line))

    dataset = np.array(dataset)

    return dataset
