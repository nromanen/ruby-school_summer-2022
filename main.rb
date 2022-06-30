list=['a', '1']
strs="abc1"
io=0
for i in list do
if strs.match(i)
   print "_", io
end
io+=1  
end


def ip_address?(str)
   !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
 end
 print "\n \n", ip_address?("192.168.1.1")  # returns true
 print ip_address?("0000.0000") 

 Line = Struct.new(:name)
LOG_FORMAT = /([A-Za-z]+-.[A-Za-z]+)/
print "\n \n \n true \n \n"
#end
#
def names1?(str)
  !!(str =~ /[A-Z][a-z]+\-[A-Z][a-z]+$/)
end

def names2?(str)
  !!(str =~ /^[A-Z][a-z]+/)
end

def names3?(str)
  !!(str =~ /[A-Z]-[A-Z]/)
end

stlt =["Bob-Smith", "bob-Smith", "bob-Smith", "bOB-sMITH", "3546-4623", "Bob", "bob", "bOB", "B-B", "b-b","1-5", "Ygyukgkuigyugyugyuk-Bjhvjhjbkbkjbklbkj"]

for i in stlt
  if names1?(i)==true && i.length<15 then
    print i, " format1: true \n"
  elsif names2?(i)==true && i.length<15 then
  print i, " format2: true \n"
  elsif names3?(i)==true && i.length<4 then
    print i, " format3: true \n"
  else
    print i, " format: false \n"
  end  
end
