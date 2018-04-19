module Lib
    ( someFunc
    ) where


import Data.Char

someFunc :: IO ()
someFunc = putStrLn [chr x | x <- [fromEnum 'ぁ' .. fromEnum 'ん']]
