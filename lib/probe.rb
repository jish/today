require 'net/http'

class Probe

  # Takes a Yahoo! WOEID (Where on Earth Identifier)
  def gather_weather_xml(woeid)
    weather_xml = Net::HTTP::Get.new("/forecastrss?w=#{woeid}")
    response = Net::HTTP.start("weather.yahooapis.com") do |client|
      client.request(weather_xml)
    end

    response.body
  end

end
