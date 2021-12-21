#' Create a flatpackage
#'
#' The main creation function of the package. This takes a package name as input
#' and ultimate creates a zip file that contains everything needed to install
#' the package on a system.
#' 
#' System requirements aren't downloaded by default.  There will be a message
#' provided to tell you if any packages note any system requirements and
#' what those system requirements are.
#'
#' @param package Character string -  The package you want to convert to a flatpackage
#' @param includeSuggests Boolean - Should the packages listed in "Suggests" be 
#' included as well when downloading the packages for the flatpackage?
#' 
#' @importFrom tools package_dependencies
#' @importFrom utils download.packages
#' @importFrom utils zip
#' 
#' @export
flatpackage_create <- function(package, includeSuggests = TRUE){
    
    # TODO - Consider making this more flexible?
    whichoption <- ifelse(includeSuggests, "all", "strong")
    
    packages_to_download <- package_dependencies(package, which = whichoption)
    # If this is ever expanded to allow for multiple packages to be included
    # this might need to be modified. Or maybe not. We'll see.
    packages_to_download <- c(package, unlist(unname(packages_to_download)))
    
    tmpd <- tempdir()
    package_directory <- file.path(tmpd, package)
    dir.create(package_directory)
    
    # had some issues with just using download.packages on the vector
    for(pack in packages_to_download){
        download.packages(pack, destdir = package_directory)
    }
    
    zipname <- paste0(package, ".zip")
    
    # TODO - Create the R script to install the files after unzipped
    
    zip(zipname, files = list.files(package_directory, full.names = TRUE))
    
    return(zipname)
    
}

