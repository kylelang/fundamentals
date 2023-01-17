### Title:    Crowdsourced CI Interpretation Demo
### Author:   Kyle M. Lang
### Created:  2021-11-16
### Modified: 2021-11-16

## Define model parameters:
n  <- 100  # Sample size
b0 <- 0.5  # Intercept
b1 <- 0.25 # Slope
r2 <- 0.5  # R-Squared

## Generate data:
x   <- rnorm(n)
eta <- b0 + b1 * x
y   <- eta + rnorm(n, 0, sqrt((var(eta) / r2) - var(eta)))

## Fit model:
fit <- lm(y ~ x)

## Compute CI for the slope:
confint(fit)[2, ]

### The true value of the slope is 0.25.
### Does your CI surround this value?
