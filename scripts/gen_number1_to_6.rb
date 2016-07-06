    Dir.chdir('./tmp/pre')
    File.open("number_1_to_6.txt", "wb") do |file| 

    	(0.. 99999).each do |n|


     		l = 6- n.to_s.length 
     			(0..l).each do |j|  
	    			nw = '0'*(j) +n.to_s
	 		 	  	file.write("#{nw}\n")
 		 	  end 
 		 	  
		 	
		end

		(100000.. 999999).each do |n|
 		 	  	file.write("#{n}\n")
		 	
		end
	end