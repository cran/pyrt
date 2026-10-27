## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(pyrt)

# Reference-semantics list
xs <- py_list(list(10L, 20L, 30L))
alias <- xs
xs$append(40L)
py_len(alias)

# Bit-exact CPython 3.12 random
rng <- py_random$Random(42L)
rng$random()

