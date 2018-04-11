module Practice where

{- Exercises: A Head in Code Part 1

    1. let x = 5 in x
    Answer: returns 5

    2. let x = 5 in x * x
    Answer: returns 25
    
    3. let x = 5; y = 6 in x * y
    Answer: returns 30

    4. let x = 3; y = 1000 in x + 3
    Answer: returns 6

-}

--Exercises: A Head in Code Part 2

--Number 1
inFile1 = x
    where x = 5

--Number 2
inFile2 = x * x
    where x = 5

--Number 3
inFile3 = x * y
    where x = 5
          y = 6

--Number 4
inFile4 = x + 3
    where x = 3
          y = 1000

--Exercises: A Head in Code Part 3

--Number 1
--let x = 3; y = 1000 in x * 3 + y
multi1 = x * 3 + y
    where x = 3
          y = 1000

--Number 2
--let y = 10; x = 10 * 5 + y in x * 5
multi2 = x * 5
    where y = 10
          x = 10 * 5 + y

--Number 3
{-
let x = 7
    y = negate x
    z = y * 10
in z / x + y
-}
multi3 = z / x + y
    where x = 7
          y = negate x
          z = y * 10
