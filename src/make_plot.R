library(ggplot2)

# note that even though the script is in the "src" folder, the working directory is still the rstudio project folder
data <- read.table("data/diamonds.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)

p <- ggplot() +
  geom_point(data = diamonds,
             mapping = aes(x = carat, 
                           y = price), 
             alpha = 0.1) +
  facet_wrap(~ color)

ggsave("plots/plot1.pdf", p, width = 6, height = 4)
