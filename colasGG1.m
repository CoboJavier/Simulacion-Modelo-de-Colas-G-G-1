function F = colasGG1(lambda1,lambda2,T)

t=0;
tsuc=0;
NLL=0;
Ns=0;
n=0;

tll=0;
ts=0;

LL=[];
S=[];
Serv=[];

X=extraerExponencial(lambda1);

if X>T
    
    Tp=0;
    tp_med_sistema=0;
    t_med_cola=0;
    
    F=[Tp; tp_med_sistema; t_med_cola];
    
    return;
else
    
    [Serv,ts,tll,n,t,NLL,LL] = llegada(X,n,NLL,LL,tll,ts,lambda1,T,lambda2,Ns,Serv);

    
    while tll ~= inf || ts ~= inf
        
        
        if tll < ts
            
            tsuc=tll;
            tll=inf;
            [Serv,ts,tll,n,t,NLL,LL] = llegada(tsuc,n,NLL,LL,tll,ts,lambda1,T,lambda2,Ns,Serv);
            
        end
        
        if ts < tll
           
            tsuc=ts;
            ts=inf;
            [n,Ns,S,ts,Serv,t] = Servidor(tsuc,n,Ns,S,ts,Serv,lambda2);
            
        end
        
    end
    
     Tp=max(0,(t-T));
     acumulo1=0;
     acumulo2=0;
     ind=1;
 
     while ind < NLL
         
         acumulo1=acumulo1+S(ind)-LL(ind);
         acumulo2=acumulo2+S(ind)-LL(ind)-Serv(ind);
         ind=ind+1;
     end
 
     tp_med_sistema=acumulo1/NLL;
     t_med_cola=acumulo2/NLL;
     
F=[Tp; tp_med_sistema; t_med_cola];
end %%FIN IF

