library(ggplot2)

# note that even though the script is in the "src" folder, the working directory is still the rstudio project folder
data <- read.table("data/diamonds.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

p <- ggplot() +
  geom_point(data = diamonds,
             mapping = aes(x = carat, 
                           y = price), 
             alpha = 0.3) +
  facet_wrap(~ color)

ggsave("plots/plot_diamonds_a.pdf", p, width = 6, height = 4)
