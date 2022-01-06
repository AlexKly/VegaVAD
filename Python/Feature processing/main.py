import config
from config import os, np, pd, tqdm
import preprocessing_data


# Main cycle:
def main():
    # Change working directory:
    os.chdir('C:/Users/User/Desktop/')

    # Load data:
    train_info = pd.read_csv(config.HEAD_DIR + config.FILE_TRAIN_INFO)
    train_info_waw_path = train_info['wav_path']
    train_info_target = train_info['target']
    train_info_waw_path, train_info_target = preprocessing_data.cuttingDataset(list_files=train_info_waw_path,
                                                                               target_list=train_info_target,
                                                                               dataset_size=config.DATASET_TRAIN_SIZE,
                                                                               is_train=True)

    test_info = config.pd.read_csv(config.HEAD_DIR + config.FILE_TEST_INFO)
    test_info_wav_path = test_info['wav_path']
    test_info_target = list(np.arange(0, len(test_info_wav_path), 1))
    test_info_wav_path, test_info_target = preprocessing_data.cuttingDataset(list_files=test_info_wav_path,
                                                                             target_list=test_info_target,
                                                                             dataset_size=config.DATASET_VALID_SIZE,
                                                                             is_train=False)

    # Processing files:
    features_train_1 = preprocessing_data.extractFeaturesTimeSeries(info_wav_file=train_info_waw_path,
                                                                    info_target=train_info_target)
    features_train_2 = preprocessing_data.extractFeaturesImages(info_wav_file=train_info_waw_path,
                                                                info_target=train_info_target)
    features_test_1 = preprocessing_data.extractFeaturesTimeSeries(info_wav_file=test_info_wav_path,
                                                                   info_target=test_info_target)
    features_test_2 = preprocessing_data.extractFeaturesImages(info_wav_file=test_info_wav_path,
                                                               info_target=test_info_target)

    # Combine targets and features:
    features_train_2_tmp = np.zeros((features_train_2.shape[0], features_train_2[0, 1].shape[0] + 1))
    features_test_2_tmp = np.zeros((features_test_2.shape[0], features_test_2[0, 1].shape[0] + 1))
    features_train_2_tmp[:, 0] = features_train_2[:, 0]
    features_test_2_tmp[:, 0] = features_test_2[:, 0]
    for i in tqdm(range(features_train_2.shape[0])):
        features_train_2_tmp[i, 1:] = features_train_2[:, 1][i]
    for i in tqdm(range(features_test_2.shape[0])):
        features_test_2_tmp[i, 1:] = features_test_2[:, 1][i]

    # Write data in CSV:
    features_train_1 = config.pd.DataFrame(features_train_1)
    features_test_1 = config.pd.DataFrame(features_test_1)
    features_train_2 = config.pd.DataFrame(features_train_2_tmp)
    features_test_2 = config.pd.DataFrame(features_test_2_tmp)

    features_train_1.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TRAIN + str(1) + config.CSV_FORMAT, header=False, index=False)
    features_test_1.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TEST + str(1) + config.CSV_FORMAT, header=False, index=False)
    features_train_2.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TRAIN + str(2) + config.CSV_FORMAT, header=False, index=False)
    features_test_2.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TEST + str(2) + config.CSV_FORMAT, header=False, index=False)

    print('Done!')


if __name__ == '__main__':
    main()
