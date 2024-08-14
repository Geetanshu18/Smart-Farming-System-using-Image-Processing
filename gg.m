net=patternnet(10);
[net,tr]=train(net,inputs,targets);
outputs=net(inputs);
[values,pred_ind]=max(outputs,[],1);
[~,actual_ind]=max(targets,[],1);
accuracy=sum(pred_ind==actual_ind)/size(inputs,2)*100;