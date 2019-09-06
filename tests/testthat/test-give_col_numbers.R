test_that("Giving column names of their position works", {
  expect_equal(names(give_col_numbers(iris[1:3])),
  c("col.1", "col.2", "col.3"))
})
