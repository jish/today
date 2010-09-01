require 'weather'

describe Weather do

  before(:all) do
    xml = File.read('spec/files/ssf.xml')
    @weather = Weather.from_xml(xml)
  end

  it 'should instantiate from xml' do
    # This moved up to the before(:all) block
    # Don't know of a better way to "assert" that this is being done.
    # So for now, I'll just leave the empty test.
  end

  it "should respond to temp" do
    @weather.temp.should == 61
  end

  it "should provide the temperature in Celsius" do
    @weather.celsius.should == 16
  end

end
