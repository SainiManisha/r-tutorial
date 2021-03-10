data(trees)
hist(trees$Height)                 # plot
dev.copy(png, "myHistogram.png")   # copy to device
dev.off()
