a=[]
puts "1.add email id 2.display all 3.display only edu mails 4.search 5.delete mail 6.display unique one's 7.count mail id 8.exit"
begin
puts "give number to do operations"
i=gets.chomp.to_i
case i
   when 1
        puts "enter mail id's"
        x=gets.chomp.to_s
        a.push(x)
        
   when 2
        puts a
   when 3
        for j in 0..a.size-1 do
             s=a[j].to_s
            if s.include?(".edu")
               puts s
            end
        end
   when 4
        puts "give id to search"
        id=gets.chomp.to_s
        for j in 0..a.size-1 do
             s=a[j].to_s
            if s.include?(id)
               puts "searched successfully"
               id="1"
            end
        end
        if id!="1"
          puts "not found"
        end
   when 5
        puts "enter mail to delete"
        id=gets.chomp.to_s
        a.delete(id)
   when 6
        puts "displaying unique mail domains"
        for j in 0..a.size-1 do
             s=a[j].to_s
            if s.include?("gmail.com")
            else
              puts a[j]
            end
        end
   when 7
        puts "give domain name to count id's"
        id=gets.chomp.to_s
        k=0
        for j in 0..a.size-1 do
             s=a[j].to_s
            if s.include?(id)
               k+=1
            end
        end
        puts k 
   when 8
        puts "Exit"
        return
end
end while i!=9
