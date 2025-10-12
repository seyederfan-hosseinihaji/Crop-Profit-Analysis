area <- c("Burundi", "China", "Germany", "Iran", "Italy", "USA")
yeild.kg <- c(732.1, 5780.8, 7431.8, 2258.1, 3691.7, 3269.4) #kg/ha
area.harvested <- c(10873, 23629200, 2897800, 6200000, 1867560, 15083610) #ha
yeild.ton <- yeild.kg / 1000 #ton/ha

total.production <- round(yeild.ton * area.harvested, 0)

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

#Convert some calculations to units of one million dollars:
total.revenue.1m <- round(total.revenue / 1000000, 0)
total.production.cost.1m <- round(total.production.cost / 1000000, 0)
gp.1m <- round(gp / 1000000, 0)
tax.1m <- round(tax / 1000000, 0)
net.profit.1m <- round(net.profit / 1000000, 0)
mean.net.profit.1m <- round(mean.net.profit / 1000000, 0)

#Print Results
worst.area
best.area
good.areas
bad.areas
mean.net.profit.1m
profit.margin
net.profit.1m
tax.1m
gp.1m
total.production.cost.1m
total.revenue.1m
total.production
yeild.ton

DataFrame <- data.frame(
  Area = area,
  Yeild_ton_per_ha = yeild.ton,
  Mean_of_net_profit = mean.net.profit.1m,
  Net_profit_million = net.profit.1m,
  The_worst_area = worst.area,
  The_best_area = best.area,
  Good_areas = good.areas,
  Bad_areas = bad.areas,
  Profit_margin_percent = profit.margin,
  Tax_million = tax.1m,
  Gp_million = gp.1m,
  Total_production_cost_million = total.production.cost.1m,
  Total_revenue_million = total.revenue.1m,
  Total_production_ton = total.production
)