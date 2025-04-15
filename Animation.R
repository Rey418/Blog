install.packages("animation")

library(animation)

saveGIF({
    for (i in 1:10) plot(runif(10), ylim = 0:1)
}, movie.name = "simple_animation.gif",
   interval = 0.25,
   ani.width = 600, ani.height = 600)
