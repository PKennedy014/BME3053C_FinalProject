%LDA

function model = LDA(Tbl) %Where Tbl is table with first column as label
 
model = fitcdiscr(Tbl,'labels'); %Built-in to create LDA model

% %Create scatter of prediction at all points w overlay of actual 
% [a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
% a=a(:); b=b(:);
% prediction = model.predict([a b]);
% gscatter(a,b,prediction,'rb','.',1,'off')
% hold on
% gscatter(A,B,C,'rb','v^',[],'off')

end