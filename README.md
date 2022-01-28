# Vega VAD project
Vega is a voice control system for home functions. Vega is the one of the main part of complex home control system called Lyra. In this repository is located project for realization that system on hardware device and bulding ML alghoritm for recognition a human voice.

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
![](https://github.com/AlexKly/VegaVAD/blob/master/Docs/Dataset_folder_structure.jpg)



GL HF!
