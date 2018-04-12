module Exercises where

--Parentesization Exercises

--1. 2 + 2 * 3 - 3
paren1 = 2 + (2 * 3) -1

--2. (^) 10 $ 1 + 1
paren2 = ((^) 10) $ 1 + 1
-- I chose to parentesize (^) and 10 because the $ explicitly 
-- allows everything to the right of it to be implicitly parentesized.

--3. 2 ^ 2 * 4 ^ 4 + 1
paren3 = (2 ^ 2) * (4 ^ 4) + 1
--Also could be (2 ^ 2 * 4 ^ 4) + 1

--Equivalent Expressions Exercises
{-
    1. 1 + 1 and 2
    Answer: Same

    2. 10 ^ 2 and 10 + 9 * 10
    Answer: Same (100)

    3. 400 - 37 and (-) 37 400
    Answer: Different (363 and -363)

    4. 100 `div` 3 and 100 /3
    Answer: Different (Fractional and Integral Division; 33 and 33.333333333333336)

    5. 2 * 5 + 18 and 2 * (5 + 18)
    Answer: Different (The parens force different precedence; 28 and 46)
-}

--More Fun With Functions Exercises

--How it is written in file
z = 7

x = y ^ 2

waxOn = x * 5

y = z + 8

{- In Order to get it to work in a REPL, y needs to be moved to immediately after z

    z = 7

    y = z + 8

    x = y ^ 2

    waxOn = x * 5

    1. 10 + waxOn
       Answer: 1135

       (+10) waxOn
       Answer: 1135

       (-) 15 waxOn
       Answer: -1110

       (-) waxOn 15
       Answer: 1110

    3. Since waxOn is the value 1125, the result will be 3 * 1125 or 3375

-}

--Functions Exercise 4
waxOnExp = x * 5
    where z = 7
          x = y ^ 2
          y = z + 8

--Functions Exercise 5
triple x = x * 3

--Functions Exercise 6
waxOff x = triple x
