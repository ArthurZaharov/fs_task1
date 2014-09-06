initial_seq = [1]
loop_count = ARGV[0].to_i > 0 ? ARGV[0].to_i : 10

loop_count.times do
	result_seq = []
	count = 1
	puts initial_seq.join
	initial_seq.size.times do
		if (value = initial_seq.shift) == initial_seq.first
			count += 1
		else
			result_seq << count << value
			count = 1
		end
	end
	initial_seq = result_seq
end

