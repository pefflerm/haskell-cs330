# Haskell PLP
This repository is for learning Haskell in CS 330 at Simmons University.

Written by Rachel Peffley.
## History
Haskell was written by committee from 1987-1990 to be a purely functional language. At the time there were a number of functional languages, each with little widespread use. Haskell was developed by academics and proponents of functional programming to be a single, widely used functional language.

## Getting Started
### Installation
#### Hello World
#### Comments
Single line comments are denoted by double hyphens "--lcv"

Multi-line comments are enclosed in curly braces and a single hyphen "{-lcv-}"

## Names, Types, and Binding
### Naming
Haskell is case sensitive. Function names and variables must consist of letters, numbers, and underscores and cannot begin with a number. Data types must start with a capital letter. Camel case is strongly preferred over snake case.
### Types
All variable types are immutable.

```
x :: Int
x = 4

z :: Double
z = 8.9999

bool1 :: Bool
bool1 = True

char1 :: Char
char1 = 'A'

string1 :: String
string1 = "Hello"

--create list of integers--
numbers :: [Int]
numbers = [1,2,8,3]
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
