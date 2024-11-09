# Haskell PLP
This repository is for learning Haskell in CS 330 at Simmons University.

Written by Rachel Peffley.
## History
Haskell was written by committee from 1987-1990 to be a purely functional language. At the time there were a number of functional languages, each with little widespread use. Haskell was developed by academics and proponents of functional programming to be a single, widely used functional language.

## Getting Started
### Installation
#### Hello World
The following code is the simplest way to write a "Hello world" program.

```
module HelloWorld where

main :: IO ()

main = do
    putStrLn "Hello World"
```

This code can be run two different ways. The first is to open a command prompt window and navigate to the directory containing the file. Run the command `ghci`. Once the interpreter is running, type `:l HelloWorld` at the prompt. The HelloWorld module will be loaded. From there, type `main` and the main function will run, printing "Hello World" to the screen.

The second way to run this code is to open the folder that contains the file in VS Code. Inside the terminal type `runghc ./HelloWorld` and hit enter. The program will compile and print "Hello World" to the screen.
#### Comments
Single line comments are denoted by double hyphens "--lcv"

Multi-line comments are enclosed in curly braces and a single hyphen "{-lcv-}"

## Names, Types, and Binding
### Naming
Haskell is case sensitive. Function names and variables may consist of letters, numbers, and underscores and cannot begin with a number. Data types must start with a capital letter. Camel case is strongly preferred over snake case.
### Types
All variable types are immutable.

The command `:t` can be used in the interpreter to find the type of any expression.
```
ghci> x = 'A'
ghci> :t x
x :: Char
```

The following code demonstrates some of the most common data types in Haskell.
```
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
```
#### Haskell is statically typed
```
x::Int
x = 10

x::String
x = "Hello"
--this code will not compile
```
#### Haskell is strongly typed
#### Haskell is explictly typed
### Operators
### Binding

## Functions

## Sources
[1](https://learning.oreilly.com/library/view/soar-with-haskell/9781805128458/) Soar With Haskell by Tom Schrijvers

[2](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/07/history.pdf?from=https://research.microsoft.com/~simonpj/papers/history-of-haskell/history.pdf&type=exact) A History of Haskell: Being Lazy With Class

[3](https://wiki.haskell.org/Programming_guidelines) Programming Guidelines HaskellWiki

[4](https://www.seas.upenn.edu/~cis1940/spring13/lectures.html) CS 194: Introduction to Haskell University of Pennsylvania
