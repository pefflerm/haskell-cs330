# Haskell PLP
This repository is for learning Haskell in CS 330 at Simmons University.

Written by Rachel Peffley.
## History
Haskell was written by committee from 1987-1990 to be a purely functional language. At the time there were a number of functional languages, each with little widespread use. Haskell was developed by academics and proponents of functional programming to be a single, widely used functional language.

Haskell is a general purpose language. While its original focus was on academic research of functional programming, today Haskell is used in a wide variety of industries, including fraud detection and supply chain management.

Besides being a purely functional language, the other main features of Haskell are its type inference, lazy evaluation, and static type system.

## Getting Started
### Installation
To install Haskell run the following commands as a non-administrative user.

**Linux and macOS**

In the terminal type ```curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh```

**Windows**

In the PowerShell type ```Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }```

These commands will install the Haskell Toolchain which includes the Glasgow Haskell Compiler (GHC), the haskell-language-server (HLS), cabal-install, and stack.

With HSL, Haskell is supported in a number of text editors including VS Code, NeoVim, and Kate. For this project, I will be using VS Code as it is what I'm most familiar with and has several Haskell extensions.

### Hello World
The following code is the simplest way to write a "Hello World" program.

```
module HelloWorld where

sayHello::String
sayHello = "Hello World"
```

This code can be run two different ways. The first is to open a command prompt window and navigate to the directory containing the file. Run the command `ghci`. Once the interpreter is running, type `:l HelloWorld` at the prompt. The HelloWorld module will be loaded. From there, type `sayHello` and hit enter. The function will return the string "Hello World".

The second way to run this code is to open the folder that contains the file in VS Code. Inside the terminal type `runghc ./HelloWorld` and hit enter. The program will compile and print "Hello World" to the screen.
#### Comments
Single line comments are denoted by double hyphens. Ex. `--lcv`

Multi-line comments are enclosed in curly braces and two hyphens. Ex. `{-lcv-}`

## Names, Types, and Binding
### Naming
Haskell is case sensitive. Function names and variables may consist of letters, numbers, and underscores and cannot begin with a number or capital letter. Data types must start with a capital letter. Camel case is strongly preferred over snake case.

The following are keywords and cannot be used as variable or function names.
```
case, class, data, deriving, do,
else, if, import, in, infix, infixl,
infixr, instance, let, of, module,
newtype, then, type, where
```
### Types
All variable types are immutable.

The command `:t` can be used in the interpreter to find the type of any expression.
```
ghci> :t 'A'
'A' :: Char
```

**The most common data types in Haskell are Int, Double, Bool, Char, and String.**
```
x :: Int
x = 4

y :: Double
y = 8.9999
```
The syntax for boolean values is `True` and `False`.
```
bool1 :: Bool
bool1 = True
```
Chars store a single Unicode character. Chars can be written as the character in single quotes `'!'`, the character's decimal code point `'\033'`, or the hexadecimal code point `'\x0021'`.
```
char1 :: Char
char1 = 'A'
```
Strings are stored as lists of Chars.
```
string1 :: String
string1 = "Hello"
```
**Other data types include Integer and Float.**

Int only supports integers between ±536870911, while Integer is unbounded and limited only by the memory of your particular computer.
```
z :: Integer
z = 54000000

f :: Float
f = 9.0
```
**Lists and Tuples**

Lists are written with elements separated by commas and enclosed in brackets. All elements in a list must be of the same type. 
```
--create list of integers
numbers :: [Int]
numbers = [1,2,8,3]

--create list of strings
strings :: [String]
strings = ["Hello", "Hi", "Goodbye"]
```
Tuples are written with elements separated by commas and enclosed in parentheses. Elements in a tuple can be of different types. Tuples can have up to 15 elements, although it is considered bad practice to use tuples beyond pairs or triplets. The zero tuple or empty tuple is a special type of tuple that contains no elements. It is known as a "unit."
```
tuple1 :: (Int, Double, Char)
tuple1 = (7, 8.8, '$')

zeroTuple :: ()
zeroTuple = ()
```
#### Type Classes
Num and Fractional are type classes in Haskell that include several types.
#### Type System
**Haskell is statically typed**

The code below will not compile and will return the error "Multiple declarations of 't'.
```
x::Int
x = 10

x::String
x = "Hello"
```
**Haskell is strongly typed**

None of the examples below will compile.
```
addStrings :: String -> String -> String
addStrings s1 s2 = s1 + s2

addStringNum :: String -> Int -> String
addStringNum s1 n1 = s1 + n1

addIntDouble :: Int -> Double -> Double
addIntDouble integer double = integer + double
```
**Haskell is explictly typed by convention**

The type system of Haskell can infer types, but it is considered good practice to include explicit type signatures. Either version of the function below will run, but the second is the community standard.
```
getSum1 num1 num2 = num1 + num2

getSum2 :: Num a => a -> a -> a
getSum2 num1 num2 = num1 + num2
```
### Operators
#### Arithmatic Operators
The standard arithmatic operators for addition, subtraction, multiplication, and exponentiation are used.
```
5.5 + 11.0  --Output: 16.5
23 - 14  --Output: 9
4 * 8  --Output: 32
2 ^ 4  --Output: 16
```
#### Logical Operators
### Binding

## Functions
The syntax for functions is to write their type signature on one line and the function definition on the line below. 
```
nameOfFunction :: parameter1Type -> parameter2Type -> ... -> parameterNType -> returnType
nameOfFunction parameter1 parameter2 ... parameterN = ...
```
The double colon in the type signature should be read as "has type." The final data type in the type signature is the type of the value that is returned by the function. The preceding N data types are the types of the input parameters.

In the example below the name of the function is "price" and takes in an Int and a Double (named "quantity" and "cost" respectively) as the parameters. The function performs an operation and returns a Double.
```
price :: Int -> Double -> Double
price quantity cost  = fromIntegral quantity * cost
```

Haskell supports recursive functions.
```
factorial :: Int -> Int
factorial 0 = 1
factorial c = c*factorial(c-1)
```
## Sources
[1](https://learning.oreilly.com/library/view/soar-with-haskell/9781805128458/) Soar With Haskell by Tom Schrijvers

[2](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/07/history.pdf?from=https://research.microsoft.com/~simonpj/papers/history-of-haskell/history.pdf&type=exact) A History of Haskell: Being Lazy With Class

[3](https://wiki.haskell.org/Programming_guidelines) Programming Guidelines HaskellWiki

[4](https://www.seas.upenn.edu/~cis1940/spring13/lectures.html) CS 194: Introduction to Haskell at University of Pennsylvania

[5](https://learning.oreilly.com/library/view/practical-haskell-a/9781484285817/) Practical Haskell: A Real-World Guide to Functional Programmin by Alejandro Serrano Mena

[6](https://www.haskell.org/tutorial/index.html) A Gentle Introduction to Haskell by Paul Hudak, John Peterson, and Joseph Fasel

[7](https://hackage.haskell.org/package/CheatSheet-1.5/src/CheatSheet.pdf) Haskell Cheat Sheet by Justin Bailey

[8](https://www.haskell.org/ghcup/install/) Haskell Toolchain Installation

[9](https://youtube.com/playlist?list=PLMWwct3_kb-2xtOziG1gQYMVr691GadR4&feature=shared) Introduction to Functional Programming with Haskell Course
