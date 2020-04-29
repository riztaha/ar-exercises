# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
puts "Stores that carry only men's apparel:"
@mens_stores.each { |store| puts "Name: #{store.name}, Revenue: #{store.annual_revenue}" }

@womens_stores_under_1m = Store.where(womens_apparel: true, mens_apparel: false, annual_revenue: 0..1000000)
puts "Stores that carry only women's apparel with revenue <1m:"
@womens_stores_under_1m.each { |store| puts "Name: #{store.name}, Revenue: #{store.annual_revenue}" }

# Run in terminal with 'bundle exec ruby exercises/exercise_4.rb'
