module Conversions

  # Converts a temperature from Fahrenheit to Celsius
  #   to_celsius(212) # => 100
  #   to_celsius(32) # => 0
  def to_celsius(temp)
    (temp - 32) * 5 / 9
  end

end
