class Calculator
 attr_accessor :x,:y
  def initialize(a=nil,b=nil)
   @x=a
   @y=b
  end
  def input
   puts "enter values"
   @x=gets.chomp.to_i
   @y=gets.chomp.to_i
  end
  def add
   puts "the addition is"
   puts @x+@y
  end
  def sub
   puts "the sub is"
   puts @x-@y
  end
  def mul
   puts "the mul is"
   puts @x*@y
  end
  def div
   if(@y==0)
     puts "give non-zero value"
   else
   puts "the div is"
   puts @x/@y
   end
  end
  def mod
   puts "the mod is"
   puts @x.modulo(@y)
  end
end
c1=Calculator.new
begin
puts "  1.addition 2.subtraction 3.multiplication 4.division 5.modulo 6.exit 7.input"
d=gets.chomp.to_i
case d
  when 1
       c1.add
  when 2
       c1.sub
  when 3
       c1.mul
  when 4
       c1.div
  when 5
       c1.mod
  when 6
       puts "Exit"
  when 7
      c1.input
end
end while d!=8
  
  

   
