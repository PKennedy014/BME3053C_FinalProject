%run_model
function pred = runmodel(A,B) %Where A is lung size in pixels and B is Ave intensity
load('KNN.mat');
pred = KNN.predict([A, B]);
end

