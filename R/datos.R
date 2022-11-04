
#Normalizar los datos

# 1) Normalizacion de los datos dividiendo el valor mas grande (por pais)

#' maxByYear
#'
#' @param Data parametro
#'
#' @export
maxByYear <- function(Data){
  experts <- dim(Data)[3]
  for( expert in seq_len(experts)){
    maxValuebyYear <- (max(Data[,,expert]))
    Data[,,expert] <- Data[,,expert]/maxValuebyYear
    #diag(Data[,,expert]) <- 1
  }
  return(Data)
}

# 2)

#' max_ByCountry
#'
#' @param Data parametro
#'
#' @export
max_ByCountry <- function(Data){
  experts <- dim(Data)[3]
  countrys <- dim(Data)[2]
  for( expert in seq_len(experts)){
    diag(Data[,,expert]) <- 0
    for(country in seq_len(countrys)){
      Data[country, ,expert] <- (Data[country, ,expert])/(sum(Data[country, ,expert]))
    }
    #diag(Data[,,expert]) <- 1
  }
  return(Data)
}




#' max_relativo
#'
#' @param Data parametro
#'
#' @export
max_relativo <- function(Data){
  experts <- dim(Data)[3]
  countrys <- dim(Data)[2]
  for( expert in seq_len(experts)){
    diag(Data[,,expert]) <- 0
    for(country in seq_len(countrys)){
      Data[country, ,expert] <- (Data[country, ,expert])/(max(Data[country, ,expert]))
    }
    #diag(Data[,,expert]) <- 1
  }
  return(Data)
}



