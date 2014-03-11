\name{provider1-package}
\alias{provider1-package}
\alias{provider1}
\docType{package}
\title{
Hooks for knitr.
}
\description{
Illustrates how knitr options could be set via the yaml markup
using rmarkdown v2.
}
\details{
\tabular{ll}{
Package: \tab provider1\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-03-11\cr
License: \tab GPLv3\cr
}
This package serves as an illustration only and provides no value
beyond that.

It accompanies a rmarkdown patch
https://github.com/Thell/rmarkdown/commit/0e5e23faafe94f3

}
\author{
Thell Fowler

Maintainer: Thell Fowler <thell@tbfowler.name>
}
\references{
rmarkdown
knitr
}
~~ Optionally other standard keywords, one per line, from ~~
~~ file KEYWORDS in the R documentation directory ~~
\keyword{ package }
\examples{\dontrun{
---
title: "test"
author: "Thell"
date: "03/10/2014"
output:
  html_document:
    knitr:
      opts_knitr:
        verbose: TRUE
      opts_chunk:
        echo: FALSE
      knit_hooks:
        myFlag1: provider1::providedHook1
        myFlag2: provider1::providedHook2
---

```{r, echo=TRUE}
# Ensure hooks are loaded.
names( knitr::knit_hooks$get() )
```

---

```{r, myFlag1=TRUE}
# Ensure myFLag1 triggers.
```

---

```{r, myFlag2=TRUE}
# Ensure only myFlag2 triggers
```

---

```{r, myFlag1=TRUE, myFlag2=TRUE}
# Ensure both trigger in order 1, 2.
```

```{r, myFlag2=TRUE, myFlag1=TRUE}
# Ensure both trigger in order 2, 1.
```
}
}
