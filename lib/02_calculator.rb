def add(a, b)

	a + b
end


def subtract(a, b)
	a - b
end


def sum(array)

	array.reduce(0) {|sum, num| sum += num}

end


def multiply(a, b)
	a * b

end

def power(a, b)
	a ** b

end


def factorial(n)
	
	result = 1	

	while n > 1
		result = result * n
		n -= 1
	end	
	return result
end