-- FizzBuzz
import Control.Monad

fizzBuzz :: Int -> String
fizzBuzz x = case x of n | n `mod` 15 == 0 -> "FizzBuzz"
                         | n `mod` 5 == 0 -> "Buzz"
                         | n `mod` 3 == 0 -> "Fizz"
                         | otherwise -> show n

doFizzBuzz :: [Int] -> [String]
doFizzBuzz = map fizzBuzz

main :: IO[()]
main = forM (doFizzBuzz [1..100]) putStrLn 
