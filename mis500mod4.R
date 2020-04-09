
tScore_before <- c(40, 62, 74, 22, 64, 65, 49, 49, 49)
tScore_after <- c(68, 61, 64, 76, 90, 75, 66, 60, 63)
my_data <- data.frame(group = rep(c("Score Before", "Score After"), each = 9), scores = c(tScore_before,  tScore_after))
print(my_data)
library(dplyr)
group_by(my_data, group)%>%summarise(count = n(),mean = mean(scores,na.rm = TRUE), sd = sd(scores, na.rm = TRUE))
res <- t.test(tScore_before, tScore_after, var.equal = TRUE
res <- t.test(scores ~ group, data = my_data, var.equal = TRUE)             
t.test(scores ~ group, data = my_data, var.equal = TRUE, alternative = "less")
group_by(my_data, group) %>% summarise(count = n(), mean = mean(scores, na.rm = TRUE), sd = sd(scores, na.rm = TRUE))
