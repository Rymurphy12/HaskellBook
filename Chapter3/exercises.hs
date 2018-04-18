module Exercises3 where

{- Reading Syntax Exercises

    1.For the following lines of code, read the syntax carefully and
    decide if they are written correctly. Test them in your REPL
    after you’ve decided to check your work. Correct as many as
    you can.

        a) concat [[1,2,3], [4,5,6]]
        Answer: This should work. Concat takes a list of lists of a
                generic type 'a' and the input above statisfies that
                requirement
        b) ++ [1,2,3] [4,5,6]
        Answer: Will not compile. ++ is a infix method, which means that it needs to go 
            between both arugments. It can be used in prefix form, however, by wrapping
            it up in parens.
        c) (++) "hello" " world"
        Answer: This will compile. ++ is wrapped in parens so it shouldn't have a problem
                with being in prefix form.
        d) ["hello" ++ " world]
        Answer: Does not compile. World is missing a close double quote adter d
        e) 4 !! "hello"
        Answer: Does not compile. The arguements need to be flipped.
        f) (!!) "hello" 4
        Answer: Does Compile. See c) for explaination
        g) take "4 lovely"
        Answer: Does not compie. 4 needs to be out sound of and before the quote marks
        h) take 3 "awesome"
        Answer: Does compile.

    2. Next we have two sets: the first set is lines of code and the other
    is a set of results. Read the code and figure out which results
    came from which lines of code. Be sure to test them in the
    REPL.

        a) concat [[1 * 6], [2 * 6], [3 * 6]]
        Answer: d) [6,12,18]

        b) "rain" ++ drop 2 "elbow"
        Answer: c) "rainbow"

        c) 10 * head [1, 2, 3]
        Answer: e) 10

        d) (take 3 "Julie") ++ (tail "yes")
        Answer: a) "Jules"

        e) concat [tail [1, 2, 3],
                   tail [4, 5, 6],
                   tail [7, 8, 9]]
        Answer: b) [2,3,5,6,8,9]

-}

--Building Functions Exercises
{-
 1. a) Given
      "Curry is awesome"
       Return
      "Curry is awesome!"
  Answer: "Curry is awesome" ++ "!"

 1. b) Given
      "Curry is awesome!"
       Return
      "y"
  Answer: head (drop 4 "Curry is awesome!") 

 1. c) Given
      "Curry is awesome!"
       Return
      "awesome!"
  Answer: drop 9 "Curry is awesome!"
-}

{-
 2. a) Given
      "Curry is awesome"
       Return
      "Curry is awesome!"
-}

addExclam :: String -> String
addExclam x = x ++ "!"

{-
 2. b) Given
      "Curry is awesome!"
       Return
      "y"
-}

drop4TakeHead :: String -> Char
drop4TakeHead x = head (drop 4 x) 

{-
 2. c) Given
      "Curry is awesome!"
       Return
      "awesome!"
-}
dropNine :: String -> String
dropNine x = drop 9 x

-- Exercise 3
thirdLetter :: String -> Char
thirdLetter x = x !! 2

-- Exercise 4
letterIndex :: Int -> Char
letterIndex x = "Curry is Awesome!" !! x

-- Exercise 5
rvrs :: String
rvrs = reversedString
    where initialString = "Curry is Awesome"
          curryString = take 5 initialString
          isString = take 4 (drop 5 initialString)
          awesomeString = drop 9 initialString
          reversedString = awesomeString ++ isString ++ curryString

--Exercise 6
rvrs2 :: String -> String
rvrs2 x = reversedString
    where firstWord = take 5 x
          secondWord = take 4 $ drop 5 x
          thirdWord = drop 9 x
          reversedString = thirdWord ++ secondWord ++ firstWord

main :: IO ()
main = print $ rvrs2 "Curry is Awesome"