%run_model
function pred = runmodel(A,B) %Where A is lung size in pixels and B is Ave intensity
load('LDA.mat');
pred = LDA.predict([A, B]);
end

