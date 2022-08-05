-- Single line comment
{-
Multi line comment
-}

-- Functional, lazy evaluated, statically typed language

-- Imports
import Data.List -- List module

-- Types
-- Bool, Int (bounded), Integer (unbounded), Float, Double, Char, [Char]
-- Tuple (2,3)
-- List [1,2,3]

-- Bool
trueFalse = True && False
falseOrTrue = True || False
notTrue = not True -- Also not(True) works

-- Int
maxInt = maxBound :: Int -- Max int value
minInt = minBound :: Int -- Min int value

numThirteen = 13 -- Integer (inferred)
numEighty = 80 :: Integer -- Integer literal (explicit)
numThirteen' = 13 :: Float
boolThirteen = 13 < 13

-- Float and Double (defaults to Double)
float = 1.0 + 1 :: Float -- Float literal
double = 1.0 :: Double -- Double literal

-- Char
-- Single character - Unicode
a = 'a' -- Char literal

-- String - Unicode
-- Double quotes
hello = "Hello" -- String literal
hello' = ['H','e','l','l','o'] -- String literal

-- Basic operators
-- Arithmetic
addition = 5 + 3 -- Addition
subtraction = 5 - 3 -- Subtraction
multiplication = 5 * 3 -- Multiplication
division = 5 / 3 -- Division
modulus = mod 5 3 -- Modulus (Prefix)
modulus' = 5 `mod` 3 -- Modulus (Infix)

negative = 5 + (-3) -- Negative number must be enclosed in parentheses

-- Other maths functions
-- pi
-- exp
-- log
-- sin
-- cos
-- tan
-- asin
-- acos
-- atan

-- Truncate
truncateIt = truncate 1.49

-- Round
roundIt = round 1.5

-- Ceiling
ceilingIt = ceiling 1.5

-- Floor
floorIt = floor 1.5


five = 5 :: Integer
five' = 5 :: Float
-- square = sqrt five -- Compiler error
square = sqrt 5 -- Correct type

-- Lists
list = [1,2,3,4,5] -- List literal
range = [1..20] -- List of numbers from 1 to 20
even' = [2,4..20] -- List of even numbers from 2 to 20
odd' = [1,3..20] -- List of odd numbers from 1 to 20
listOfLists = [[1,2,3,4],[5,6,7,8]] -- List of lists
charList = ['a'..'z'] -- List of characters
charList' = ['A'..'Z'] -- List of uppercase characters
charListOdd = ['a', 'c'..'z'] -- List of odd characters

sumNumList = sum [1..1000] -- Sum of 1 to 1000
sumNumList' = sum list
productNumList = product [1..5] -- Product of 1 to 5

elemList = elem 3 list -- True if 3 is in the list

numList1 = [1,2,3,4,5]
numList2 = [6,7,8,9,10]
combinedList  = numList1 ++ numList2 -- Concatenate lists
combinedList2 = [numList1, numList2] -- List of lists

-- Max and Min
maxList = maximum numList1 -- Maximum value in list
minList = minimum numList1 -- Minimum value in list

-- ZipWith (+)
-- 1+6, 2+7, 3+8, 4+9, 5+10
zipList = zipWith (+) [1,2,3,4,5] [6,7,8,9,10] -- Zip lists together

-- Infinite lists
infiniteList = [1..] -- Infinite list of integers starting at 1

infiniteList' = [1,2..] -- Infinite list of integers starting at 1

takeEven = take 10 infiniteList' -- Take first 10 elements of infinite list

infiniteEight = repeat 8 -- Repeat 8 infinitely
replicateSix = replicate 6 8 -- Replicate 6 8s

cycleList = cycle [1,2,3]-- Cycle list infinitely
takeCycle = take 10 (cycle [1,2,3]) -- Take first 10 elements of cycle list
takeCycle' = take 10 $ cycle [1,2,3] -- Take first 10 elements of cycle list
dropFive = drop 5 combinedList -- Drop first 5 elements of infinite list
filterList = filter (>5) combinedList -- Filter list to only elements greater than 5
whileList = takeWhile (<=100) infiniteList -- Take elements of infinite list until 100


-- Map (performs function on each element of list)
mapList = map (*2) [1,2,3,4,5] -- Map function

-- Sort
unsortedList = [3,2,1,4,5,6,7,8,9,10]
sortedList = sort unsortedList -- Sort list

head' = head infiniteList -- Head of infinite list
tail' = tail combinedList -- Tail of combined list (ever but first element)
init' = init combinedList -- Init of combined list (ever but last element)
last' = last combinedList -- Last element of combined list

-- Foldr and foldl
-- foldr (right to left)
-- foldl (left to right)
multiList = foldr (*) 1 [1,2,3,4,5] -- Multiply each element of list by 1

-- Concatenate lists
concatList = 1 : []
concatList' = 1 : 2 : 3 : []

-- 13334 : combinedList

-- Infinite list of fibonacci numbers
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci) -- Fibonacci sequence


listFunc = [x * y | x <- [1..5], y <- [1..5]] -- List of products of 1 to 5
listFunc' = [x * y | x <- [1..5], y <- [1..5], x * y `mod` 3 == 0] -- List of products of 1 to 5 that are divisible by 3

-- Tuples
user = ("Az", 19) -- Tuple
getName = fst user -- Get first element of tuple
getAge = snd user -- Get second element of tuple

names = ["Az", "Osky", "Red", "Miles"]
ages = [19, 19, 21, 18]
tupleOfAgeAndName = zip names ages -- Zip lists together

-- Functions
add a b = a + b -- Function with two parameters
multiply a b = a * b -- Function with two parameters
divide a b = a / b -- Function with two parameters
subtract a b = a - b -- Function with two parameters

test_math a b c = add (add a b) c

-- -- Entry point - hello world
-- text = "Hello, World!"
-- main = do
--     print text -- Prints text to console

-- Entry point - IO
text = "Hello, World!"
main = do
    putStrLn "Enter your age" -- Prints text to console with newline
    age <- getLine -- Gets input from user
    putStrLn "Enter your name" -- Prints text to console with newline
    name <- getLine -- Gets input from user
    putStrLn ("Hello, " ++ name ++ ", you are " ++ age ++ " years old.") -- Prints text to console with newline
