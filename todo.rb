require_relative 'config/application'
require_relative 'app/models/task.rb'

input = ARGV[1..-1]

case ARGV[0]
when "list"
	Task.list
when "add"
	Task.add(input.join(" "),false)
when "delete"
	Task.delete_this(ARGV[1].to_i)
when "complete"
	Task.complete(ARGV[1].to_i)
when "list_complete"
	Task.list_complete
when "add_faker"
	Task.add(Faker::Lorem.sentence, false)
else
	puts "commands available:"
	puts "list"
	puts "add (note)"
	puts "delete (number)"
	puts "complete (number)"	
	puts "list_complete"
	puts "add_faker (testing method)"
end