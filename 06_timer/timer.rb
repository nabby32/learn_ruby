class Timer
  
def initialize 
	@seconds = 0.0
end

def seconds
	@seconds
end

def seconds=(value)
	@seconds = value
end

def time_string
	counter(@seconds)
end

private

def counter(seconds)
	counter_array = []
	
	if seconds == 0
		counter_array << "00" << "00" << "00"
	elsif seconds > 0
		hour_tens = seconds/36000
		seconds = seconds%36000
		hour_ones = seconds/3600
		seconds = seconds%3600
		min_tens = seconds/600
		seconds = seconds%600
		min_ones = seconds/60
		seconds = seconds%60
		sec_tens = seconds/10
		seconds = seconds%10
		sec_ones = seconds
		counter_array << hour_tens.to_s + hour_ones.to_s << min_tens.to_s + min_ones.to_s << sec_tens.to_s + sec_ones.to_s
	end	

	return counter_array.join(":")
end

end

s = Timer.new
s.seconds = 45467
puts s.time_string
