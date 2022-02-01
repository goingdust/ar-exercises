require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_an_apparel_type
  
  def must_carry_an_apparel_type
    if mens_apparel == nil && womens_apparel == nil || !mens_apparel && !womens_apparel
      errors.add("Apparel:", "must carry at least one type")
    end
  end
end

puts "Please enter a store name: "
@store_name = gets.chomp

store7 = Store.create(name: "#{@store_name}", mens_apparel: false, womens_apparel: false)
puts store7.errors.full_messages