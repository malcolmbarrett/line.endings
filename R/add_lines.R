add_lines <- function() {
  x <- "hello
  there
  "
  line_ending <- if (.Platform$OS.type == "windows") "\r\n" else "\n"
  x <- gsub("\r?\n", line_ending, x)
  brio::write_lines(enc2utf8(x), "x_brio.txt", eol = line_ending)
  withr::local_options(usethis.overwrite = TRUE)
  usethis::write_over("x_usethis.txt", x)
}
