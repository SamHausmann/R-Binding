source("../R/Api.R")
library(rjson)
library("optparse")

option_list = list( make_option(c("-k", "--key"), action="store", default=NA, type='character',
              help="Rosette API key"), make_option(c("-u", "--url"), action="store", default=NA, type='character',
              help="Rosette API url"))
opt_parser = OptionParser(option_list=option_list)
opt = parse_args(opt_parser)

key <- "content"
value <- "The fact is that the geese just went back to get a rest and I'm not banking on their return soon"
key1 <- "morphology"
value1 <- "parts-of-speech"

parameters <- list()
parameters[[ key ]] <- value
parameters[[ key1 ]] <- value1
parameters <- toJSON(parameters)

if(is.na(opt$url)){
   result <- api(opt$key, "morphology", parameters)
} else {
   result <- api(opt$key, "morphology", parameters, NULL, opt$url)
}
print(result)