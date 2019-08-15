# RandomClustering

Generate a binary (0,1) lattice of size <a href="https://www.codecogs.com/eqnedit.php?latex=n\times&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n\times&space;n" title="n\times n" /></a> with parameter p, p indicates how many ones will be placed randomly with respect to the total lattice cells, this will gerate clusters of diferent sizes in the lattice.

### We follow the next steps:
* Create a binary lattice of size <a href="https://www.codecogs.com/eqnedit.php?latex=n\times&space;n" target="_blank"><img src="https://latex.codecogs.com/gif.latex?n\times&space;n" title="n\times n" /></a> with a probability of filling <a href="https://www.codecogs.com/eqnedit.php?latex=p" target="_blank"><img src="https://latex.codecogs.com/gif.latex?p" title="p" /></a>.

* Label the clusters that are generated in the lattice.

* Choose the biggets cluster formed in the lattice and randomly remove a cell.

* Choose the smallest clusters and add randomly a cell with the same label of the selected cluster in one of his neighbors.

* If there are several smallest clusters with the same size, we choose one of them randomly and we repeat the previous step.  


![](RandomCluster.gif)

## Installation

``` r
# The development version from GitHub:
# install.packages("devtools")
devtools::install_github("FrankBaut/RandomClustering")
```
``` r
# install.packages("tidyverse")
# install.packages("magrittr")
```
## Examples

``` r
# Basic workflow:
library("tidyverse")
library("magrittr")
library("RandomClustering")

Label_clusters <- clusters_matrix(n=10, p = 0.5) %>%
  big_cl() %>% small_cl()
```
Maybe we would like observe the new clusters configuration after one iteration and re-label this configuration. Basically we must do:
``` r
Label_clusters <- clusters_matrix(n=10,p=0.5)
proceso(Label_clusters)
```
Or with pipe operator ``` %>% ```:

``` r
Label_clusters <- clusters_matrix(n=10,p=0.5) %>% proceso()
```

