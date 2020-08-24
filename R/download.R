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
download_comex <- function(ano, tipo, destino) {
  link <- glue::glue("http://www.mdic.gov.br/balanca/bd/",
             "comexstat-bd/mun/{tipo}_{ano}_MUN.csv")
  resp <- httr::GET(link, httr::write_disk(destino, overwrite = TRUE))
  httr::status_code(resp) == 200
}

#' @export
#' @rdname download
download_importacao <- function(ano, destino) {
  download_comex(ano, "IMP", destino)
}

#' @export
#' @rdname download
download_exportacao <- function(ano, destino) {
  download_comex(ano, "EXP", destino)
}

read_importacao <- function(caminho) {
  NULL
}

read_exportacao <- function(caminho) {
  NULL
}

