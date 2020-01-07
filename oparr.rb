puts "give size of an array"
n=gets.chomp.to_i
a=[n]
puts "give array elements"
for i in 0..n-1 do
 a[i]=gets.chomp.to_i
end
begin
puts " 1.add value\n 2.min\n 3.max\n 4.sum\n 5.avg\n 6.search\n 7.display\n 8.delete value by index\n 9.delete value\n"
puts "give number to do operation"
b=gets.chomp.to_i  
case b
 when 1
      puts "give value to add new element"
      i=gets.chomp.to_i
      a << i
      puts "*******"
 when 2
      puts a.min
      puts "*******"
 when 3
      puts a.max
      puts "*******"
 when 4
     puts a.sum
     puts "*******"
 when 5
      puts a.sum/a.size
      puts "*******"
 when 6
      puts "give value to search"
      j=gets.chomp.to_i
      for i in 0..a.size do
        if a[i]==j
         puts "the value is searched successfully"
        end
      end
     puts "*******"
 when 7
      for i in 0..a.size do
        puts a[i]
      end
     puts "*******"
 when 8
      puts "give num to delete at index"
      k=gets.chomp.to_i 
      a.delete_at(k)
      puts "*******"
 when 9
      puts "enter value to delete"
      i=gets.chomp.to_i
      a.delete(i)
      puts "*******"
 when 10
      puts "Exit"
      return
end
end while b!=11
