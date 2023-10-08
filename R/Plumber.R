
# -- load package
library(plumber)

cat("[INFO] Starting API ... \n")

#* @apiTitle R Plumber API
#* @apiDescription Returns the length of the input

#* @param msg The message
#* @get /length

function(msg = "none"){

  cat("[API] New call, input msg =", msg, "\n")
  list("length" = length(msg))

}
