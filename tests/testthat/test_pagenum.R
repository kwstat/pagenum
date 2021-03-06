
# base graphics
setPagenum(1)
plot(Sepal.Length~Sepal.Width, data=iris, col=Species, pch=19)
pagenum()

# lattice, date
setPagenum(getPagenum()+1) # Manual increment
require(lattice)
xyplot(Sepal.Length~Sepal.Width, data=iris, groups=Species)
pagenum(date=TRUE)

# ggplot2, top-right
require(ggplot2)
ggplot(iris, aes(x=Sepal.Width, y=Sepal.Length,
                 color=Species)) + geom_point() + theme_classic()
pagenum(text="ABC Corp - ", date=TRUE,
        x=.95, y=.95, just=c('right','top'))

# multiple figures, 'draft' watermark
op = par(mfrow=c(1,2))
plot(Sepal.Length ~ Sepal.Width, data=iris, col=Species, pch=19)
plot(Petal.Length ~ Petal.Width, data=iris, col=Species, pch=19)
par(op)
pagenum(num="", text="Figures 2a, 2b")
pagenum(num="", text="Draft",
        x=.5, y=.95, just=c('center','top'),
        col="wheat", cex=3)

