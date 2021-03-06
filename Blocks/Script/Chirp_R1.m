%% filepath
clc;
fprintf("load path:%s\n",pwd);
ScirptPath = 'D:\Codes\MatlabFiles\Blocks';
if ~isequal(pwd,ScirptPath)
    cd(ScirptPath);
end
%% 
%{
    1.适用Chirp函数和audio相关函数操作
    2.ex_chirp_ref3 获取数据
%}
%-----------chirp_-----------%
clc;
t = -2:1/1e3:2;
fo = 100;
f1 = 200;
y = chirp(t,fo,1,f1,'quadratic',[],'concave');
Fs = length(y);%hz'
y = dsp_examples_yout;
player = audioplayer(y,11400);
whileLoopCnt = 0;
while whileLoopCnt < 10
    playblocking(player)
    whileLoopCnt = whileLoopCnt + 1;    
end

%% 
% tan()函数看起来好像有点东西
x = -pi/4:0.01:pi/2-0.001;
figure(1)
plot(x,tan(x),'-*');
% axis([ -100 100 -pi/2 pi/2])
axis('auto')
grid minor