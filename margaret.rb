require "yaml"

class Margaret

	margaret_arg = ARGV.join(" ")
	# puts margaret_arg.to_s
	marge = File.open('messages.yaml', 'r+')
	temp_hash = YAML::load(marge)
	
	temp_hash.each do |person, messages|
		if (person == "Margaret")
			messages.push(margaret_arg)
		end
	end
	# puts temp_hash
	marge.rewind
	marge.puts YAML::dump(temp_hash)
	marge.close
end