function [n,Ns,S,ts,Serv,t] = Servidor(tsuc,n,Ns,S,ts,Serv,lambda2)
                                    
                   t=tsuc;
                   n=n-1;
                   Ns=Ns+1;
                   S(Ns)=t;
                   
                   if n>0
                      Y=extraerExponencial(lambda2);
                      ts=t+Y;
                      Serv(Ns+1)=Y;
                   end
                   
                
                
       return;        


end

