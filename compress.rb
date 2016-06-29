
 #compress dicts
require 'seven_zip_ruby'


Dir.chdir('./tmp/pre')

Dir.glob('*.7z').each do |f|
	File.delete(f)
 end

Dir.glob(['*.txt','*.md5']).each do |f|
	
 	File.open("../../dicts/#{f}.7z", "wb") do |file|
  		SevenZipRuby::Writer.open(file) do |szr|
    		szr.add_directory("#{f}")
  		end
	end

end

