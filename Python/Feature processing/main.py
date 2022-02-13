import config
from config import os, np, pd, tqdm
from config import DATASET_TRAIN_SIZE, DATASET_VALID_SIZE, HEAD_DIR, FILE_TRAIN_INFO, FILE_TEST_INFO, OUTPUT_NAME_TRAIN, OUTPUT_NAME_TEST, CSV_FORMAT
from preprocessing_data import extractFeaturesTimeSeries, extractFeaturesImages

# Change main dir for finding path to data dir:
os.chdir('C:/Users/User/Desktop/VegaVAD project/')


def wrapperMain() -> None:
    num_train_cycles = int(len(pd.read_csv(HEAD_DIR + FILE_TRAIN_INFO)) / DATASET_TRAIN_SIZE)
    num_test_cycles = int(len(pd.read_csv(HEAD_DIR + FILE_TEST_INFO)) / DATASET_VALID_SIZE)

    for i_train in tqdm(range(num_train_cycles)):
        main(ind=i_train,
             num_files=DATASET_TRAIN_SIZE,
             filename_info=FILE_TRAIN_INFO,
             filename_output=OUTPUT_NAME_TRAIN,
             train_cycle=True)

    for i_test in tqdm(range(num_test_cycles)):
        main(ind=i_test,
             num_files=DATASET_VALID_SIZE,
             filename_info=FILE_TEST_INFO,
             filename_output=OUTPUT_NAME_TEST,
             train_cycle=False)


# Main cycle:
def main(ind: int, num_files: int, filename_info: str, filename_output: str, train_cycle: bool) -> None:
    # Load data:
    data_info = pd.read_csv(HEAD_DIR + filename_info)
    data_info_wav_path = data_info['wav_path'][0 + (ind * num_files):num_files + (ind * num_files)]
    if train_cycle:
        data_info_target = data_info['target'][0 + (ind * num_files):num_files + (ind * num_files)]
    else:
        data_info_target = list(np.arange(0, len(data_info_wav_path), 1))

    # Processing files:
    features_time_series = extractFeaturesTimeSeries(info_wav_file=data_info_wav_path,
                                                     info_target=data_info_target,
                                                     ind=ind,
                                                     num_files=num_files,
                                                     train_cycle=train_cycle)
    features_images = extractFeaturesImages(info_wav_file=data_info_wav_path,
                                            info_target=data_info_target,
                                            ind=ind,
                                            num_files=num_files,
                                            train_cycle=train_cycle)

    # Combine targets and features:
    features_images_tmp = np.zeros((features_images.shape[0], features_images[0, 1].shape[0] + 1))
    features_images_tmp[:, 0] = features_images[:, 0]
    for i in range(features_images.shape[0]):
        features_images_tmp[i, 1:] = features_images[:, 1][i]

    # Write data in CSV:
    features_time_series = pd.DataFrame(features_time_series)
    features_images = pd.DataFrame(features_images_tmp)

    if ind == 0:
        features_time_series.to_csv(HEAD_DIR + filename_output + str(1) + CSV_FORMAT,
                                    header=False,
                                    index=False)
        features_images.to_csv(HEAD_DIR + filename_output + str(2) + CSV_FORMAT,
                               header=False,
                               index=False)
    else:
        features_time_series.to_csv(HEAD_DIR + filename_output + str(1) + CSV_FORMAT,
                                    mode='a',
                                    header=False,
                                    index=False)
        features_images.to_csv(HEAD_DIR + filename_output + str(2) + CSV_FORMAT,
                               mode='a',
                               header=False,
                               index=False)


if __name__ == '__main__':
    wrapperMain()
