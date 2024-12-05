module Functions where

multiply :: Double -> Double -> Double
multiply a b = a*b

factorial :: Int -> Int
factorial 0 = 1
factorial c = c*factorial(c-1)

splitString :: String -> ([Char],[Char])
splitString = splitAt 2



