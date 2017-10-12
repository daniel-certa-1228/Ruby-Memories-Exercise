require "yaml"

class Margaret

	def self.message_cycle
		begin
			margaret_arg = ARGV
			# Checks to see if an arguemt has been passed
			if margaret_arg.empty?
				raise ArgumentError, "You must pass an argument to post a message."
			end #end check

			margaret_arg = margaret_arg.join(" ")

			marge = File.open('messages.yaml', 'r+')
			temp_hash = YAML::load(marge)
			
			marge_array = temp_hash.fetch('Margaret')
			marge_array.push(margaret_arg)

			marge.rewind
			marge.puts YAML::dump(temp_hash)
			marge.close
			#rescue for ArgumentError
			rescue ArgumentError => e
				puts "#{e.message}"
		end
	end
	self.message_cycle
end