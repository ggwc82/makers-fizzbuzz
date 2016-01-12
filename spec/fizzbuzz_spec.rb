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

 	(1..20).each do |i|
 		if i % 3 == 0 && i % 5 != 0 
 			it 'returns "fizz" when passed any multiple of 3' do
 				expect(fizzbuzz(i)).to eq 'fizz'
 			end	
 		end
 	end

it 'returns "fizzbuzz" when passed 15' do	
	expect(fizzbuzz(15)).to eq 'fizzbuzz'
end

end
