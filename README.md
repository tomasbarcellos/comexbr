
<!-- README.md is generated from README.Rmd. Please edit that file -->

# comexbr

<!-- badges: start -->

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
download_importacao(2020, "import_2020.csv")
download_exportacao(2020, "export_2020.csv")
```

Essa função retorna `TRUE` para requisições que obtiveram sucesso, e
`FALSE` para o caso contrário.

E também sua leitura:

``` r
read_importacao(2020)
read_exportacao(2020)
```

Além disso, o pacote contém os dicionários das variáveis utilizadas.

``` r
dplyr::glimpse(comexbr::paises)
dplyr::glimpse(comexbr::blocos)
dplyr::glimpse(comexbr::ncm)
dplyr::glimpse(comexbr::sh)
```
