class Schedulestuff
	def self.formatarray ary
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
		return ary2
	end

	def self.evaluatecompliance ary 
		ary2 = formatarray ary
		result = true
		track2 = [2]
		ary2[0..-2].each do |a|
			if a[1] != track2[-1]
				result = false
			end
			track2.push(a[1])
		end
		result
	end
end
