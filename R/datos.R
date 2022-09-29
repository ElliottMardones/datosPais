library(datosPxP)
datos <- datosPxP::datos
usethis::use_data(datos)

#Normalizar los datos

# 1) Normalizacion de los datos dividiendo el valor mas grande (por pais)

#' maxByYear
#' @export
maxByYear <- function(Data){
  experts <- dim(Data)[3]
  for( expert in seq_len(experts)){
    maxValuebyYear <- (max(Data[,,expert]))
    Data[,,expert] <- Data[,,expert]/maxValuebyYear
    diag(Data[,,expert]) <- 1
  }
  return(Data)
}

# 2)

#' max_ByCountry
#' @export
max_ByCountry <- function(Data){
  experts <- dim(Data)[3]
  countrys <- dim(Data)[2]
  for( expert in seq_len(experts)){
    for(country in seq_len(countrys)){
      Data[country, ,expert] <- (Data[country, ,expert])/(sum(Data[country, ,expert]))
    }
    diag(Data[,,expert]) <- 1
  }
  return(Data)
}

byYear <- maxByYear(datos)
normalized_by_year <- byYear

byCountry <- max_ByCountry(datos)
normalized_by_country <- byCountry


usethis::use_data(normalized_by_year, normalized_by_year)
usethis::use_data(normalized_by_country, normalized_by_country)
