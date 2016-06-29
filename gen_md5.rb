#compress dicts
require 'Digest'
require 'seven_zip_ruby'


Dir.chdir('./tmp')


Dir.glob('*.md5').each do |f|
	File.delete(f)
 end

Dir.glob('*.txt').each do |f|
 	 File.open("#{f}.md5", "wb") do |file|
 	  	File.new(f).each do |password|
 	  		password.chomp!
	  		file.write(Digest::MD5.hexdigest(password)+"\t"+password+"\n")
 	 	end 
	 end

 end