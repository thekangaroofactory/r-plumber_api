

# ------------------------------------------------------------------------------
# This is the definition of the Plumber API
# ------------------------------------------------------------------------------

# -- Load dependencies
library(plumber)

# -- Source code
source("getLength.R")

# -- notify
cat("[INFO] Starting API ... \n")


# ------------------------------------------------------------------------------
# API Version function
# ------------------------------------------------------------------------------

#* @plumber
function(pr) {
  assign("apiV",
         function() {
           pr$getApiSpec()$info$version
           # or the line below if endpoint response time is important
           # pr$.__enclos_env__$private$globalSettings$info$version
         },
         envir = pr$environment)
}


# ------------------------------------------------------------------------------
# API Definition:
# ------------------------------------------------------------------------------

#* @apiTitle R Plumber API
#* @apiDescription Returns the length of the input
#* @apiVersion 0.0.900


# ------------------------------------------------------------------------------
# Define route: /
# ------------------------------------------------------------------------------

#* @serializer unboxedJSON
#* @get /version
function() {

  cat("[API] New call on root, returning version. \n")
  return(list(api_version = apiV()))

}


# ------------------------------------------------------------------------------
# Define route: /length
# ------------------------------------------------------------------------------

#* @param msg The message
#* @get /length

function(msg = "none"){

  cat("[API] New call route = length, input msg =", msg, "\n")
  return(getLength(msg))

}
