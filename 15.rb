## project euler 15
## this is a combinatorics question and not programming

## we have 40 moves to get there, 20 R and 20 D
## so 40 choose 20

puts (21..40).reduce(:*) / (1..20).reduce(:*)