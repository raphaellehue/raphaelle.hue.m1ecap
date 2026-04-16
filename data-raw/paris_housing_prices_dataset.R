## jeu de donnes sur les prix immobiler parisiens trouvées sur kaggle

url_jeu_de_donnees <- "https://www.kaggle.com/datasets/syedaeman2212/paris-housing-prices?resource=download"

library(readr)
paris_housing_prices_dataset <- read_csv("C:/Users/rhuep/Downloads/paris_housing_prices_dataset.csv")

usethis::use_data(paris_housing_prices_dataset, overwrite = TRUE)
