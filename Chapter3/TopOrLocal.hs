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