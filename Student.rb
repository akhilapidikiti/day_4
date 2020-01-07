class Student
   attr_accessor :name, :rollno, :state, :branch, :cgpa
   def initialize(n=nil,r=nil,b=nil,c=nil,s=nil)
    @name=n
    @rollno=r
    @branch=b
    @cgpa=c  
    @state=s 
   end
   def display
       puts " name: #{@name}"
       puts " rollno: #{@rollno}"
       puts " branch: #{@branch}"
       puts " cgpa: #{@cgpa}"
       puts " state: #{@state}"
   end
end
s=Array.new
begin
puts "1.add new one 2.display all 3.display by branch 4.display by state 5.search by rollno 6.search by name 7.delete by rollno 8.count & display by state 9.count & display by branch 10.Exit"
i=gets.chomp.to_i 
case i
	when 1 
		puts "enter student details"
		puts "enter Name"
		n=gets.chomp.to_s
		puts "enter Rollno"
		r=gets.chomp.to_i
		puts "enter Branch"
		b=gets.chomp.to_s
		puts "enter cgpa"
		c=gets.chomp.to_f
                puts "enter State"
		st=gets.chomp.to_s
                a=Student.new(n,r,b,c,st)
                s.push(a)
            
        when 2
		sno=1
                for j in s
                   puts "Student "+sno.to_s
		   j.display
                   sno+=1
                end
	when 3
		puts "enter branch"
		x=gets.chomp.to_s
		sno=1
		for j in s
                  if(j.branch==x)
                     puts "Student "+sno.to_s
		     j.display
                  end
		  sno+=1
                end
	when 4
		puts "enter state"
		x=gets.chomp.to_s
                sno=1
		for j in s
                  if(j.state==x)
                     puts "Student "+sno.to_s
		     j.display
                  end
		  sno+=1
                end
	when 5
		puts "enter rollno to search"
		x=gets.chomp.to_i
                sno=1
		for j in s
                  if(j.rollno==x)
                     puts "Student "+sno.to_s
		     j.display
                     puts "searched successfully"
                     y=1
                  end
		 sno+=1
                end
                 if(y!=1)
                  puts "data not found"
                 end
	when 6
		puts "enter name to search"
		x=gets.chomp.to_s
                sno=1
		for j in s
                  if(j.name==x)
                     puts "Student "+sno.to_s
		     j.display
                     puts "searched successfully"
                     y=1
                  end
		 sno+=1
                end
		  if(y!=1)
                    puts "data not found"
                  end
	when 7
		puts "enter rollno to delete"
		x=gets.chomp.to_i
		for j in s
                  if(j.rollno==x)
                     s.delete(j)
                     puts "deleted successfully"
                     y=1
                  end
                end
		  if(y!=1)
                    puts "data not found"
                  end
	when 8
		b=Array.new(0)
		for i in s
                    b.push(i.state)
		    count=b.each_with_object(Hash.new(0)) do |e,total|
                    total[e]+=1
                    end
		end
                puts  count
        when 9
		b=Array.new(0)
		for i in s
                    b.push(i.branch)
		    count=b.each_with_object(Hash.new(0)) do |e,total|
                    total[e]+=1
                    end
		end
                puts  count  
	when 10
		puts "Exit"
                return
      
end
end while i!=11
             
 
