% KNN model

function model = KNN(Tbl)

A = Tbl{:,2};
B = Tbl{:,3};
C = Tbl{:,1};

model = fitcknn([Tbl.LungSize,Tbl.AveValues],Tbl.labels);

%Predict = resubPredict(model);
%ResubError = resubLoss(model);
%ConfusionMat = confusionmat(Tbl.labels,Predict);
%disp(ConfusionMat);
%figure(1);
%gscatter(Tbl.LungSize,Tbl.AveValues,Predict,'gr','osquare');
%xlabel('Lung Size');
%ylabel('Average Value');
%misclass = Predict ~= Tbl.labels;
%hold on
%plot(Tbl.LungSize(misclass == 1),Tbl.AveValues(misclass == 1),'kx','DisplayName','Misclassified');
%title('Pneumonia Detection Using KNN Model');
%legend('Positive','Negative','Misclassified');
%hold off
%figure(2);
%[x,y] = meshgrid(1:3*10^5,20:160); 
%x = x(:);
%y = y(:);
%p = predict(model,[x,y]);
%gscatter(x,y,p,'gr','osquare');
%title('KNN Decision Boundary');
%xlabel('Lung Size');
%ylabel('Average Value');
%legend('Positive','Negative');
%disp(figure(1));
%disp(figure(2));

[a,b] = meshgrid(linspace(min(A),max(A),500), linspace(min(B),max(B),100));
a=a(:); b=b(:);
prediction = model.predict([a b]);
gscatter(a,b,prediction,'rb','.',1,'off')
hold on
gscatter(A,B,C,'rb','v^',[],'off')
title('KNN Model Predictions vs. Training Labels')
xlabel('Lung size (# pixels)')
ylabel('Average Lung Pixel Intensity')
end