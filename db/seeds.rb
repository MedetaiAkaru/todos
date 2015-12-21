require 'faker'
require_relative '../app/models/task.rb'

5.times {
Task.add(Faker::Lorem.sentence, false)
}