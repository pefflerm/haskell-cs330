import Data.Ratio

--common data types
x :: Int
x = 4

y :: Double
y = 8.9999

bool1 :: Bool
bool1 = True

char1 :: Char
char1 = 'A'

string1 :: String
string1 = "Hello"

--create list of integers
numbers :: [Int]
numbers = [1,2,8,3]

--create list of strings
strings :: [String]
strings = ["Hello", "Hi", "Goodbye"]


--other data types
z :: Integer
z = 54000000

r :: Ratio Integer
r = 9%4

f :: Float
f = 9.0


--statically typed
{-t::Int
t = 10
t::String
t = "Hello"
    this code will not compile and will return the error "Multiple declarations of 't'"-}

--strongly typed
{-addStrings :: String -> String -> String
addStrings s1 s2 = s1 + s2
    this code will not compile-}
{-addStringNum :: String -> Int -> String
addStringNum s1 n1 = s1 + n1
    this code will not compile-}
{-addIntDouble :: Int -> Double -> Double
addIntDouble integer double = integer + double
    this code will not compile-}

--explicitly typed by convention
{-getSum num1 num2 = num1 + num2
    the above code will run but the preferred way to write this function is shown below-}
getSum :: Num a => a -> a -> a
getSum num1 num2 = num1 + num2








