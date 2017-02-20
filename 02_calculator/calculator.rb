def add(a,b)
	return a + b
end

def subtract(c,d)
	return c - d
end

def sum(f)
	sum = 0
	f.each do |num|
		sum += num
	end
	return sum
end

def multiply(arr)
	product = 1
	arr.each do |numb|
		product *= numb
	end
	return product
end

def power(x)
	return x**2
end


