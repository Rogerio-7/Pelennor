![](images/Pelennor_logo-04.png)

------------------------------------------------------------------------

## Introduction

**Pelenor** contains a single function, *rohirrim*, which calculates the **Over-prediction rate (OPR)**, **Under-prediction rate (UPR)**, **Potential Presence Increment (PPI)**, and **Potential Absence Increment (PAI)** from a confusion matrix. The confusion matrix must be an object of *class data.frame*. Initially this package was build to accept confMatrix data from SDMtune package, but any object data.frame who contains the parametres for OPR, UPR, PPI and PAI should work.To calculate the metrics, it's necessary 4 data from confMatrix: tn, tp, fn and fp.

## Installation

You can instalt his package using the following command on R:

``` r
remotes::install_github('Rogerio-7/Pelennor', dependencies=TRUE)
```

## Usage

``` r
# Call the package
library(Pelennor)

# Use the function rohirrim to calculate the auxiliary metrics

rohirrim(objetc)

#The function provides a data.frame object with all the metricas calculated
  OPR   UPR    PPI    PAI
  0.5   0.5  0.3333 -0.3333
```

## Citation

This package was build following the proposed metrics by [Barbosa et al., (2013)](https://onlinelibrary.wiley.com/doi/10.1111/ddi.12100)

### Abstract

Models based on species distributions are widely used and serve important pur- poses in ecology, biogeography and conservation. Their continuous predictions of environmental suitability are commonly converted into a binary classification of predicted (or potential) presences and absences, whose accuracy is then eval- uated through a number of measures that have been the subject of recent reviews. We propose four additional measures that analyse observation-predic- tion mismatch from a different angle -- namely, from the perspective of the predicted rather than the observed area -- and add to the existing toolset of model evaluation methods. We explain how these measures can complete the view provided by the existing measures, allowing further insights into distribu- tion model predictions. We also describe how they can be particularly useful when using models to forecast the spread of diseases or of invasive species and to predict modifications in species' distributions under climate and land-use change.
