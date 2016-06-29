#compress dicts
require 'seven_zip_ruby'


Dir.chdir('./dicts')

Dir.glob('*.zip').each do |f|
	File.delete(f)
 end

Dir.glob('*.txt').each do |f|
	

	File.open("#{f}.zip", "wb") do |file|
  		SevenZipRuby::Writer.open(file) do |szr|
    		szr.add_directory("#{f}")
  		end
	end

end

