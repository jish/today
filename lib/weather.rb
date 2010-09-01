# require 'nokogiri'
require 'conversions'

class Weather

  include Conversions

  attr_reader :temp

  def self.from_xml(xml)
    new.from_xml(xml)
  end

  # Turning off Nokogiri for now
  # TODO benchmark
  def from_xml(xml)
    # doc   = Nokogiri::XML(xml)
    # @temp = doc.at_xpath(".//yweather:condition")['temp'].to_i

    tag = xml.match(/<yweather:condition[^>]+>/)[0]
    @temp = tag.match(/temp="(\d+)"/)[1].to_i

    self
  end

  def celsius
    to_celsius(@temp)
  end

end
