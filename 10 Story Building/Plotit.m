subplot(3,3,1)
plot(GdefIO+1)
subplot(3,3,2)
plot(GdefLS+1)
subplot(3,3,3)
plot(GdefCP+1)

subplot(3,3,4)
plot(GRIO+1)
subplot(3,3,5)
plot(GRLS+1)
subplot(3,3,6)
plot(GRCP+1)

subplot(3,3,7)
plot(drift(indIO , :)*100,[1:5]);xlim([0 0.5])
subplot(3,3,8)
plot(drift(indLS , :)*100,[1:5]);xlim([0 1.5])
subplot(3,3,9)
plot(drift(indCP , :)*100,[1:5]);xlim([0 2])