data CmdOption = COptInt Integer
               | COptBool Bool
               | COptStr String
               deriving(Show)

main :: IO()
main = putStrLn "foo"
