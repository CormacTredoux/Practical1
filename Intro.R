Reel <- c(rep(1, 7),rep(2, 5),rep(3, 3),rep(4, 6),rep(5, 9),rep(6, 20))
Payout <- c(2,2.5,8,4,2.5,0)

store <- rep(NA, 10000)

for(i in 0:10000-1){
  store[i] <- sample(Reel,1, replace = TRUE)
}

#count the number of occurences 

counts <- c(sum(store == 1), sum(store == 2), sum(store == 3), sum(store == 4), sum(store == 5), sum(store == 6))
probs <- counts/10000
probss <- c(7,5,3,6,9,20)/50
Payouts <- rep(NA, 10000)
for(i in 0:10000-1){
  Payouts[i] <- Payout[store[i]]
}
mean(Payouts)

#Play 10 games

pays <- rep(NA,10)
for(i in 1:10){
  pays[i] <- Payout[sample(Reel,1)]
}

hist(pays)
boxplot(pays)

mean(pays)
