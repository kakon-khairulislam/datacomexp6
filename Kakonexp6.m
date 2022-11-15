close all;
clc;
f=1;
f2=8;
x=[0 0 1 1 0 1 0 0 0 0 1 1 0 0 1 1 0 0 1 1 1 0 0 0]; % input signal ;
nx=size(x,2);
i=1;
while i<nx+1
 t = i:0.001:i+1;
 if x(i)==1
 %Formula = Amplitude*sin(frequency)+ ()%
 ask=7*sin(2*pi*f*t);
 fsk=sin(2*pi*f*t);
 psk=sin(2*pi*f*t);
 else
 ask=0;
 fsk=sin(2*pi*f2*t);
 psk=sin(2*pi*f*t+(-3*pi/4));
 end
 subplot(3,1,1);
 plot(t,ask);
 hold on;
 grid on;
 axis([0 10 -1 1]);
 %xlabel('Voltage(V)');%
 %ylabel('Amplitude');%
 title('Kakon, Khairul Islam, 20-42438-1')
 subtitle('Amplitude Shift Key')
 subplot(3,1,2);
 plot(t,fsk);
 hold on;
 grid on;
 axis([0 10 -1 1]);
 %xlabel('Frequency(F)');%
 %ylabel('Amplitude');%
 subtitle('Frequency Shift Key')
 subplot(3,1,3);
 plot(t,psk);
 hold on;
 grid on;
 axis([0 10 -1 1]);
 %xlabel('Phase');%
 %ylabel('Amplitude');%
 subtitle('Phase Shift Key')
 i=i+1;
end
