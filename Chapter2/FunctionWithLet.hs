module FunctionWithLet where

printInc2 n = let plusTwo = n + 2
              in print plusTwo

{- Exercises: A Head in Code

    1. let x = 5 in x
    Answer: returns 5

    2. let x = 5 in x * x
    Answer: returns 25
    
    3. let x = 5; y = 6 in x * y
    Answer: returns 30

    4. let x = 3; y = 1000 in x + 3
    Answer: returns 6

-}