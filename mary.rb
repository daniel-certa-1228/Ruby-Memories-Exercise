require "yaml"

class Mary

	mary_arg = ARGV.join(" ")
	# puts mary_arg.to_s
	mary = File.open('messages.yaml', 'r+')
	temp_hash = YAML::load(mary)

	temp_hash.each do |person, messages|
		if (person == "Mary")
			messages.push(mary_arg)
		end
	end
	# puts temp_hash
	mary.rewind
	mary.puts YAML::dump(temp_hash)
	mary.close
end