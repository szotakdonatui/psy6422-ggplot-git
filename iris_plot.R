library(ggplot2)
library(dplyr)

# Load the iris dataset
data(iris)

# Create a scatter plot with enhancements
ggplot(data = iris, aes(x = Petal.Width, y = Petal.Length, color = Species)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, aes(group = Species), linetype = "dashed") +
  scale_color_brewer(palette = "Dark2") +
  labs(
    title = "Iris Petal Dimensions by Species",
    subtitle = "Scatter plot with linear trend lines per species",
    x = "Petal Width (cm)",
    y = "Petal Length (cm)",
    color = "Species"
  ) +
  theme_light()

shape = Species

