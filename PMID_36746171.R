library(pwr)
# alpha was split to 4% and 1% two-sided
# 471 pts were randomly allocated into 3 arms (157 per arm)

# primary endpoint for q2w comparison
p1=0.5
p2=0.3
alpha=0.04
pwr.2p.test(
  h=ES.h(p1,p2),
  n=157,
  sig.level = alpha
)#power = 0.9443413 vs. 93% in SAP

#secondary endpoint for q2w
delta=0.18
pool_sd=0.46
pwr.t.test(
  n=157,
  d=delta/pool_sd,
  sig.level = alpha,
  type = 'two.sample'
)#power = 0.9194645 vs. 92% in SAP

# primary endpoint for q4w comparison
alpha=0.01
pwr.2p.test(
  h=ES.h(p1,p2),
  n=157,
  sig.level = alpha
)#power = 0.8577397 vs. 83% in SAP

#secondary endpoint for q4w
delta=0.18
pool_sd=0.46
pwr.t.test(
  n=157,
  d=delta/pool_sd,
  sig.level = alpha,
  type = 'two.sample'
)#power = 0.8085823 vs. 81% in SAP
