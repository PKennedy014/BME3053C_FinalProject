%Decision tree

function model = d_tree(Tbl) 

A = Tbl{:,2}; %LungSize
B = Tbl{:,3}; %AveValues
C = Tbl{:,1}; %labels

model = fitctree([A,B],C); %Built-in to create decision tree model

%View decision tree
view(model,'mode','graph')

%Create scatter of predictioned labels and actual labels at all points
[a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
a=a(:); b=b(:);
prediction = model.predict([a b]); 
gscatter(a,b,prediction,'rb','.',1,'on') 
hold on
gscatter(A,B,C,'rb','v^',[],'on') 
title('Decision Tree Model Predictions vs. Training Labels')
xlabel('Lung size (# pixels)')
ylabel('Average Lung Pixel Intensity')
end