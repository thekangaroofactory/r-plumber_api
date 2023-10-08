

library(plumber)

cat("-- Starting API -- \n")

#* @apiTitle First API
#* @apiDescription Return the msg

#* @param msg The message
#* @get /test

function(msg = "empty"){

  cat("API Call -- msg =", msg, "\n")
  list("message" = msg)

}
