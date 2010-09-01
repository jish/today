require 'generator'

describe Generator do

  # OPTIMIZE mock out filesystem access
  # TODO this is the worst test ever.
  it "should generate a new output file" do
    Generator.new('views', 'public').execute
  end

end
