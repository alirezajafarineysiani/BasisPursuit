clear all
close all
clc
n=50;
m = 100;

bound = floor((1+sqrt(n))/2);
noise = randn(m,1);
noise2 = randn(n,1);
amp =100;
s = sign(rand(m,1)).*sprand(m,1,bound/m);
Aeq = randn(n,m);
beq = Aeq*(s+0*noise)+0.0*noise2;




s_estim = BP(Aeq,beq,'dual-simplex');


SNR = 10*log(sum(s.^2)/sum((s-s_estim).^2));
