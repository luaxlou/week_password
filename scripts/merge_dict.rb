require 'file_sort'
dict1 = ARGV[0]
dict2 = ARGV[1]
dict3 = ARGV[2]

Dir.chdir('./')


dict1_arr = File.open(dict1).readlines.map do |l|
	l.chomp
end  

File.open(dict2).each_line do |l|
	   l.chomp!
	  if(!dict1_arr.include?(l))

	  	dict1_arr.push l

	  end 

	 
end

File.write dict3,dict1_arr.join("\n")
FileSort.new(dict3, {
  sort_column: 0,
  column_separator: "\t",
  parse_as: :string
}).sort!