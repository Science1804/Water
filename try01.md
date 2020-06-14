Determine and Verify Critical Constants of
Different Gases by Plotting Isothermal of
Real Gas Equation in Octave

Anwar Khatib – 182403 ,Roll - 269
Vatsal Patel – 182548 , Roll – 278

Abstract :
It has been in notice that real gas behave way different from ideal consideration .
Specially for the Case liquivble gases they show a vivid behavior with increase in pressure at
different Temperature . In This Project we have plotted the Isothermal that is the Graph P vs
V of real gas equation using the vander walls constants of the actual gas . Thus furtherly cross
verifying that the critical constants of the gas found experimentally are correct .
KeyWords:
Real Gas Equation , Vander Walls Constants , Isothermal
Introduction :
We started by Considering the most common experiment done for liqiification of Carbon
Dioxide , taking the values of a and b and plotting the graph using the real gas equation . the
meaning of few terms is mentioned below ,
Critical Temperature –
It is defined as the maximum temperature at which gas can be liquified by the increase
of pressure alone. Above this temperature , the gas cannot be liquified how so ever large the
applied pressure may be.
Critical Pressure –
The pressure required toliquify the gas at critical temperature is called the critical
pressure.
Critical Volume –
Volume which unit mass of gas occupies at the critical temperature and critical pressure .
Critical point –
Point on the isothermal for the critical temperature at which the change of state from
gaseous state to the liquid state takes place under constant values of P c and V c .

Behaviour of gases at high pressure –
1. At high temperature, the value of the PV increases with increase in p.
2. At lower temperatures, the value of PV decreases initially with increase in P. It
becomes minimum at a particular pressure and then increases with increase in
pressure.
3. At temperature below critical temperature, there is a sudden decrease in the value of
PV with increase in pressure. this corresponds to change of state from gas to liquid.
When liquification completes, PV gradually Increases with increase in P.

Comparisons with Experimental Curves –
The Validity of van der waals equation of state for gas is tested by comparing its PV
curve with the experimental results.
The Vanderwaal equation of state is given by
P=RT/(V-b) – a/V 2

A family of curves between pressure and volume at various temperatures are drawn
using above equation. At higher temperatures both practical and theoretical curves are
similar.

Determination of Critical Constants –
The critical constants can be determined by plotting the isothermals between P and Vat
different temperatures of the gas. The Critical point is found on the Graph where the
Horizontal portion of the curve Just vanishes i.e. change from gaseous to liquid state. The
pressure, volume and temperature corresponding to the critical point give the critical points of
the gas.

Discussion :

We made an algorithm to find the critical constants from graph that includes finding Maxima
and Minima of each curve
The Following Code for CO2 (gas)
Octave code –
clear all
clc
R=8.314; \n
a=0.396
#b = 0.04286

b=42.67/1000000;
T=290;
V=[0.00006:0.000001:0.001];
M = [] ; Tm = [] ; Done = [] ; Done2 = [] ;
i = 1 ;
while(T&lt;340)
P=(R*T./(V.-b))-(a./V.**2);
M(i,:) = P ;
Tm(i) = T ;
plot(V,P)
xlabel(&#39;Volume&#39; );
ylabel(&#39;Pressure in Pa&#39;)
hold on;
T=T+1;
i = i + 1 ;
endwhile
dim = size(M) ;
rows = dim(1) ; columns = dim(2) ; # numbers of rows are our observations at each
temperature.
j = 1 ;
l = 1 ;
while (j &lt;= rows) &amp; (l &lt; columns)

k = M(j,l) - M(j,l+1) ;
if (k &gt; 0)
l = l + 1 ;
if (l &gt; columns)
l = 1 ;
j = j + 1 ;
endif
elseif (k &lt; 0)
Done(j) = j ;
l = 1 ;
j = j + 1 ; jl = j ;
endif
endwhile
printf(&#39;\n Minimum Exists for &#39;);
Done
l = columns; p = 1;

printf(&#39;\n Maxima Exists for &#39;) ;
Done2

Output –

The Following code for Neon
b=17.10/1000000;
T=41;
V=[0.00006:0.000001:0.001];
M = [] ; Tm = [] ; Done = [] ; Done2 = [] ;
i = 1 ;
while(T&lt;45)
P=(R*T./(V.-b))-(a./V.**2);
M(i,:) = P ;

Tm(i) = T ;
plot(V,P)
xlabel(&#39;Volume&#39; );
ylabel(&#39;Pressure in Pa&#39;)
hold on;
T=T+0.1;
i = i + 1 ;
endwhile

Conclusion :
On Cross verification with the formula of critical Constants using a and b , we have
found that the values are almost approximate to it , Depending on the range of
Temperature used the Value may have an error of 7-8 % deviation from the actual
value . The Value of Tc for CO2 was very much accurate , but it showed a difference
in Tc values of N2
