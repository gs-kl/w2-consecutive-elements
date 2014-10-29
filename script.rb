# ary = ["archery", "archery", "swimming", "swimming", "archery", "archery", "crafts"] # should return true
ary = ["archery", "swimming", "swimming", "swimming", "crafts", "archery", "archery", "crafts"] # should return false

ary2 = []
track = []
ary.each do |a|
	if a != track[-1]	
		ary2.push([a, 1])
	else
		ary2[-1][1] = ary2[-1][1].succ
	end
	track.push(a)
end
print "Formatted array: " + ary2.to_s + "\n"

result = true
track2 = [2]
ary2[0..-2].each do |a|
	if a[1] != track2[-1]
		result = false
	end
	track2.push(a[1])
end

print "Result: " + result.to_s

