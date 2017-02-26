def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(a)
	sum = 0
	a.each do |num|
		sum += num
	end
	return sum
end

def multiply(a)
	product = 1
	a.each do |num|
		product *= num
	end
	return product
end

def power(a)
	a ** 2
end

def factorial(x)
	product = 1
	counter = 1
	if x == 0
		product = 1
	elsif x > 0
		while counter <= x
			product *= counter
			counter += 1
		end
	end
	return product
end
