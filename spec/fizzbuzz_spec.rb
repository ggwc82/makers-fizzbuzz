require 'fizzbuzz'

describe 'fizzbuzz' do
	it 'returns "fizz" when passed 3' do
		expect(fizzbuzz(3)).to eq 'fizz'
	end

	it 'returns 1 when passed 1 ' do
		expect(fizzbuzz(1)).to eq 1
	end
 	
 	it 'returns "buzz" when passed 5' do
 		expect(fizzbuzz(5)).to eq 'buzz'
 	end

 	[3, 6, 9, 12, 18, 21, 24, 57, 63].each do |i|
 		it 'returns "fizz" when passed any multiple of 3 except when also a multiple of 5' do
 			expect(fizzbuzz(i)).to eq 'fizz'
 		end
 	end

it 'returns "fizzbuzz" when passed a multiple of both 3 and 5' do	
	(1..100).each do |i| #loop on the inside will only return one test example (1 success or 1 failure)
		if i % 3 == 0 && i % 5 == 0
			expect(fizzbuzz(i)).to eq 'fizzbuzz'
		end
	end
end

(1..100).each do |i| #keeping the each loop on the outside produces more test examples
	it 'returns "buzz" when passed a multiple of 5 except those divisible by 3' do
		if i % 5 == 0 && i % 3 != 0
			expect(fizzbuzz(i)).to eq 'buzz'
		end
	end
end

(1..100).each do |i|
	it 'returns the number itself if not divisible by 3 or 5' do
		if i % 5 != 0 && i % 3 != 0
			expect(fizzbuzz(i)).to eq i
		end
	end
end

end
