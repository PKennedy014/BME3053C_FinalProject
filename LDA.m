%LDA

function model = LDA(A,B,C) %Where A and B are data arrays and C is label array

model = fitcdiscr([A B],C,'discrimtype','linear'); %Built-in to create LDA model

%Create scatter of prediction at all points w overlay of actual 
[a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
a=a(:); b=b(:);
prediction = model.predict([a b]);
gscatter(a,b,prediction,'rb','.',1,'off')
hold on
gscatter(A,B,C,'rb','v^',[],'off')

end