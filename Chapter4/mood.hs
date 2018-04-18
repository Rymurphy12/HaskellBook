module MoodExercise where

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

