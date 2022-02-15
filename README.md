# Vega VAD project
Vega is a voice control system for home functions. Vega is the one of the main part of complex home control system called Lyra. In this repository is located project for realization that system on hardware device and bulding ML alghoritm for recognition a human voice.

## Road map:
- Preparation data for learning the ML model
- Build ML system for voice detection
- Realization on the FPGA audio capturing
- Realization ML model on the FPGA

## Details about project:
<input here details>

## TO DO list:
- [x]  Start preparation:
  - [x] Collection the wav files for a dataset.
- [ ] ML part:
  - [x] Getting CSV files for further work with the model.
  - [ ] Choosing the ML model.
  - [ ] Chossing pararms of the model.
  - [ ] Testing the model on real signals.
  - [ ] Choosing a filter to smooth out model answers.
- [ ] Hardware part:
  - [ ] Developing a module for capturing audio data. Check it for correct data reception and legibility.
  - [ ] Developing a module for preprocessing data and getting the vector of features.
  - [ ] Developing a module for preprocessing features.
  - [ ] Developing a module of the ML model.
  - [ ] Developing a module for filtering to smooth out model answers.
  - [ ] Developing a module for indication the answers of model.
- [ ] Test part:
  - [ ] Build and configure the kit.
  - [ ] Testing the work of the algorithm on real signals based on the kit.
- [ ] Final part:
  - [ ] Summarize the results on the Habr, the GitHub and the Kaggle.

## Data for train the model:
The data for train the model I took from this competition on the Kaggle: [Data](https://www.kaggle.com/c/silero-audio-classifier/overview "Kaggle competition").
In dataset you can find audio data divided into 3 classes: Voice, Noise and Music. You can union Noise and Music into signle class or build the model for recongition 3 classes.
### Info about data:
* 3 classes - voice, music, noise;
* 30 GB of data in 3 classes, about 328k audio files;
* All files are in .wav format, sampling rate is 16 kHz;
* Approximately 30 GB of data is proposed, 10 GB per class;
* All files have the same length - 3 seconds or 3 * 16 samples;
* A very diverse selection of data sources and domains;
* All samples are anonymized and stored in the on-disk DB with their hashes as paths;

### Folder structure:
![dataset struct](https://github.com/AlexKly/VegaVAD/blob/master/Docs/Dataset_folder_structure.jpg)

## The processing wav files in to features:
Pay attention to that final files size will be too big after processing. **So you need to remember it because the size will be too big. And it will take a lot time for processing all audio data (Totally, it got 110 Gb space on the disk for me and about 24 hours for processing all wav files).**

In main.py you can define path for your dataset.

You can change parameters in config.py for feature processing.

In preprocessing_data you can find function for extraction features for two approaches: ***BiLSTM*** and ***CNN-BiLSTM***

Params for setting data processing:
- **Sample rate** - the sampling rate refers to the number of samples of audio recorded every second. I always convert it to 16 kHz in the project.
- **Preemhasis coefficient** - apply preemphasis filter with preemph as coefficient. 0 is no filter. I use 0.97.
- **Frame length** - the length of the analysis window in seconds. I use 0.025s.
- **Frame step** - the step between successive windows in seconds. I use 0.01s.
- **Window function** - the analysis window to apply to each frame. I use the [Hamming window](https://docs.scipy.org/doc/scipy-0.19.1/reference/generated/scipy.signal.hamming.html#:~:text=The%20Hamming%20window%20is%20a,an%20empty%20array%20is%20returned.).
- **Points for FFT size** - the FFT size. I use 512 points.
- **Mel filters size** - the number of filters in the filterbank. It's features number for the ML model. I use 32 mel filters.
- **Image size** - number of the stacked layers of the features after Mel filter processing. I use 32 stacked layers for getting image 32x32 for the ***CNN-BiLSTM*** model.


GL HF!
