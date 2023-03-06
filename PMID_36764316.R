#sample size for survival analysis
a=0.025 #one-sided alpha
b=0.1 #1-b power
delta=0.65 #estimated HR
nevent=((qnorm(1-a)+qnorm(1-b))*(delta+1)/(delta-1))^2
nevent #233.5221

#Approximately 330 patients were planned for enrolment. 
#At least 230 progression-free survival events would be required to have 90% power to show a 
#statistically significant difference in progression-free survival between treatment groups 
#at a one-sided α level of 2·5% assuming a hazard ratio (HR) of 0·65 for the sotorasib versus docetaxel group. 
