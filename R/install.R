# setwd("~/Downloads/tmp/")
# 
# file_to_unzip <- "pacman.zip"
# 
# out <- unzip(file_to_unzip)
# 
# install_local <- function(path){
#     install.packages(path, repos = NULL, type = "source")
# }
# 
# for(path in out){
#     install_local(path)
# }
