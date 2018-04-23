module MoodExercise where

-- Mood Exercises
data Mood = Blah | Woot deriving Show

-- 1. What is the type constructor, or name of this type?
-- Answer: Mood

-- 2. If the function requires a Mood value, what are the values you
-- could possibly use?
-- Answer: Blah or Mood

{-
   3. We are trying to write a function changeMood to change Chris’s
   mood instantaneously. It should act like not in that, given one
   value, it returns the other value of the same type. So far, we’ve
   written a type signature changeMood :: Mood -> Woot. What’s wrong
   with that?
   Answer: It means that no matter the input, Woot will be the returned result
           to work correctly it should return a Mood result
-}

-- Exercise 4
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah


--Boolean Exercises
{-
  1. not True && true
  Answer: The second "true" wasn't capitalized. 
          Solution: not True && True

  2. not (x = 6)
  Answer: x = 6 is missing a second '=' for doing comparision
          Solution: not (x == 6)

  3. (1 * 2) > 5
  Answer: No fixes needed.

  4. [Merry] > [Happy]
  Answer: I am assume that the solution should be a string rather than
          a list of string so that is why I decided on.
          Solution: "Merry" > "Happy"
  5. [1, 2, 3] ++ "look at me!"
  Answer: These are two different data types. In order for this to work, either [1,2,3] 
          needs to be replaced with a string or "look at me!" needs to be replaced with
          a list of ints. 
-}