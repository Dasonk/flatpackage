# flatpackage


The flatpackage package is an R package that provides the ability to 
create an easily offline installable version of a package that includes
all the relevant dependencies.  When in an air-gapped system it can be difficult
to install R packages.  You need to download the packages required somewhere else,
possibly have them audited, and install locally.  If you don't also download the
dependencies for a package it can be slightly annoying to find that you need
to go through the entire process again.

This package intends on making that process a bit easier by zipping everything
up that you need and providing some convenience functions to install the result
so you don't have to go through the dependency ladder directly.

## Examples


```r
library(flatpackage)

# add some examples
```



## Known Issues

 - No known issues currently


## Installation


You can download the dev version via [zip ball](https://github.com/dasonk/flatpackage/zipball/master) or [tar ball](https://github.com/dasonk/flatpackage/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("dasonk/flatpackage")
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) and [devtools](http://CRAN.R-project.org/package=devtools) to install this way.


## Contact

You are welcome to:
* submit suggestions and bug-reports at: <https://github.com/dasonk/flatpackage/issues>
* send a pull request on: <https://github.com/dasonk/flatpackage/>


