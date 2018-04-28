-- record
data Employee = NewEmployee { employeeAge :: Integer
                            , employeeIsManager :: Bool
                            , employeeName :: String
                            } deriving(Show)

employee :: Employee
employee = NewEmployee { employeeName = "515hikaru"
                       , employeeAge = 25
                       , employeeIsManager = False
                       }

main :: IO()
main = print employee
