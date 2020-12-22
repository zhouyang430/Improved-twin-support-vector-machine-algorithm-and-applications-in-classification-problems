rng default % For reproducibility
grnpop = mvnrnd([1,0],eye(2),10);
redpop = mvnrnd([0,1],eye(2),10);
figure
plot(grnpop(:,1),grnpop(:,2),'go');
hold on
plot(redpop(:,1),redpop(:,2),'ro');