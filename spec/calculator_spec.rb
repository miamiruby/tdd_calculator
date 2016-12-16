require_relative '../lib/calculator'
require 'byebug'

RSpec.describe "Calculator" do
  before(:each) do
    @calc = Calculator.new
  end
  it "can moo" do
    expect(@calc.cow_says).to eq('mooo')
  end
  it "can add two numbers" do
    expect(@calc.add(2, 2)).to eq(4)
    expect(@calc.add(3, 2)).to eq(5)
    expect(@calc.add(8, 9)).to eq(17)
    expect(@calc.add(111, 200)).to eq(311)
  end
  it "can divide" do
    expect(Calculator.new.divide(9,3)).to eq(3)
    expect(Calculator.new.divide(81,9)).to eq(9)
  end
  it "#subtract" do
    expect(Calculator.new.subtract(10,5)).to eq(5)
    expect(Calculator.new.subtract(4,2)).to eq(2)
    expect(Calculator.new.subtract(0,0)).to eq(0)
    expect(Calculator.new.subtract(-1,-1)).to eq(0)
  end
  it "#multiply" do
    expect(Calculator.new.multiply(2,2)).to eq(4)
    expect(Calculator.new.multiply(3,3)).to eq(9)
    expect(Calculator.new.multiply(5,5)).to eq(25)
    expect(Calculator.new.multiply(7,7)).to eq(49)
  end
  it "#last_result" do
    calc = Calculator.new
    calc.add(2,2)
    expect(calc.last_result).to eq(4)
    calc.divide(5,5)
    expect(calc.last_result).to eq(1)
    calc.subtract(10,5)
    expect(calc.last_result).to eq(5)
    calc.multiply(5,5)
    expect(calc.last_result).to eq(25)
  end
  it "#clear" do
    calc = Calculator.new
    calc.add(2,2)
    expect(calc.last_result).to eq(4)
    calc.clear
    expect(calc.results.count).to eq(0)
  end
end
