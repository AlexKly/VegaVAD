import os
import pandas as pd
import numpy as np
from collections import Counter
from tqdm import tqdm
import scipy.io.wavfile as wav
import resampy
import python_speech_features


# Paths and names:
HEAD_DIR = 'data/'
FILE_TRAIN_INFO = 'train.csv'
FILE_TEST_INFO = 'sample_submission.csv'
OUTPUT_NAME_TRAIN = 'train_features'
OUTPUT_NAME_TEST = 'test_features'
CSV_FORMAT = '.csv'


# Set dataset params:
DATASET_TRAIN_SIZE = 10  # Number of WAVs single class (Total number of files: 3 * DATASET_SIZE) (For train)
DATASET_VALID_SIZE = 10  # Number of WAVs single class (Total number of files: 3 * DATASET_SIZE) (For validation)


# Set features params:
SAMPLE_RATE = 16000
PREEMPHASIS_COEF = 0.97  # Coefficient for pre-processing filter
FRAME_LENGTH = 0.025  # Window length in sec
FRAME_STEP = 0.01  # Length of step in sec
WINDOW_FUNCTION = np.hamming  # Type of window function
NFFT = 512  # Points of FFT
NFEATURES = 32  # Number of Mel filters
NFRAMES = 32  # Number of frames for uniting in image
