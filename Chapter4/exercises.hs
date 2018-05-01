module DataTypeExercises where


--Required for the exercsies
awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

--Exercises Part 1
{-
  1. Given the definition of length above, what would the type 
  signature be?How many arguments, of what type does it take? What
  is the type of the result it evaluates to?

  Answer: length :: [a] -> Int

  2. What are the results of the following expressions?

    a) length [1, 2, 3, 4, 5]

    Answer: 5

    b) length [(1, 2), (2, 3), (3, 4)]

    Answer: 3

    c) length allAwesome

    Answer: 2

    d) length (concat allAwesome)

    Answer: 5

  3.Given what we know about numeric types and the type signature
  of length, look at these two expressions. One works and one
  returns an error. Determine which will return an error and why.
  (n.b., you will find Foldable t => t a representing [a], as with
  concat in the previous chapter. Again, consider Foldable t to
  represent a list here, even though list is only one of the possible
  types.)

    Prelude> 6 / 3
    -- and
    Prelude> 6 / length [1, 2, 3]

  Answer: Almost certainly the second one. I am assuming it is because
  / takes two arguements and it mistakes length [1,2,3] as two arguements.

  4. How can you fix the broken code from the preceding exercise
  using a different division function/operator?
  
  Answer: wrap length [1,2,3] in parens

  5. What is the type of the expression 2 + 3 == 5? What would we
  expect as a result?

  Answer: The type of the expression would be Bool
          and the result would be True
  
  6. What is the type and expected result value of the following:

       Prelude> let x = 5
       Prelude> x + 3 == 5
  
  Answer: The type of the expression would be Bool
          and the result would be False

  7. Below are some bits of code. Which will work? Why or why
    not? If they will work, what value would these reduce to?

      Prelude> length allAwesome == 2

      Answer: Yes it will work. The length of allAwesome will
              return an Int will allow for an equality check. The result
              is True

      Prelude> length [1, 'a', 3, 'b']

      Answer: No, this will not work. A list needs to have all
              elements of the same type. This list containts Ints
              and Characters.

      Prelude> length allAwesome + length awesome

      Answer: This will work. length returns an Int, with both lists
              calling Int, the + function works. It returns 5.
              
      Prelude> (8 == 8) && ('b' < 'a')

      Answer: This will work. The equality function and the less than
              function both have two arguemetns taht are of the same
              type. They also both evaluate to a Bool so the && function
              can also evaluate them. It will return False.

      Prelude> (8 == 8) && 9

      Answer: This will produce and error. The && function requires two
              Bool arguements. While 8 == 8 reduces to a Bool, 9 reduces
              to 9, in other words, an Int.
-}