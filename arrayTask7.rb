def arrayBuilder(num, *array)
    res=[]
    i=0
while i<num do
    print "for i: ", i, "\n"
for e in array do
    print "for e: ",i," ", e, "\n"
    if i<num 
        res.append(e)
    end
    i+=1
end
end
return res
end

print arrayBuilder(5, true, false)