#' Fetch Food Data from OpenFoodFacts - French dataset
#' @import dplyr
#' @import readr
#' @import utils
#' @export
#'
fetch_data_from_openfoodfacts <- function() {
  
  food_csv_filepath <- 'data/food.csv'
  
  download.file('https://fr.openfoodfacts.org/data/fr.openfoodfacts.org.products.csv', food_csv_filepath)
  food <- read_tsv(food_csv_filepath)
  
  columns_to_remove <- c(
    'states',
    'states_tags',
    'states_fr',
    'url',
    'creator',
    'created_datetime', 
    'last_modified_datetime', 
    'image_small_url',
    'image_ingredients_url',
    'image_ingredients_small_url',
    'image_nutrition_small_url',
    'image_nutrition_url'
  )
  
  food <- food %>% 
    filter(nchar(code) == 13 & !is.na(product_name)) %>% 
    select(-columns_to_remove)
  
  write_csv(food, food_csv_filepath)
}