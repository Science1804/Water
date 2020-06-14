clear all
clc
R=8.314;
a=0.365

b=42.67/1000000;
T=290;
V=[0.00006:0.000001:0.001];
M = [] ; Tm = [] ; Done = [] ; Done2 = [] ; v1 = [] ; p1 = [] , v2 = [] ; p2 = [] ;
i = 1 ;
while(T<340)
P=(R*T./(V.-b))-(a./V.**2);
M(i,:) = P ;
Tm(i) = T ;
plot(V,P)
xlabel('Volume' );
ylabel('Pressure in Pa')
hold on;
T=T+1;
i = i + 1 ;
endwhile

dim = size(M) ;
rows = dim(1) ; columns = dim(2) ; # numbers of rows are our observations at each temperature.
j = 1 ;
 l = 1 ;
while (j <= rows) & (l < columns)
 
 
  k = M(j,l) - M(j,l+1) ;
 if (k > 0)
   l = l + 1 ;
   if (l > columns)
     l = 1 ;
     j = j + 1 ;
   endif
   
 elseif (k < 0)
   Done(j) = j ; v1 = l ;
   l =  1 ;
   j = j + 1 ; 
   
 endif
endwhile


printf('\n Minimum Exists for ');  
lMin = size(Done)(2) 

j = 1 ; l = columns ;

while (j<=rows) & (l >1)
k = M(j,l-1) - M (j,l);
if (k>0)
  
  l = l - 1 ;
  if (l <= 1)
    j = j + 1 ;
  endif
elseif (k<0)
  
  Done2(j) = j ; v2 = l ;
  j = j + 1 ;   
endif

endwhile

printf('\n Minimum Exists for ');
lMax = size(Done2)(2) 
printf('The Critical Temperature must be when there is no minima or maxima , the infltion point , the temperature is = ')
Tm(lMin)
