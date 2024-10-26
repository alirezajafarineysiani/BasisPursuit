function s_estim = BP(Aeq,beq,method)
m=size(Aeq,2);
f=[repmat(1,1,m),repmat(1,1,m)];

Aeq = [Aeq,-Aeq];
A=[eye(m),-eye(m)];
lb=zeros(2*m,1);

options = optimoptions('linprog','Algorithm',method);
[x,fval,exitflag,output] = linprog(f,[],[],Aeq,beq,lb,[],options);
s_estim=A*x;
end

