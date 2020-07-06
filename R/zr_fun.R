# Função para colocar valor de 0.0001 no lugar de erros, não 0 para evitar divisão infinita
zr <- function(codigo) {
  tcodigo <- try(codigo)
  if(!inherits(tcodigo, "try-error")) {
    tcodigo
  } else {
    0.0001
  }
}
