trainData = read.csv("training_data1.csv")
summary(trainData)

library(mdatools)
trainDataP = subset(trainData)
head(trainDataP)
xc = trainDataP[-8]
head(xc)
yc = trainDataP[8]

ModelPLS = pls(xc, yc, scale = TRUE, cv=3, info = "body performance prediction")
summary(ModelPLS)
plot(ModelPLS)
plotXScores(ModelPLS,show.label = F)
plotXYLoadings(ModelPLS,show.label = TRUE)
plotVIPScores(ModelPLS,ncomp = 3, type = "h",show.label = TRUE)
summary(ModelPLS$coeffs)
plot(ModelPLS$coeffs,show.label = TRUE)
