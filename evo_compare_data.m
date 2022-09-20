clear all;close all;clc
% Load data
load simdata
simD = ans.logsout; clear ans;
time = 1:19600;
%%
sim.q1=simD{1}.Values.Data(2:end,1);
sim.q2=simD{2}.Values.Data(2:end,1);
sim.q3=simD{3}.Values.Data(2:end,1);
sim.q4=simD{4}.Values.Data(2:end,1);
sim.d1=simD{5}.Values.Data(2:end,1);
sim.d2=simD{6}.Values.Data(2:end,1);
sim.d3=simD{7}.Values.Data(2:end,1);
sim.d4=simD{8}.Values.Data(2:end,1);
sim.h1=simD{9}.Values.Data(2:end,1);
sim.h2=simD{10}.Values.Data(2:end,1);
sim.h3=simD{11}.Values.Data(2:end,1);
sim.h4=simD{12}.Values.Data(2:end,1);
clear simD

%% Plot Flows
figure 
subplot(4,1,1)
plot(time,sim.q1)
grid on
% axis([0 100 -0.2 1])
title('Flow of T_1')
ylabel('Flow (cm^3/sec)')

subplot(4,1,2)
plot(time,sim.q2)
grid on
ylabel('Flow (cm^3/sec)')
% axis([0 100 -0.2 1])
title('Flow of T_2')

subplot(4,1,3)
plot(time,sim.q3)
ylabel('Flow (cm^3/sec)')
grid on
% axis([0 100 -0.2 1])
title('Flow of T_3')

subplot(4,1,4)
plot(time,sim.q4)
grid on
ylabel('Flow (cm^3/sec)')
xlabel('Time (sec)')
% axis([0 100 -0.2 1])
title('Flow of T_4')

%% Plot Levels
figure 
subplot(4,1,1)
plot(time, sim.h1)
grid on
ylabel('Level (cm)')
% axis([0 100 10 35])
title('Level of T_1')
% xlim([0 3000])

subplot(4,1,2)
plot(time, sim.h2)
grid on
ylabel('Level (cm)')
% axis([0 100 10 35])
title('Level of T_2')
% xlim([0 3000])

subplot(4,1,3)
plot(time, sim.h3)
grid on
ylabel('Level (cm)')
% axis([0 100 10 25])
title('Level of T_3')
% xlim([0 3000])

subplot(4,1,4)
plot(time, sim.h4)
grid on
ylabel('Level (cm)')
xlabel('Time (sec)')
% axis([0 100 10 25])
title('Level of T_4')
% xlim([0 3000])

%% Plot Demands
figure 
subplot(4,1,1)
plot(time, sim.d1)
grid on
% axis([0 100 0.003 0.05])
ylabel('Flow (cm^3/sec)')
title('Demand T_1')
legend('Experiment','Simulation')

subplot(4,1,2)
plot(time, sim.d2)
grid on
ylabel('Flow (cm^3/sec)')
% axis([0 100 0.003 0.05])
title('Demand T_2')

subplot(4,1,3)
plot(time, sim.d3)
grid on
ylabel('Flow (cm^3/sec)')
% axis([0 100 0.003 0.05])
title('Demand T_3')

subplot(4,1,4)
plot(time, sim.d4)
grid on
ylabel('Flow (cm^3/sec)')
xlabel('Time (sec)')
% axis([0 100 0.003 0.05])
title('Demand T_4')