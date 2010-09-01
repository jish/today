$LOAD_PATH.unshift('lib')
require 'generator'

desc "generate the new index page"
task :generate do
  puts "Fetching new data from Yahoo! weather..."

  generator = Generator.new('views', 'public')
  generator.execute

  puts "Generated public/index.html"
end

desc "deploy the app"
task :deploy do
  `scp -r Rakefile lib/ public/ views/ lub:apps/today`
end
