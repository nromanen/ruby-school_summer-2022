def to_hash
list = ['Milk-10', 'Milk-20', 'Sugar-10']
hash=Hash.new(0)
for i in 0..list.length-1 do
  product,count=list[i].split(/-/)
  hash[product]+=count.to_i
end
hash
end

