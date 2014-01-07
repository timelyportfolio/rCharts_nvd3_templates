#example how to use the new addFilters with angular and lodash

#require(devtools)
#install("rCharts","ramnathv",ref="dev")
require(rCharts)

n1 <- nPlot(
  Freq ~ Sex,
  group = "Eye",
  data = as.data.frame(HairEyeColor),
  type = "multiBarChart"  
)
n1$addFilters("Hair","Eye")
n1$templates$script = "http://timelyportfolio.github.io/rCharts_nvd3_templates/script_multiselect.html"
n1