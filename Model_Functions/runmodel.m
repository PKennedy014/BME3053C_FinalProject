%run_model
function pred = runmodel(A,B) %Where A is lung size in pixels and B is Ave intensity
addpath('Trained_Models\');
load('LDA.mat');
pred = LDA.predict([A, B]);
end

