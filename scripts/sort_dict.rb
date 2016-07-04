require 'file_sort'

dict = ARGV[0]
col = ARGV[1]

Dir.chdir('./tmp/pre')


FileSort.new(dict, {
  sort_column: col,
  column_separator: "\t",
  parse_as: :string
}).sort!