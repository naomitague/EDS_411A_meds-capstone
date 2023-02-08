test_that("compute_NPV_works", {

  # Testing algorthim
  # check that if you start with zero you still get zero
expect_equal(compute_NPV(value=0,time=100,discount=0.1), 0)

  # check that if no time elapses your value doesn't change
expect_equal(compute_NPV(value=100, time=0, discount=0.1), 100)


# Testing robustness across input types
# check that it works with a vector
testvals = c(100,200,300)
expect_length(compute_NPV(value=testvals, time=10, discount=0.1), length(testvals))


# Testing that unrealistic values are flagged
# check that function flags unrealistic discount rates
expect_error(compute_NPV(value=100, time=10, discount=-9))

# check that we warn users if values are negative
testvals = c(-100,0,2)
expect_warning(compute_NPV(testvals, time=10, discount=0.1))

})

