

#' datos
#' @description  El archivo "datos" contiene los datos de exportacion desde 2016 a 2021.
#' IMPORTANTE: Los datos NO estan normalizados
#' @keywords datos
"datos"


#' normalized_by_country
#' @description  El archivo "normalized_by_country" contiene los datos normalizados entre [0,1].
#' La normalizacion se realizo dividiendo el maximo valor por año encontrado. IMPORTANTE: LA DIAGONAL NO ES 1
#' @usage normalized_by_country
#' @keywords normalized_by_country
"normalized_by_country"


#' normalized_by_year
#' @description El archivo "normalized_by_year" contiene los datos normalizados entre [0,1]
#' La normalizacion se realizo seleccionando un pais, se sumaron todas las columnas y se
#' dividio cada elemento por el resultado de la suma. Se realizo este paso para cada
#' fila.IMPORTANTE: LA DIAGONAL NO ES 1
#' @usage normalized_by_year
#' @keywords normalized_by_year
"normalized_by_year"

#' DE_0.05
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage DE_0.05
#' @keywords DE_0.05
"DE_0.05"

#' DE_0.005
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.005, reps = 1000 y delete = TRUE.
#' @usage DE_0.005
#' @keywords DE_0.005
"DE_0.005"

#' DE_0.0005
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage DE_0.0005
#' @keywords DE_0.0005
"DE_0.0005"

#' DE_0.05_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_country
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage DE_0.05_country
#' @keywords DE_0.05_country
"DE_0.05_country"

#' DE_0.005_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_country
#' con un thr = 0.005, reps = 1000 y delete = TRUE.
#' @usage DE_0.005_country
#' @keywords DE_0.005_country
"DE_0.005_country"

#' DE_0.0005_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_country
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage DE_0.0005_country
#' @keywords DE_0.0005_country
"DE_0.0005_country"


#' DE_0.05_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_relative
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage DE_0.05_rel
#' @keywords DE_0.05_rel
"DE_0.05_rel"


#' DE_0.005_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_relative
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage DE_0.005_rel
#' @keywords DE_0.005_rel
"DE_0.005_rel"

#' DE_0.0005_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_relative
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage DE_0.0005_rel
#' @keywords DE_0.0005_rel
"DE_0.0005_rel"


#' ISO_0.05
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage ISO_0.05
#' @keywords ISO_0.05
"ISO_0.05"

#' ISO_0.005
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.005
#' @keywords ISO_0.005
"ISO_0.005"

#' ISO_0.0005
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.0005
#' @keywords ISO_0.0005
"ISO_0.0005"



#' ISO_0.05_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage ISO_0.05_country
#' @keywords ISO_0.05_country
"ISO_0.05_country"

#' ISO_0.005_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.005_country
#' @keywords ISO_0.005_country
"ISO_0.005_country"

#' ISO_0.0005_country
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.0005_country
#' @keywords ISO_0.0005_country
"ISO_0.0005_country"


#' ISO_0.05_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.05, reps = 1000 y delete = TRUE.
#' @usage ISO_0.05_rel
#' @keywords ISO_0.05_rel
"ISO_0.05_rel"

#' ISO_0.005_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.005_rel
#' @keywords ISO_0.005_rel
"ISO_0.005_rel"

#' ISO_0.0005_rel
#' @description Implementacion de la funcion foRgotten::directEffects, usando los datos normalized_by_year
#' con un thr = 0.0005, reps = 1000 y delete = TRUE.
#' @usage ISO_0.0005_rel
#' @keywords ISO_0.0005_rel
"ISO_0.0005_rel"

#' paises
#' @description paises
#' @usage paises
#' @keywords paises
"paises"
