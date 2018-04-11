module Learn where

x = 10 * 5 + y

myResult = x * 5

y = 10


{- Exercise: Heal the Sick 

    1. let area x = 3. 14 * (x * x)

    Answer: The problem with this one is that there is a space
            between 3. and 14 causing a compiler error. Removing
            the space would fix the error: let area x = 3.14 * (x * x)

    2.  let double x = b * 2

    Answer: b is undeclared, either as a paramenter or in the function
            body. The solution depends on what the problem is, in this
            case, I am going to assume that b was meant to be x. You
            can either turn x into b or b into x. let double x = x * 2

    3. x = 7
        y = 10
       f = x + y

    Answer: The problem here is that y has an initial preceding whitespace
            than x does. White space matters in Haskell and is determined
            by the first line in the module. If x also had a preceding 
            whitespace than it would be ok (although it would still fail at
            f). The solution is to remove the preceding white space:
            
            x = 7
            y = 10
            f = x + y

-}