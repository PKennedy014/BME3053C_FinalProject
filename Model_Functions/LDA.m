%LDA

function model = LDA(Tbl)

A = Tbl{:,2}; %labels
B = Tbl{:,3}; %LungSize
C = Tbl{:,1}; %AveValues

model = fitcdiscr([A,B],C, 'DiscrimType','linear'); %Built-in to create LDA model

%Create scatter of predictioned labels and actual labels at all points
[a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
a=a(:); b=b(:);
prediction = model.predict([a b]);
gscatter(a,b,prediction,'rb','.',1,'on')
hold on
gscatter(A,B,C,'rb','v^',[],'off')
title('LDA Model Predictions vs. Training Labels')
xlabel('Lung size (# pixels)')
ylabel('Average Lung Pixel Intensity')
end