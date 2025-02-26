data("mtcars")
head(mtcars, 6)


methods(class = class(mtcars))
s3_obj <- list(name = "Student A", age = 25, GPA = 3.8)
class(s3_obj) <- "student"
print.student <- function(x) {
  cat("Student Name:", x$name, "\nAge:", x$age, "\nGPA:", x$GPA, "\n")
}
print(s3_obj)


setClass("student",
         slots = list(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student", name = "Student B", age = 27, GPA = 3.9)
s4_obj
