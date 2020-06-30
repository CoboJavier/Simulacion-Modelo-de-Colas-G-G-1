clear; close all; clc;

lambda1=1/2;
lambda2=1/3;
nele=10000;
X=zeros(nele,3);
T=180;

for i=1:nele
ne=colasGG1(lambda1,lambda2,T);
X(i,:)=ne;
end

figure;
hist(X(:,1), 100)
title('Histtograma Tp');

figure;
hist(X(:,2), 100)
title('Histtograma tp_med_sistema');

figure;
hist(X(:,3), 100)
title('Histtograma t_med_cola');

disp('Media Tp');
disp(mean(X(:,1)));

disp('Media tp_med_sistema');
disp(mean(X(:,2)));

disp('Media t_med_cola');
disp(mean(X(:,3)));



