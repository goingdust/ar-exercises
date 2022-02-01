require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Didi", last_name: "Luong", hourly_rate: 30)
@store1.employees.create(first_name: "Bubu", last_name: "Farmlacy", hourly_rate: 65)
@store1.employees.create(first_name: "KD", last_name: "Lang", hourly_rate: 100)

@store2.employees.create(first_name: "Busta", last_name: "Rhymes", hourly_rate: 76)
@store2.employees.create(first_name: "Roger", last_name: "Federer", hourly_rate: 20)
@store2.employees.create(first_name: "Eren", last_name: "Jaeger", hourly_rate: 40)
@store2.employees.create(first_name: "Mikasa", last_name: "Ackerman", hourly_rate: 200)
@store2.employees.create(first_name: "Patrick", last_name: "Star", hourly_rate: 10)
@store2.employees.create(first_name: "Squidward", last_name: "Tentacles", hourly_rate: 80)