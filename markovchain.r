install.packages("markovchain")
# install.packages("igraph")
library(markovchain)

states<-c("rainy","cloudy","sunny")
probability_matrix<-rbind(c(0.0,0.4,0.6),c(0.4,0.1,0.5),c(0.6,0.2,0.2))
rownames(probability_matrix)<-colnames(probability_matrix)<-states
print(probability_matrix)

mc <- new("markovchain", states = states, transitionMatrix = probability_matrix, name = "Weather")
print(transitionProbability(mc, 'rainy', 'sunny'))

png(filename="mc.png")
show(mc)
dev.off()

print('After 25 trials')
print(mc ^ 25)

library(igraph)
png(filename="markovchain_graph.png")
plot(mc)
dev.off()

initialState = c(1,0,0)
print(initialState * mc ^ 25)

print(probability_matrix ^ 25)
