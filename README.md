
<!-- README.md is generated from README.Rmd. Please edit that file -->

# comexbr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/tomasbarcellos/comexbr.svg?branch=master)](https://travis-ci.org/tomasbarcellos/comexbr)
<!-- badges: end -->

O objetivo de comexbr é permitir baixar e ler os dados do comércio
exterior brasileiro divulgados pelo governo federal.

## Installation

Por enquanto esse pacote só pode ser instalado via github com o código
abaixo:

``` r
remotes::install_github("tomasbarcellos/comexbr")
```

## Examplo

O código abaixo demonstra algunas casos de uso do pacote. O primeiro que
se pode fazer é o download dos dados:

``` r
library(comexbr)
baixar_importacao(2020, "import_2020.csv")
baixar_exportacao(2020, "export_2020.csv")
```

Essa função retorna `TRUE` para requisições que obtiveram sucesso, e
`FALSE` para o caso contrário.

E também sua leitura:

``` r
imp2020 <- ler_comex("import_2020.csv")
dplyr::glimpse(imp2020)
#> Observations: 535,969
#> Variables: 8
#> $ co_ano     <dbl> 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020,…
#> $ co_mes     <chr> "04", "01", "05", "06", "07", "06", "01", "03", "02",…
#> $ sh4        <chr> "0402", "7320", "0901", "0403", "4016", "2005", "4009…
#> $ co_pais    <chr> "580", "345", "365", "476", "337", "127", "845", "783…
#> $ sg_uf_mun  <chr> "RS", "SP", "MG", "RJ", "RS", "GO", "RS", "CE", "PR",…
#> $ co_mun     <dbl> 4315602, 3420509, 3170701, 3302403, 4318705, 5313806,…
#> $ kg_liquido <dbl> 452, 0, 421875, 60, 22, 1368, 35, 20, 285, 4, 93, 152…
#> $ vl_fob     <dbl> 399, 15, 975844, 35, 1055, 1984, 904, 62, 5219, 15, 1…

exp2020 <- ler_comex("export_2020.csv")
dplyr::glimpse(exp2020)
#> Observations: 535,969
#> Variables: 8
#> $ co_ano     <dbl> 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020,…
#> $ co_mes     <chr> "04", "01", "05", "06", "07", "06", "01", "03", "02",…
#> $ sh4        <chr> "0402", "7320", "0901", "0403", "4016", "2005", "4009…
#> $ co_pais    <chr> "580", "345", "365", "476", "337", "127", "845", "783…
#> $ sg_uf_mun  <chr> "RS", "SP", "MG", "RJ", "RS", "GO", "RS", "CE", "PR",…
#> $ co_mun     <dbl> 4315602, 3420509, 3170701, 3302403, 4318705, 5313806,…
#> $ kg_liquido <dbl> 452, 0, 421875, 60, 22, 1368, 35, 20, 285, 4, 93, 152…
#> $ vl_fob     <dbl> 399, 15, 975844, 35, 1055, 1984, 904, 62, 5219, 15, 1…
```

Além disso, o pacote contém os dicionários das variáveis utilizadas.

``` r
dplyr::glimpse(comexbr::paises)
dplyr::glimpse(comexbr::blocos)
dplyr::glimpse(comexbr::ncm)
dplyr::glimpse(comexbr::sh)
```
