%Decision tree

function model = d_tree(Tbl) %Where A is table with first column as label

model = fitctree(Tbl,'label'); %Built-in to create decision tree model

%View decision tree
view(model,'mode','graph')

%Create scatter of prediction at all points w overlay of actuals 
% A = Tbl{:,2}; A=A';
% B = Tbl{:,3}; B=B';
% C = Tbl{:,1}; C=C';
% [a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
% a=a(:); b=b(:);
% prediction = model.predict([a b]);
% gscatter(a,b,prediction,'rb','.',1,'off')
% hold on
% gscatter(A,B,'rb','v^',[],'off')

end