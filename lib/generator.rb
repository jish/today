require 'erb'
require 'probe'
require 'weather'

class Generator

  def initialize(template_dir, output_dir)
    @template_dir, @output_dir = template_dir, output_dir
  end

  def execute
    template = File.read(@template_dir + '/index.html.erb')
    today    = Time.now

    probe    = Probe.new
    xml      = probe.gather_weather_xml(2496728)
    weather  = Weather.from_xml(xml)

    result = ERB.new(template).result(binding)

    File.open(@output_dir + '/index.html', 'w') do |file|
      file.write(result)
    end
  end

end
