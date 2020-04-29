# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)

require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)
@store3.destroy

puts "===========>Store 3 should have been deleted. There are now: #{Store.count} stores in the DB"

# Run in terminal with 'bundle exec ruby exercises/exercise_3.rb'
