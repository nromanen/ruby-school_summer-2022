h1=Hash(:top=>[],:midle=>[],:lokh=>[])
puts h1
str1 = "Student1,91\nStudent2,56\nStudent3,95\nStudent4,56\nStudent5,10\nStudent6,56\nStudent7,93"
puts str1
MAXVALUE = 100
TOPVALUE = 10
LOWVALUE = 15 
str1 << "\n"
puts "Intermediar:"
while str1.length > 0
    l = str1.length
    k = str1.index("\n")
    str2 = str1[0..k]
    kk = str2.index(",") 
    stud = str2[0..kk-1]
    mk = str2[kk+1..k-1].to_i
    puts stud + " : " + mk.to_s
    if mk >= (1-TOPVALUE/100.0)*MAXVALUE
        h1[:top].push(stud)
    else
        if mk < LOWVALUE/100.0*MAXVALUE
            h1[:lokh].push(stud)
        else h1[:midle].push(stud)
        end
    end

    str1 = str1[k+1..l]
end
puts "\nResult:"
puts h1
