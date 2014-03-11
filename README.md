knitr-yaml-example
==================

rmarkdown example using yaml to set knitr opts and hooks

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
