puts "Hello"
print "World"
puts "!"

# Comment

=begin
Multiline comment
=end

name = "John"
age = 30
gpa = 3.9
is_tall = true

puts "Your name is #{name}"
puts "Your name is " + name

puts 3.14.to_i # to_f to_s to_i

str = "Hello World"
puts str.length
puts str[0]
puts str.include ? "World"
puts str.include ? "world"
puts str[1, 6]

puts 2 * 3
puts 2 + 3
puts 2 - 3
puts 2 / 3
puts 2 % 3
puts 2 ** 3

num = 10
num += 1
puts num

num = -36.8
puts num.abs
puts num.round

# Math
puts Math.sqrt(36)
puts Math.log(0)

# Input
puts "What is your name?"
name = gets.chomp # Remove newline

# Add two numbers together and print the result
puts "What is your first number?"
num1 = gets.chomp.to_f
puts "What is your second number?"
num2 = gets.chomp.to_f
puts "The sum of #{num1} and #{num2} is #{num1 + num2}"

# Arrays
numbers = [1, 2, 3, 4, 5, "uwu"]
puts numbers[0]
puts numbers[-1]

puts "\n\n"
puts numbers[1, 4] # Start at index 1 and get 4 items
puts numbers[1. .4] # Start at index 1 until index 4

grid = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]

puts grid[0][0]
grid[0][0] = "test"
puts grid[0][0]

# Array methods
numbers = []
numbers.push(1)
numbers.push(2)
numbers.push(3)

numbers.reverse
numbers.sort

numbers.include ? "test"
numbers.pop

def add_two_default(num, num2 = 2)
num + num2
end

puts add_two_default(2)
puts add_two_default(2, 3)

if numbers.include ? "test"
puts "test is in the array"
end

age = gets.chomp.to_i
if age < 18
puts "Minor"
elsif stock == 18
puts "Just an adult"
else
  puts "Adult"
end

#if, elseif, else
# and, !, or
# > , < , >= , <= , == , != , String.equals()

grade = "A"
case grade
when "A"
puts "You got an A"
when "B"
puts "You got a B"
when "C"
puts "You got a C"
else
  puts "You got an F"
end

# # Dictionaries
test_scores = {
  "John" => 10,
  : Stanley => "C",
  "Ryan" => "A",
  3 => 95.2
}

puts test_scores["John"] = 10
puts test_scores[: Stanley]
puts test_scores["Ryan"]
puts test_scores[3]

# # Loops
index = 1
while index <= 10
puts index
index += 1
end

for index in 1. .10
puts index
end

5. times do |index |
  puts index
end

nums = [1, 2, 3, 4, 5]
for num in nums
puts num
end

nums.each do |snum |
    puts num
  end

# Exceptions
# num = 10 / 0

begin
num = 10 / 0
rescue ZeroDivisionError => e # don 't need to specify the error type with rescue
puts "Error: #{e}"
end

# raise "This is an error"
# Raise an error

# Classes
class Book
attr_accessor: title,: author

def read
puts "You read #{@title} by #{@author}"
end
end

book1 = Book.new()
book1.title = "Test Book"
book1.author = "Test Author"

book1.read()
puts book1.title

# Constructor
class Book
attr_accessor: title,: author
def initialize(title, author)
@title = title
@author = author
end

def read
puts "You read #{self.title} by #{self.author}"
end
end

book1 = Book.new("Test Book", "Test Author")
book1.read()

# Getters and Setters
class Book
attr_accessor: title,: author
def initialize(title, author)
@title = title
@author = author
end

def title = (new_title)
@title = new_title
end

def author = (new_author)
@author = new_author
end

def title
return @title
end

def author
return @author
end
end

book1 = Book.new("Test Book", "Test Author")

puts book1.title

# Inheritance
class Chef
def cook()
puts "cooks food"
end
def make_special()
puts "Makes special food 2"
end
end

class ExpertChef < Chef # Inheritance
def cook()
puts "cooks food"
end
def make_special()
puts "Makes special food 2"
end
end

#super() to call the parent class - constructor
