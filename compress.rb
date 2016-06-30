
 #compress dicts
require 'seven_zip_ruby'
require 'fileutils'

FileUtils.rm_rf Dir.glob("./dicts/*")
Dir.chdir('./tmp/pre')
 

Dir.glob(['*.txt','*.md5']).each do |f|
	
 	File.open("../../dicts/#{f}.7z", "wb") do |file|
  		SevenZipRuby::Writer.add_file(file,"#{f}")
	end


	File.write "../../dicts/#{f}.7z.timestamp",File.mtime(f).to_i;

end

