# ==============================================================================
# AMPL coding by Remigijus Paulavicius
# Name:
#   mb_2006_01.mod
#
# Original source:
# - Example 4.2 in:
#   Mitsos, A., & Barton, P.I. (2006). Issues in the development of global
#   optimization algorithms for bilevel programs with a nonconvex inner program
#
# Optimal solution:
#   F* = -1.0
#   f* = -1.0
#   y* = -1.0
#
# ---------------------------- Problem Properties ------------------------------
#                   n       m       #G     #H       #g      #h
# ------------------------------------------------------------------------------
#                   0       1       0       0       0       0
# ------------------------------------------------------------------------------
#
# For more information, please visit corresponding page at BASBLib website:
#    http://basblsolver.github.io/BASBLib/LP-QP/mb_2006_01
# ==============================================================================
var y >= -1, <= 1;       # Inner variables
var l{1..2} >= 0, <= 2;  # KKT Multipliers

# Outer objective:
minimize outer_obj: y;   

subject to
# Inner objective:
    inner_obj: -y^2 = 0;
# KKT conditions:
    stationarity: -2*y - l[1] + l[2] = 0;
    complementarity_1: l[1]*(-1 - y) = 0;
    complementarity_2: l[2]*(y - 1) = 0;











