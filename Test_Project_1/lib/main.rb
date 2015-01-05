# Jonathan Butler

#this section of code reads the data.txt file into a string 
begin
  #puts "Please enter the location of the data.txt file:"
  #path = gets.chomp  
  path = "G:/data.txt" 
  data = ""
  File.open(path) do |txt|
    txt.each{|t| data.concat(t)}
  end  
rescue 
  puts "ERROR: file could not be found/read; please try again."
  #retry
end

#this section splits that string into a single integer array. 
# it then checks this array for the correct length of %10
ary = data.split(" ") .map { |s| s.to_i }
if ary.size%10 != 0 then
  puts "ERROR: Incorrect number of integers in data.txt file."
  exit
end 

#this
require 'matrix'
matrixA = Matrix.build(5,(ary.size/2)/5) {|row, col| -1 }
matrixB = Matrix.build((ary.size/2)/5,5) {|row, col| -1 }

 
matrixA.to_a.each {|m| puts m.inspect}

#ary.each do |num|
#puts num
#end