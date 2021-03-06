% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recipe_output.R
\name{function_div}
\alias{function_div}
\title{Recipes output in HTML for the Shiny App}
\usage{
function_div(URL, recipeTitle, pic_URL, recipeDifficulty, recipeCost,
  recipePreparationTime, recipeCookingTime, health_index)
}
\arguments{
\item{URL}{url to be put in href}

\item{recipeTitle}{title to be put in <a>}

\item{pic_URL}{URL of the recipe's image}

\item{recipeDifficulty}{difficulty of the recipe}

\item{recipeCost}{cost of the whole recipe}

\item{recipePreparationTime}{preparation time for the recipe}

\item{recipeCookingTime}{cooking time for the recipe}

\item{health_index}{Healthiness of the recipe}
}
\value{
html tag
}
\description{
Recipes output in HTML for the Shiny App
}
\examples{
function_div('url', 'title', 'picture_url', 'difficulty', 'cost', 'time_p', 'time_c', 'health')

}
