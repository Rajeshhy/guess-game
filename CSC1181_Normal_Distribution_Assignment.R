
data <- read.csv("simpsons_episodes.csv", header = T)


# 1) a)
rating_avg <- mean(data$imdb_rating, na.rm = T)

print(rating_avg)


# 1) b)
rating_sd <- sd(data$imdb_rating, na.rm = T)

print(rating_sd)


# 1) c) 
rating_min <- min(data$imdb_rating, na.rm = T)
rating_max <- max(data$imdb_rating, na.rm = T)

print(rating_min)
print(rating_max)

curve(dnorm(x, rating_avg, rating_sd),
      from = rating_min,
      to = rating_max)


# 2) a)
rating_prob_a <- pnorm(6, rating_avg, rating_sd)

print(rating_prob_a)
print(rating_prob_a * 100)


# 2) b)
rating_prob_b <- 1 - pnorm(9, rating_avg, rating_sd)

print(rating_prob_b)
print(rating_prob_b * 100)


# 2) c)
rating_prob_c <- pnorm(8, rating_avg, rating_sd) -
                 pnorm(7, rating_avg, rating_sd)

print(rating_prob_c)
print(rating_prob_c * 100)

#2) d) Percentage of viewers greater than 30 million
viewer_avg <- mean(data$us_viewers_in_millions, na.rm = T)
viewer_sd <- sd(data$us_viewers_in_millions, na.rm = T)

print(viewer_avg)
print(viewer_sd)

viewer_prob_d <- 1 - pnorm(30, viewer_avg, viewer_sd)

print(viewer_prob_d)
print(viewer_prob_d * 100)


# 2) e) Percentage of viewers less than 10 million
viewer_prob_e <- pnorm(10, viewer_avg, viewer_sd)

print(viewer_prob_e)
print(viewer_prob_e * 100)


# 2) f) Percentage of viewers between 10 and 20 million
viewer_prob_f <- pnorm(20, viewer_avg, viewer_sd) -
                 pnorm(10, viewer_avg, viewer_sd)

print(viewer_prob_f)
print(viewer_prob_f * 100)

curve(dnorm(x, rating_avg, rating_sd),
      from = rating_min,
      to = rating_max
)
