install.packages("usethis")
library(usethis)
create_package("CountToTen")

def <- defData(varname = "age", dist = "normal", formula = 10, variance = 2)
def <- defData(def, varname = "female", dist = "binary", formula = "-2 + age * 0.1", link = "logit")
def <- defData(def, varname = "visits", dist = "poisson", formula = "1.5 - 0.2 * age + 0.5 * female", link = "log")
