
str_path = "/Users/dtvthe/Downloads/hihi/"

check_extentions = "rb,js,erb,jbuilder,scss"

check_file_not_extentions = [".gitignore","Gemfile"] # file names
abort_extentions = "coffee,scss"

def end_line_validate?(path_file = nil)
  if path_file == nil
    return false
  elsif path_file.empty?
    return false
  else
    file = File.open(path_file)
    file_read = file.read
    # p file_read.end_with?("\n") # Check multiple lines
    if file_read.end_with?("\n")
      return true
    else
      return false
    end
  end
end

files = Dir["#{str_path}**/*.{#{check_extentions}}"]
files_abort_files = Dir["#{str_path}**/*.{#{abort_extentions}}"]

puts "1> REMOVE or END LINE: "
files_abort_files.each { |x| puts x }
puts "2> END LINE: "
check_file_not_extentions.each { |x| files.push("#{str_path}#{x}") }
files.each do |x|
  if end_line_validate?(x) == false
    puts x
  end
end





