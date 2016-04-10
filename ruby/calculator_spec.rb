class Calculator
  def divide(x,y)
    x/y
  end
end


describe Calculator do
  let(:calculator) { Calculator.new}

  it "divides two integers" do
    expect(calculator.divide(10,2)).to eq 5
  end
end