library(magrittr)

ncm <- readr::read_csv2("http://www.mdic.gov.br/balanca/bd/tabelas/NCM.csv") %>%
  janitor::clean_names()

sh <- readr::read_csv2("http://www.mdic.gov.br/balanca/bd/tabelas/NCM_SH.csv") %>%
  janitor::clean_names()

paises <- readr::read_csv2("http://www.mdic.gov.br/balanca/bd/tabelas/PAIS.csv") %>%
  janitor::clean_names()

blocos <- readr::read_csv2("http://www.mdic.gov.br/balanca/bd/tabelas/PAIS_BLOCO.csv") %>%
  janitor::clean_names()


usethis::use_data(ncm, sh, paises, blocos, overwrite = TRUE)
