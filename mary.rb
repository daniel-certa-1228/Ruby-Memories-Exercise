require "yaml"

class Mary

	def self.message_cycle
		begin
			mary_arg = ARGV
			# Checks to see if an arguemt has been passed
			if mary_arg.empty?
				raise ArgumentError, "You must pass an argument to post a message."
			end #end check

			mary_arg = mary_arg.join(" ")
			# puts mary_arg.to_s
			mary = File.open('messages.yaml', 'r+')
			temp_hash = YAML::load(mary)

			mary_array = temp_hash.fetch('Mary')
			mary_array.push(mary_arg)

			mary.rewind
			mary.puts YAML::dump(temp_hash)
			mary.close
			#rescue for ArgumentError
			rescue ArgumentError => e
				puts "#{e.message}"
			rescue KeyError => e
				puts "#{e.message}"
		end
	end
	self.message_cycle
end