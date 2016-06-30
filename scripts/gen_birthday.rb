require 'date'
start_date = Date.new(1980,1,1)
end_date = Date.today


Dir.chdir('./tmp/pre')
    File.open("birthday.txt", "wb") do |file| 

		(start_date.. end_date).each do |date|
		    	password =  date.strftime("%Y%m%d")
		 	  	file.write("#{password}\n")
		 	  	password =  date.strftime("%y%m%d")
		 	  	file.write("#{password}\n")
		 	
		end

 end  