part = cvpartition(height(NosDataset),'HoldOut',0.14)

idxtrain = training(part);
tbltrain = NosDataset(idxtrain,:)

idxtest = test(part);
tbltest = NosDataset(idxtest,:)
%%
%filename = 'finaldataset2.xlsx';
%writetable(finalDataset21,filename,'Sheet',1)