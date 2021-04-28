test_that("lines are the same", {
  withr::local_options(usethis.quiet = TRUE)
  add_lines()
  withr::defer({
    unlink("x_brio.txt")
    unlink("x_usethis.txt")
  })

  x_usethis <- brio::read_file("x_usethis.txt")
  x_brio <- brio::read_file("x_brio.txt")

  expect_identical(x_usethis, x_brio)
})
