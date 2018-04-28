-- pattern match example
import Control.Monad

chkCase :: Int -> String
chkCase x = case x of 1 -> "1st"
                      2 -> "2nd"
                      3 -> "3rd"
                      x' -> show x' ++ "th"

main :: IO [()]
main = do
    let xs = [1..10]
    forM xs (print . chkCase)
