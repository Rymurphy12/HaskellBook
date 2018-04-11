sayHello :: String -> IO ()
sayHello x =
    putStrLn(" Hello, " ++ x ++ "!")

triple x = x * 3

{- 
Ch2  Evaluation Exercise 1

Functions declared in a File:

    half x = x /2

    square x = x * x

Same Functions Declared in REPL, pre-GHCI 8:

    let half x = x /2

    let square x = x * x

In GHCI 8+, the let is optional

-}


--CH2 Evaluation Exercise 2
squaredTimes314 x = 3.14 * (x * x)

--CH2 Evaluation Exercise 3
squaredTimesPi x = pi * (x * x)

{-CH2 Parentheses and Association Exercise 1

    a) 8 + 7 * 9 
    b) (8 + 7) * 9 

    Answer = Yes, in b) the parens cause 8 and 7 to be added together 
             rather than 9 and 7 to be multiplied, thus chaning the
             result.

Exercise 2
    a) perimeter x y = (x * 2) + (y * 2)
    b) perimeter x y = x * 2 + y * 2

    Answer = No difference. Multiplication has a higher precidence than 
             addition and no addition was included in the parents of a).

Exercise 3
    a) f x = x / 2 + 9
    b) f x = x / (2 + 9)

    Answer = Yes, there is a differnece. Divison has a higher precidence
             than addition and by wrapping it in parents, b) cause the
             addition to be performed first. This changes the result.

-}