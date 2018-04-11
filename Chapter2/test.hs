sayHello :: String -> IO ()
sayHello x =
    putStrLn(" Hello, " ++ x ++ "!")

triple x = x * 3

{- 
Ch2 Exercise 1

Functions declared in a File:

    half x = x /2

    square x = x * x

Same Functions Declared in REPL, pre-GHCI 8:

    let half x = x /2

    let square x = x * x

In GHCI 8+, the let is optional

-}


--CH2 Exercise 2
squaredTimes314 x = 3.14 * (x * x)

--Ch2 Exercise 3
squaredTimesPi x = pi * (x * x)