    Dir.chdir('./tmp/pre')
    File.open("number_1_to_6.txt", "wb") do |file| 

		(1.. 999999).each do |n|
 		 	  	file.write("#{n}\n")
		 	
		end
	end