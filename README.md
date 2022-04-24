# BME3053C_FinalProject
Pneumonia Detection using image analysis and machine learning

Team: Anastasia Izraztsov, Patrick Kennedy, Annie Nguyen, Emma Ziegenbein

This project's aim is to assist with and partially automate chest X-ray analysis for pneumonia detection in patients. All image and labeling data were aquired through the Kaggle RSNA Pneumonia Detection Challeneg. Using image analysis and machine learning techniques in MATLAB, the team trained several classification models including LDA, decision tree, and kNN models and tested them in order to select the best fit model. This model was then integrated into a simple app that can be used to classify input chest X-ray images as 'positive' or 'negative' for pneumonia. All source code as well as training images, testing images, model confusion matrices and the MATLAB app are available as repository files.

Pneumonia Detection Model:
  1. Two variables are used as input into the classification models, lung size (in pixels) and lung opacity (quantified as average lung pixel intensity).
  2. After testing the several different classification models as seen with the confusion matrices made withing the testing.mlx file, the LDA model was chosen.
  3. The Pneumonia Detection Model is also integrated into a simple to use MATLAB GUI App called PneumoniaApp.

Opening the Pneumonia App:
  1. First, download the zip folder containing all files within the repository and extract the zip to your working folder.
  2. Open MATLAB and select the working folder.
  3. To run the app, type "PneumoniaApp" into the MATLAB command window and the app should automatically open.

Using the Pneumonia App:
  1. With the app open, click on the "Upload Image Folder" button and select a folder containing the images you would like to run through the Pneumonia Detection Model.
  2. Next, click the "Run Image Analysis" button to run the selected folder's images through the classification model.
  3. When complete, the app will auto-fill the in-app table displaying image name, lung size (pixels), average pixel value, and the model prediction.
