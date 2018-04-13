module TopOrLocal where

topLevelFunction :: Integer -> Integer
topLevelFunction x =
    x + woot + topLevelValue
    where woot :: Integer
          woot = 10

topLevelValue :: Integer
topLevelValue = 5


--Scope Exercises
{-
    1. These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
            Prelude> let x = 5
            Prelude> let y = 7
            Prelude> let z = x * y
    Answer: Yes. x and why were declared at the same level as z so they are both in scope.

    2. These lines of code are from a REPL session. Is h in scope for
    g? Go with your gut here.
            Prelude> let f = 3
            Prelude> let g = 6 * f + h
    Answer: No. h is nowhere to be found, so it is almost certainly not in scope.

    3. This code sample is from a source file. Is everything we need
    to execute area in scope?
            area d = pi * (r * r)
            r = d / 2
    Answer: No. d is local to the scope of inside area, while r is attempting
            to invoke it from inside it's own scope with is outside of d's.

    4. This code is also from a source file. Now are r and d in scope
    for area?
            area d = pi * (r * r)
                where r = d / 2
    Answer: Yes. r is now local to area's scope, as is d. This allows them to
            reference each other without issue.
-}

--Syntax Errors Exercise
{-
    Read the syntax of the following functions and decide whether it
    will compile. Test them in your REPL and try to fix the syntax errors
    where they occur.

    1. ++ [1,2,3] [4,5,6]
    Answer: Will not compile. ++ is a infix method, which means that it needs to go 
            between both arugments. It can be used in prefix form, however, by wrapping
            it up in parens.
    2. '<3' ++ ' Haskell'
    Answer: This also will not compile. Single quotes can only be used for type Char, which
            are only one single character. To fix this issue, replace all of the single quotes
            with double quotes.
    3. concat ["<3", " Haskell"]
    Answer: This will compile. concat takes a list of list a and in this case the arguments provided
            are a list of String which is just syntaxtic sugar for a list of Char.

-}