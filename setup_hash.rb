require "yaml"

message_hash =  {
    "Mary" => ["Hi, I'm Mary", "I like jet planes"],
    "Margaret" => ["Hi, I'm Margaret", "I like cookies"]
}
# puts message_hash
dump = File.open('messages.yaml', 'w+')
dump.puts YAML::dump(message_hash)
dump.close