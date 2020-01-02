setwd("/Users/mari/Dropbox/MOOC-Coursera/Coursera-MachineLearning/Week7/machine-learning-ex6/ex6")  # MAC-OX
## setwd("C:/Users/Gianni/Dropbox/MOOC-Coursera/Coursera-MachineLearning/Week6/machine-learning-ex5")



save.image("./w7_MatLAb.RData") 
load("./w7_MatLAb.RData")

library(matconv)

out <- mat2r("learningCurve.m")
out
write(out, file = "learningCurve.r")


basicOctave <- mat2r("Octave basic operation.m")

basicOctave

library(R.matlab)
library(e1071)

## ==================== Part 2: Training Linear SVM ====================
#  The following code will train a linear SVM on the dataset and plot the
#  decision boundary learned.
#
# Load from ex6data1: 
# You will have X, y in your environment

ex6data1_R <- readMat("ex6data1.mat")
str(ex6data1_R)
ex6data1_R$X
ex6data1_R$y
print('Plot Training data ...')
plot(ex6data1_R$X, col = ex6data1_R$y+2, pch=19)

dat <- data.frame(ex6data1_R$X, y=ex6data1_R$y) ### y = as.factor(ex6data1_R$y))
print('Training Linear SVM ...')
C <- 1
sigma <- 0.1

model <- svm(y ~ ., data=dat, kernel="radial", cost=C, scale = F)

model

plot(model, data=dat)
