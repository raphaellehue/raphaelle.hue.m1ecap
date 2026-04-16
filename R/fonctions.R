#' Filtrer le dataset par type de bien
#'
#' @param data Le jeu de données
#' @param type Le type de bien
#' @return Un data frame filtré
#' @export
filter_by_type <- function(data, type) {
  data[data$Property_Type == type, ]
}

#' Calcul du prix moyen par arrondissement
#'
#' @param data Le jeu de données
#' @param groupe La variable de groupement
#' @return Un data frame avec le prix moyen par groupe
#' @export
mean_price_by_group <- function(data, groupe) {
  aggregate(Price_EUR ~ get(groupe), data = data, FUN = mean)
}

#' Graphique du prix moyen par arrondissement
#'
#' @param data Le jeu de données
#' @param groupe La variable de groupement
#' @return Un graphique ggplot2
#' @export
plot_mean_price <- function(data, groupe) {
  result <- mean_price_by_group(data, groupe)
  colnames(result) <- c("groupe", "Prix_moyen")

  ggplot2::ggplot(result, ggplot2::aes(x = as.factor(groupe), y = Prix_moyen)) +
    ggplot2::geom_bar(stat = "identity", fill = "steelblue") +
    ggplot2::labs(title = paste("Prix moyen par", groupe),
                  x = groupe, y = "Prix moyen") +
    ggplot2::theme_minimal()
}
