library("statnet")
Loading required package: latentnet

latentnet: version 2.4.6, created on 2013-11-28
Copyright (c) 2013, Pavel N. Krivitsky, University of Wollongong
Mark S. Handcock, University of California -- Los Angeles
with contributions from
Susan M. Shortreed
Jeremy Tantrum
Peter D. Hoff
Based on "statnet" project software (statnet.org).
For license and citation information see statnet.org/attribution
or type citation("latentnet").


Attaching package: ‘latentnet’

The following object is masked from ‘package:coda’:
  
  as.mcmc

The following object is masked from ‘package:base’:
  
  scale


statnet: version 2013.11.0, created on 2013-10-19
Copyright (c) 2013, Mark S. Handcock, University of California -- Los Angeles
David R. Hunter, Penn State University
Carter T. Butts, University of California -- Irvine
Steven M. Goodreau, University of Washington
Pavel N. Krivitsky, University of Wollongong
Skye Bender-deMoll
Martina Morris, University of Washington
Based on "statnet" project software (statnet.org).
For license and citation information see statnet.org/attribution
or type citation("statnet").

> data('florentine.dat')
Warning message:
  In data("florentine.dat") : data set ‘florentine.dat’ not found
> data('florentine')
> summary(omarriage)
Error in summary(omarriage) : object 'omarriage' not found
> summary(fomarriage)
Error in summary(fomarriage) : object 'fomarriage' not found
> summary(flomarriage)
Network attributes:
  vertices = 16
directed = FALSE
hyper = FALSE
loops = FALSE
multiple = FALSE
bipartite = FALSE
total edges = 20 
missing edges = 0 
non-missing edges = 20 
density = 0.1666667 

Vertex attributes:
  
  priorates:
  numeric valued attribute
attribute summary:
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00   21.50   25.94   44.75   74.00 

totalties:
  numeric valued attribute
attribute summary:
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1.00    4.75    9.00   13.88   15.00   54.00 
vertex.names:
  character valued attribute
16 valid vertex names

wealth:
  numeric valued attribute
attribute summary:
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
3.00   17.50   39.00   42.56   48.25  146.00 

No edge attributes

Network edgelist matrix:
  [,1] [,2]
[1,]    1    9
[2,]    2    6
[3,]    2    7
[4,]    2    9
[5,]    3    5
[6,]    3    9
[7,]    4    7
[8,]    4   11
[9,]    4   15
[10,]    5   11
[11,]    5   15
[12,]    7    8
[13,]    7   16
[14,]    9   13
[15,]    9   14
[16,]    9   16
[17,]   10   14
[18,]   11   15
[19,]   13   15
[20,]   13   16
> model1
Error: object 'model1' not found
> model1 <- ergm(flomarriage ~ edges)
> model1

MLE Coefficients:
  edges  
-1.609  
> model2 <- ergm(flomarriage ~ edges + triangles)
Iteration 1 of at most 20: 
  Convergence test P-value: 9.5e-19 
The log-likelihood improved by 0.001321 
Iteration 2 of at most 20: 
  Convergence test P-value: 1.5e-09 
The log-likelihood improved by 0.0006397 
Iteration 3 of at most 20: 
  Convergence test P-value: 7.2e-02 
The log-likelihood improved by < 0.0001 
Iteration 4 of at most 20: 
  Convergence test P-value: 3.2e-01 
The log-likelihood improved by < 0.0001 
Iteration 5 of at most 20: 
  Convergence test P-value: 2.4e-01 
The log-likelihood improved by < 0.0001 
Iteration 6 of at most 20: 
  Convergence test P-value: 1.5e-01 
The log-likelihood improved by < 0.0001 
Iteration 7 of at most 20: 
  Convergence test P-value: 7e-01 
Convergence detected. Stopping.
The log-likelihood improved by < 0.0001 

This model was fit using MCMC.  To examine model diagnostics and check for degeneracy, use the mcmc.diagnostics() function.
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6743    0.1619  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.6737    0.1595  
> summary(model1)

==========================
  Summary of model fit
==========================
  
  Formula:   flomarriage ~ edges

Iterations:  20 

Monte Carlo MLE Results:
  Estimate Std. Error MCMC % p-value    
edges  -1.6094     0.2449     NA  <1e-04 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Null Deviance: 166.4  on 120  degrees of freedom
Residual Deviance: 108.1  on 119  degrees of freedom

AIC: 110.1    BIC: 112.9    (Smaller is better.) 
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6743    0.1619  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.6737    0.1595  
> model2 <- ergm(flomarriage ~ edges + triangles)
Iteration 1 of at most 20: 
  Convergence test P-value: 7.7e-23 
The log-likelihood improved by 0.001513 
Iteration 2 of at most 20: 
  Convergence test P-value: 5.3e-08 
The log-likelihood improved by 0.0004641 
Iteration 3 of at most 20: 
  Convergence test P-value: 5.4e-04 
The log-likelihood improved by 0.0002363 
Iteration 4 of at most 20: 
  Convergence test P-value: 3.7e-03 
The log-likelihood improved by 0.0001778 
Iteration 5 of at most 20: 
  Convergence test P-value: 4.9e-01 
The log-likelihood improved by < 0.0001 
Iteration 6 of at most 20: 
  Convergence test P-value: 5e-01 
Convergence detected. Stopping.
The log-likelihood improved by < 0.0001 

This model was fit using MCMC.  To examine model diagnostics and check for degeneracy, use the mcmc.diagnostics() function.
> summary(model2)

==========================
  Summary of model fit
==========================
  
  Formula:   flomarriage ~ edges + triangles

Iterations:  20 

Monte Carlo MLE Results:
  Estimate Std. Error MCMC % p-value    
edges     -1.6757     0.3516      0  <1e-04 ***
  triangle   0.1546     0.5906      0   0.794    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Null Deviance: 166.4  on 120  degrees of freedom
Residual Deviance: 108.1  on 118  degrees of freedom

AIC: 112.1    BIC: 117.6    (Smaller is better.) 
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6778    0.1582  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.6757    0.1546  
> summary(model2)

==========================
  Summary of model fit
==========================
  
  Formula:   flomarriage ~ edges + triangles

Iterations:  20 

Monte Carlo MLE Results:
  Estimate Std. Error MCMC % p-value    
edges     -1.6757     0.3516      0  <1e-04 ***
  triangle   0.1546     0.5906      0   0.794    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Null Deviance: 166.4  on 120  degrees of freedom
Residual Deviance: 108.1  on 118  degrees of freedom

AIC: 112.1    BIC: 117.6    (Smaller is better.) 
> model2 <- ergm(flomarriage ~ edges + triangles)
Iteration 1 of at most 20: 
  Convergence test P-value: 1e-19 
The log-likelihood improved by 0.001253 
Iteration 2 of at most 20: 
  Convergence test P-value: 3.4e-08 
The log-likelihood improved by 0.0005161 
Iteration 3 of at most 20: 
  Convergence test P-value: 2.7e-04 
The log-likelihood improved by 0.0002601 
Iteration 4 of at most 20: 
  Convergence test P-value: 4.8e-01 
The log-likelihood improved by < 0.0001 
Iteration 5 of at most 20: 
  Convergence test P-value: 1.5e-03 
The log-likelihood improved by 0.0001947 
Iteration 6 of at most 20: 
  Convergence test P-value: 1.6e-01 
The log-likelihood improved by < 0.0001 
Iteration 7 of at most 20: 
  Convergence test P-value: 1.7e-01 
The log-likelihood improved by < 0.0001 
Iteration 8 of at most 20: 
  Convergence test P-value: 8.1e-01 
Convergence detected. Stopping.
The log-likelihood improved by < 0.0001 

This model was fit using MCMC.  To examine model diagnostics and check for degeneracy, use the mcmc.diagnostics() function.
> summary(model2)

==========================
  Summary of model fit
==========================
  
  Formula:   flomarriage ~ edges + triangles

Iterations:  20 

Monte Carlo MLE Results:
  Estimate Std. Error MCMC % p-value    
edges     -1.6767     0.3508      0  <1e-04 ***
  triangle   0.1590     0.5898      0   0.788    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Null Deviance: 166.4  on 120  degrees of freedom
Residual Deviance: 108.1  on 118  degrees of freedom

AIC: 112.1    BIC: 117.6    (Smaller is better.) 
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6755    0.1573  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.677     0.159  
> model2 <- ergm(flomarriage ~ edges + triangles)
Iteration 1 of at most 20: 
  Convergence test P-value: 6.6e-20 
The log-likelihood improved by 0.00131 
Iteration 2 of at most 20: 
  Convergence test P-value: 1.7e-05 
The log-likelihood improved by 0.0003365 
Iteration 3 of at most 20: 
  Convergence test P-value: 2.3e-02 
The log-likelihood improved by 0.0001111 
Iteration 4 of at most 20: 
  Convergence test P-value: 1.2e-01 
The log-likelihood improved by < 0.0001 
Iteration 5 of at most 20: 
  Convergence test P-value: 8.1e-01 
Convergence detected. Stopping.
The log-likelihood improved by < 0.0001 

This model was fit using MCMC.  To examine model diagnostics and check for degeneracy, use the mcmc.diagnostics() function.
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6799    0.1656  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.6792    0.1636  
> model2 <- ergm(flomarriage ~ edges + triangles)
Iteration 1 of at most 20: 
  Convergence test P-value: 1.4e-25 
The log-likelihood improved by 0.001788 
Iteration 2 of at most 20: 
  Convergence test P-value: 1.5e-06 
The log-likelihood improved by 0.0004031 
Iteration 3 of at most 20: 
  Convergence test P-value: 2.9e-03 
The log-likelihood improved by 0.0001763 
Iteration 4 of at most 20: 
  Convergence test P-value: 2.5e-01 
The log-likelihood improved by < 0.0001 
Iteration 5 of at most 20: 
  Convergence test P-value: 2.2e-02 
The log-likelihood improved by 0.0001302 
Iteration 6 of at most 20: 
  Convergence test P-value: 7.3e-01 
Convergence detected. Stopping.
The log-likelihood improved by < 0.0001 

This model was fit using MCMC.  To examine model diagnostics and check for degeneracy, use the mcmc.diagnostics() function.
> model2
MCMC sample of size based on: 
  edges  triangle  
-1.6719    0.1529  

Monte Carlo MLE Coefficients:
  edges  triangle  
-1.6728    0.1554  