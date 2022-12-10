#' myPlot
#'
#' @param Data  Data
#' @param vertex_size vertex_size
#' @param arrow_size arrow_size
#' @param edge_width edge_width
#'
#' @export

myPlot <- function(Data,type = c("Pr", "Bw"), vertex_size = 0.5, arrow_size = 0.02, edge_width = 0.5, layout){
  library(igraph)
  AAadj <- Data           # PARA EL GRAFO
  AAcent <- AAadj         # PARA LA CENTRALIDAD
  diag(AAadj) <- 0 # es necesario hacer la diagonal 0?
  diag(AAcent) <- 0
  myGraph <- graph.adjacency(AAadj, weighted = T, mode = "directed")
  myGcent <- graph.adjacency(AAcent, weighted = T, mode = "directed")
  color <- c()
  AFRICA <-  "#B530BB" #moraddo
  AMERICA <- "#2980B9" #azul
  ASIA <- "#D35400" # casi rojo
  EUROPA <- "#F1C40F" # amarillo
  OCEANIA <- "#95A5A6"# gris
  South_America <- "#2ECC71" #verde
  for(i in seq_len(length(myGraph))){
    #browser()
    for(j in seq_len(length(paises$ISO.3166))){
      if(V(myGraph)$name[i] == paises$ISO.3166[j]){
        if(paises$Continente[j] == 0){
          color <- c(color, AFRICA) #AFRICA -- verde
        }
        else if(paises$Continente[j] == 1){
          color <- c(color,AMERICA) #AMERICA --- AZUL
        }
        else if(paises$Continente[j] == 2){
          color <- c(color,ASIA) #ASIA --- ROJO
        }
        else if(paises$Continente[j] == 3){ # EUROPA --- AMARILLO
          color <- c(color,EUROPA)
        }
        else if(paises$Continente[j] == 4){ # OCEANIA --- ORANGE
          color <- c(color,OCEANIA)
        }
        else if(paises$Continente[j] == 5){ # South America
          color <- c(color, South_America)
        }
      }
    }
  }
  valores<-sort(unique(as.vector(AAadj)))
  #
  valorespaleta <- 1- (1/exp(valores*6.2))
  #valorespaleta[1]<-0
  #
  paleta<- grey(rep(0,length(valores)),valorespaleta) #^color
  #paleta <- paleta[length(paleta):1]
  vertex.size <- 0
  vertex.label.cex <- 0

  df_betweenness_tb <- data.frame()
  df_pagerank_ <- data.frame()
  # calculo de la centralidad betweenness y pagerank

  df_betweenness_tb <- as.data.frame(betweenness(myGcent,directed = T))
  colnames(df_betweenness_tb) <- "Betweenness"
  # pagerank
  df_pagerank_ <- as.data.frame(page.rank(myGcent,directed = T)$vector)
  colnames(df_pagerank_) <- "PageRank"
  # que tipo de vertex.size usar, si page.rank o betweeneess
  if(type == "Bw"){
    bet <- (betweenness(myGcent,directed = T))
    bet <- bet + (mean(bet))
    bet <- bet/max(bet)
    vertex.size <- 12*(bet)^vertex_size
    vertex.label.cex <- 1*sqrt((bet))+0.3
  }
  else if(type == "Pr"){
    vertex.size <- 27*(page.rank(myGcent,directed = T)$vector)^vertex_size
    vertex.label.cex <-  1*sqrt((page.rank(myGcent,directed = T)$vector))+0.3
  }
  #return(igraph::cliques(myGraph, min = 3, max = 6))
  par(mar=c(0.5,0.5, 0.5, 0.5))
  colfunc <- colorRampPalette(c("white","black"))
  Newcolor <- colfunc(length(paleta))
  plot(myGraph,
       edge.color = paleta[round(length(valores)*(E(myGraph)$weight))],
       #edge.color = Newcolor[round(length(valores)*(E(myGraph)$weight))],
       edge.curved=T,
       layout = layout(myGraph),
       vertex.size = vertex.size,
       vertex.color = color,
       #vertex.frame.color="white",
       vertex.label.family="sans",
       vertex.label.cex= vertex.label.cex,
       edge.arrow.size = arrow_size,
       edge.width = edge_width- (1/exp(E(myGraph)$weight * 1.5))
  )
  legend( x = "topleft",
          title = "Continents",
          legend = c("NA", "AS", "EU", "OC", "SA", "AF" ),
          fill = c( AMERICA, ASIA, EUROPA, OCEANIA , South_America, AFRICA),
          border = "white"
  )
  centralidades <- cbind( round(df_pagerank_ , 3), df_betweenness_tb)
  centralidades <- centralidades[order(centralidades$PageRank, decreasing = T),]
  return(centralidades)
}
