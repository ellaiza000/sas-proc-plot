**********************************************
* Ellaiza Antonio
* V00877988
* 2/2/22
* Project 2
**********************************************;

PROC PLOT data = Flu;
	PLOT Incidence*Temp;
RUN;
QUIT;
* Direction: Positive
* Strength:  Strong
* Form:      linear;

PROC GPLOT data = Flu;
	PLOT Incidence*Temp;
RUN;
* Direction: Positive
* Strength:  Strong
* Form:      linear;

PROC SGPLOT data = Flu;
	SCATTER y=Incidence x=Temp;
RUN;
* Direction: Positive
* Strength:  Strong
* Form:      linear;


**********************
* Grouped scatter plot
**********************;

proc sgplot data=Flu;
  scatter x=Temp y=Incidence / group=Region;
run;
* LowerMidWest and SouthWest have reports of higher Temps and Incidences than others;

************
* PROC REG
************;

PROC REG data = Flu;
	MODEL Incidence = Temp;
RUN;
QUIT;
* Data is skewed to the right, but approximately normal distribution and shape;
* Coeff Var 44.17603 .. the estimate is moderately precise;
* Parameter Estimate for Intercept: -0.71212; 
* Parameter Estimate for Temp: 0.06239;
* Parameters say that In temp 0, this is how many incidences would occur;
* P-Value: <.0001 statistically significant... as temp gets higher more incidences will occur;
* 

;

PROC REG data = Flu;
	MODEL Incidence = Temp;
RUN;
QUIT;
* R Square: 0.7944;
* Since the R Square is pretty high, it tells us that most of the variation in Y is explained by using Temp as predicted;
* "R^2 measures how much variation in Y is explained by using X as a predicted";
