area <- c("Burundi", "China", "Germany", "Iran", "Italy", "USA")
yeild.kg <- c(732.1, 5780.8, 7431.8, 2258.1, 3691.7, 3269.4) #kg/ha
area.harvested <- c(10873, 23629200, 2897800, 6200000, 1867560, 15083610) #ha
yeild.ton <- yeild.kg / 1000 #ton/ha

total.production <- yeild.ton * area.harvested

#If the wheat price per ton is $250, the total revenue is:
total.revenue <- total.production * 250

#If the production cost per ton for all countries is $150, the total production cost is:
total.production.cost <- total.production * 150

#Gross profit
gp <- total.revenue - total.production.cost

tax <- round(gp * 10/100, 2)
 
#net profit
net.profit <- gp - tax

#Profit margin:
profit.margin <- (net.profit / total.revenue) * 100

#mean of net profit for all countries
mean.net.profit <- mean(net.profit)

# a good country is one that its net profit is higher than mean:
good.areas <- net.profit > mean.net.profit

bad.areas <- !good.areas

best.area <- net.profit == max(net.profit)

worst.area <- net.profit == min(net.profit)

#Print Results
worst.area
best.area
good.areas
bad.areas
mean.net.profit
profit.margin
net.profit
tax
gp
total.production.cost
total.revenue
total.production
yeild.ton
