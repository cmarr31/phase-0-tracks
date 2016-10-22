require_relative 'calculator'

describe Calculator do
	let (:calculator) { Calculator.new }	
	
	it "divides two integers" do 
	expect(calculator.divide(8,4)).to eq 2 
	end
end