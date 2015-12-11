# ------------------------------------------------------------------------------
# Example 3.7
# Mitsos, A., & Barton, P. I. (2006). A test set for bilevel programs.
#
# Optimal solution:
#   Infeasible problem
# ------------------------------------------------------------------------------
# INNER VARIABLES
var y >= -1, <= 1,
  suffix cat 2;

# KKT MULTIPLIERS
var mu1 >= 0, <= 2,
  suffix cat 3;

var mu2 >= 0, <= 2,
  suffix cat 3;

# OUTER OBJECTIVE
minimize outer_obj: y,
  suffix cat 1;

# OUTER CONSTRAINT
subject to outer_con: y <= 0,
  suffix cat 1;

# INNER OBJECTIVE (PART OF CONSTRAINS)
subject to inner_obj: -y <= 0,
  suffix cat 2;

# STATIONARITY AND COMPLEMENTARITY CONDITIONS
subject to stationarity: -1 - mu1 + mu2 = 0,
  suffix cat 3;

subject to complementarity_1: mu1*(-1 - y) = 0,
  suffix cat 3;

subject to complementarity_2: mu2*(y - 1) = 0,
  suffix cat 3;










