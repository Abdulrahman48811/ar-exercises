require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {:greater_than_or_equal_to => 40, :less_than_or_equal_to => 200 }
  validates :store_id, presence: true
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ji", last_name: "lous", hourly_rate: 50)
@store1.employees.create(first_name: "Shay", last_name: "Ray", hourly_rate: 60)

@store2.employees.create(first_name: "Jim", last_name: "Bob", hourly_rate: 60)
@store2.employees.create(first_name: "Abdul", last_name: "Mo", hourly_rate: 60)
@store2.employees.create(first_name: "Duray", last_name: "Adde", hourly_rate: 60)