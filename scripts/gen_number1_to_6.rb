    Dir.chdir('./tmp/pre')
    File.open("number_1_to_6.txt", "wb") do |file| 

    	(0.. 99999).each do |n|


     		l = n.to_s.length
    			(1..l).each do |j| do
	    			nw = '0'*(6-j) +n.to_s
	 		 	  	file.write("#{nw}\n")
 		 	  end 
 		 	  
		 	
		end

		(100000.. 999999).each do |n|
 		 	  	file.write("#{n}\n")
		 	
		end
	end