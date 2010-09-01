require 'probe'

describe Probe do

  # TODO mock out http request
  it "should get the newest information" do
    probe = Probe.new
    probe.gather_weather_xml(2496728)
  end

end