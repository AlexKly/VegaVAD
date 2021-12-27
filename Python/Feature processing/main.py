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
    test_info = config.pd.read_csv(config.HEAD_DIR + config.FILE_TEST_INFO)
    test_info_wav_path = test_info['wav_path']

    # Processing files:
    features_train_1 = preprocessing_data.extractFeaturesTimeSeries(info_wav_file=train_info_waw_path,
                                                                    info_target=train_info_target,
                                                                    train_cycle=True)
    features_train_2 = preprocessing_data.extractFeaturesImages(info_wav_file=train_info_waw_path,
                                                                info_target=train_info_target,
                                                                train_cycle=True)
    features_test_1 = preprocessing_data.extractFeaturesTimeSeries(info_wav_file=test_info_wav_path,
                                                                   info_target=[],
                                                                   train_cycle=False)
    features_test_2 = preprocessing_data.extractFeaturesImages(info_wav_file=test_info_wav_path,
                                                               info_target=[],
                                                               train_cycle=False)

    # Combine targets and features:
    features_train_2_tmp = np.zeros((features_train_2.shape[0], features_train_2[0, 1].shape[0] + 1))
    features_train_2_tmp[:, 0] = features_train_2[:, 0]
    for i in tqdm(range(features_train_2.shape[0])):
        features_train_2_tmp[i, 1:] = features_train_2[:, 1][i]

    # Write data in CSV:
    features_train_1 = config.pd.DataFrame(features_train_1)
    features_test_1 = config.pd.DataFrame(features_test_1)
    features_train_2 = config.pd.DataFrame(features_train_2_tmp)
    features_test_2 = config.pd.DataFrame(features_test_2)

    features_train_1.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TRAIN + str(1) + config.CSV_FORMAT, header=False, index=False)
    features_test_1.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TEST + str(1) + config.CSV_FORMAT, header=False, index=False)
    features_train_2.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TRAIN + str(2) + config.CSV_FORMAT, header=False, index=False)
    features_test_2.to_csv(config.HEAD_DIR + config.OUTPUT_NAME_TEST + str(2) + config.CSV_FORMAT, header=False, index=False)


if __name__ == '__main__':
    main()
