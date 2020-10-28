# run with `ruby day2_simple_grep.rb <search_term> <file_path>
search_term = ARGV.shift
ARGF.each_line {|line| print "(line #{ARGF.lineno}) ", line if line.match(search_term)}