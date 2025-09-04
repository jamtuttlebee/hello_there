# build a simple graph

# load packages
library(ggplot2)
library(EVR628tools)

# load data
data("data_heatwaves")

# build a plot
p <- ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa))) +
  geom_line(size = 0.2, color = "red") +
  labs(x = "Year",
       y = "Mean Temperature (C)",
       title = "Mean Temp. by Year",
       subtitle = "(It looks like the Grand Canyon)",
       caption = "Getting hotter...")

# export my plot
ggsave(plot = p,
       filename = "results/img/my_first_plot.pdf")
