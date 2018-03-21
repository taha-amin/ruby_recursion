=begin
The fibonacci sequence, which sums each number with the one before it, 
is a great example of a problem that can be solved recursively
=end

#This method uses iteration for solution
def fibs(n)
	output = []
	(0..n).each do |num|
		if num < 2
			output << num
		else
			output << output[num - 2] + output[num - 1]
		end
	end
	print output, "\n\n"
end

#This method uses recursion for solution
def fibs_rec(n, result = [0, 1])
	if n > 1
		result << result[-2] + result[-1]
		fibs_rec(n - 1, result)
	end
	result
end

fibs(15)

fibs_rec(15)