function [Serv,ts,tll,n,t,NLL,LL] = llegada(tsuc,n,NLL,LL,tll,ts,lambda1,T,lambda2,Ns,Serv)
                                         
        t=tsuc;
        n=n+1;
        NLL=NLL+1;
        LL(NLL)=t;
        
        X=extraerExponencial(lambda1);
        
        if (t+X) < T 
            tll = t + X;
        end
        
        if n==1
            Y=extraerExponencial(lambda2);
            ts=t+Y;
            Serv(Ns+1)=Y;
        end
return;
end

