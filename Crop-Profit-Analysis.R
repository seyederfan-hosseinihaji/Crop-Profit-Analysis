area <- c("Burundi", "China", "Germany", "Iran", "Italy", "USA")
yeild.kg <- c(732.1, 5780.8, 7431.8, 2258.1, 3691.7, 3269.4) #kg/ha
area.harvested <- c(10873, 23629200, 2897800, 6200000, 1867560, 15083610) #ha
yeild.ton <- yeild.kg / 1000 #ton/ha
yeild.ton

total.production <- yeild.ton * area.harvested
total.production

#If the wheat price per ton is $250, the total revenue is:
total.revenue <- total.production * 250
total.revenue

# If the production cost per ton is $150, the total production cost is:
total.production.cost <- total.production * 150
total.production.cost

#Gross profit
gp <- total.revenue - total.production.cost

tax <- gp * 10/100
tax
 
net.profit <-
