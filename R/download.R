#' @export
#' @importFrom magrittr %>%
NULL

#' Download de dados do comércio exterior
#'
#' @param ano ano
#' @param tipo exportação (exp) ou importação (imp)
#' @param destino
#'
#' @return TRUE/FALSE sucesso da requisição
#' @rdname download
#' @name download
#'
#' @examples
baixar_comex <- function(ano, tipo, destino) {
  link <- glue::glue("http://www.mdic.gov.br/balanca/bd/",
             "comexstat-bd/mun/{tipo}_{ano}_MUN.csv")
  resp <- httr::GET(link, httr::write_disk(destino, overwrite = TRUE))
  httr::status_code(resp) == 200
}

#' @export
#' @rdname download
baixar_importacao <- function(ano, destino) {
  baixar_comex(ano, "IMP", destino)
}

#' @export
#' @rdname download
baixar_exportacao <- function(ano, destino) {
  baixar_comex(ano, "EXP", destino)
}

#' Ler dados comércio exterior
#'
#' @param caminho arquivo de import/export
#'
#' @return um data.frame
#' @export
ler_comex <- function(caminho) {
  readr::read_csv2(caminho) %>%
    janitor::clean_names()
}

