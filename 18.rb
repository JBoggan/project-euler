##project euler 18

@a = []
@a[0] = %w[75]
@a[1] = %w[95 64]
@a[2] = %w[17 47 82]
@a[3] = %w[18 35 87 10]
@a[4] = %w[20 04 82 47 65]
@a[5] = %w[19 01 23 75 03 34]
@a[6] = %w[88 02 77 73 07 63 67]
@a[7] = %w[99 65 04 28 06 16 70 92]
@a[8] = %w[41 41 26 56 83 40 80 70 33]
@a[9] = %w[41 48 72 33 47 32 37 16 94 29]
@a[10] = %w[53 71 44 65 25 43 91 52 97 51 14]
@a[11] = %w[70 11 33 28 77 73 17 78 39 68 17 57]
@a[12] = %w[91 71 52 38 17 14 91 43 58 50 27 29 48]
@a[13] = %w[63 66 04 68 89 53 67 30 73 16 69 87 40 31]
@a[14] = %w[04 62 98 27 23 09 70 98 73 93 38 53 60 04 23]


def updateRow(row)
	j = 0
	while j < @a[row].count
		puts j
		@sum[row][j], pointer = bestPath(row,j)
		@pointers[[row,j]] = pointer
		j += 1
	end
end

def bestPath(row,j)
	downleft = @a[row+1][j]
	downright = @a[row+1][j+1]
	puts "#{downleft}, #{downright}"
	if downright > downleft
		return [downright, [row+1,j+1]]
	else
		return [downleft, [row+1,j]]
	end
end

i = 13

@sum = []
@sum[14] = @a[14]

@pointers = {}

while i > -1
	puts i
	updateRow(i)
	i -= 1
end

path = []
step = [0,0]
path << step
while @pointers[step]
	step = @pointers[step]
	path << step
end

puts path
puts @sum[0][0]

