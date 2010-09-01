require 'conversions'

class Mock
  include Conversions
end

describe "Conversions#to_celsius" do

  it "should convert 32 degrees Fahrenheit to Celsius" do
    mock = Mock.new
    result = mock.to_celsius(32)
    result.should == 0
  end

  it "should convert 212 degrees Fahrenheit to Celsius" do
    mock = Mock.new
    result = mock.to_celsius(212)
    result.should == 100
  end

end
