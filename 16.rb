## project euler 16

## another stupid simple one

i = 2 ** 1000

array = i.to_s.split("")
puts array.map{|x| x.to_i}.reduce(:+)