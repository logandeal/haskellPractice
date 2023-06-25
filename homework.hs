{-# LANGUAGE PartialTypeSignatures #-}
import Data.Maybe
import Data.Either
import Text.Printf (errorBadArgument)
-- import Data.Time.Format.ISO8601 (yearFormat)
-- import Distribution.Simple.Test.Log (summarizeSuiteFinish)
-- import Distribution.Compat.Lens (_1)

main :: IO ()
main = return ()

{-

      student: Logan Deal   
      date: 10-31-2022
      pawprint: ledvk2

      HOMEWORK INSTRUCTIONS

      1. READ THE DIRECTIONS CAREFULLY.

      2a. Change "yourPawprint" in the file name to be your
            actual pawprint

      2b. Load the file into ghci on your local machine
            or online at repl.it using
              ":l <yourfilename>.hs"

      3. Work your way down the document, filling in
            code or type signatures where specified.

            You MAY NOT alter type signatures if already
            present. You MAY NOT change the names of the
            functions specified, these will be used for
            automated testing and must achieve the behavior
            specified.

            You MAY write helper functions to assist in
            the logic of your functions.

      4. There are 4 parts to this assignment. As they progress, they will
              progress in difficulty, while building on eachother. It is
              recommended that you use the hints in the comments, along
              with the code from lecture to solve the problems given.

           5A. Part I   - Types     (20 pts)
           5B. Part II  - Lists     (20 pts)
           5C. Part III - Functions (10 pts)
                        - Total     (50 pts)


      EVALUATION CRITERIA

      1. You will be evaluated using automated tests
        that compare your answers to randomly generated
        values that pass tests I write.

      2. Your code must type check. That is, no errors
        can be thrown when I load your file into ghc.
        It is better to define a function as undefined
        than to let it ruin the compiliation.

      3. You will receive +1 point for an attempt that does
          not break the compiler, but is not correct.
         You will receive other partial credit if specified.
         You will receive 0 points for an undefined function.
         You will receive +1 point for a correct type signature
          even if you leave the function undefined. (If you were
          prompted to fill in the type signature)

      4. The point values of each function are specified directly
            above the functions themselves.

      5. Cheating is not tolerated. Refrain from copying code from each other,
            but feel free to use the internet as a resource. If you feel the
            need to directly copy someone's code, please cite it in comments
            using "--" to start a line comment.




-}


------------------------------------------------
--                                            --
--               Part One: Types              --
--                   20 pts                   --
--                                            --
------------------------------------------------
--
-- In Part One, we will explore the haskell typing system.
--
-- For functions 1a to 1h, simply provide a function definition
-- such that each function type-checks correctly in the GHC.
-- You may need to add function parameters to the left side of
-- the '='.     (e.g.,   add x y = x + y)
--
-- You can check for correctness by simply loading this file in GHC
-- using ":l yourPawprint_4450_hw4.hs".

-- 2pts
func_1a :: [[Char]]
func_1a = [['x']]

-- 3pts
func_1b :: Int -> Int
func_1b x = x

-- 3pts
func_1c :: [(String, Int)]
func_1c = [("hello", 1)]

-- 3pts
func1_d :: [a] -> a
func1_d (x:xs) = x

-- 3pts 
func_1e :: a -> [(a,a)]
func_1e a = [(a,a)]

-- 3pts
func_1f :: (a,b) -> (b,a)
func_1f (a,b) = (b,a)

add :: Integer -> Integer -> Integer
add x y = x + y

-- 3pts
func_1g :: (Integer -> Integer -> Integer) -> Integer -> Integer -> Integer
func_1g f = f 

------------------------------------------------
--                                            --
--            Part Two: Lists                 --
--                   20 pts                   --
--                                            --
------------------------------------------------
--
-- In this section, you will experiment with
-- Haskell's  1. Pattern Matching
--            2. List Comprehensions
--            3. List Syntax
--
--
--  LIST CONCATENATION
--          [1,2,3] ++ [2,3,4] = [1,2,3,2,3,4]
--          [1,2,3] ++ [1] = [1,2,3,4]
--
--  LIST PREPENDING
--           1 : [2,3] = [1,2,3]
--
--  LIST APPENDING
--            [2,3] : 2 = WRONG
--            [2,3] ++ [2] = [2,3,2]
--            2 : 3 : 4 : [] = [2,3,4]
--
--  LIST FUNCTIONS
--            head [1,2,3,4] = 1
--            tail [1,2,3,4] = [2,3,4]
--            length [1,2,3,4] = 4
--            [1,2,3,4] !! 0 = 1
--            [1,2,3,4] !! 3 = 4
--            filter (\x -> x > 2) [1,2,3,4,5] = [3,4,5]
--            reverse [2,3,4] = [4,3,2]
--            map reverse ["abc", "def", "ghi"] = ["cba", "fed", "ihg"]
--
--  LIST COMPREHENSIONS
--            [1..3] = [1,2,3]
--            [1,3..13] = [1,3,5,7,9,11,13]
--            [even x | x <- [1..10]] = [2,4,6,8,10]
--
--
--  Use the above functions to achieve the specified goals.
--  For each function write its type signature if not present.


-- Problem 2A. Write a function that takes a list and puts the first two elements
--             at the back of the list, in their original order. For lists of size
--             one, return the original list. For empty lists, return the empty list.
--
--  ex:
--      INPUT: func_2a [1,2,3,4,5]
--      OUTPUT: [3,4,5,1,2]
--      INPUT: func_2a "ceni"
--      OUTPUT: "nice"
--      INPUT: func_2a []
--      OUTPUT: []
--

-- PUT FIRST TWO LIST ELEMENTS AT THE END OF THE LIST
-- 4 pts
func_2a :: [a] -> [a]
func_2a [] = []
func_2a [a] = [a]
func_2a (x:y:xs) = xs ++ [x] ++ [y]






-- Problem 2B. Write a function that returns the second to last item of a list.
--             It should return the singular item of a list of length one and
--             it should throw an error when the empty list is passed to it
--
--  ex:
--      INPUT: func_2b [1,2,3,4,5]
--      OUTPUT: 4
--      INPUT: func_2b "ceni"
--      OUTPUT: 'n'
--      INPUT: func_2b []
--      OUTPUT: "ERROR"
--


-- RETURN THE SECOND-TO-LAST ELEMENT OF THE LIST
-- 4 pts

-- func_2b_success :: [a] -> a 
-- func_2b_success [a] = a
-- func_2b_success (xs) = head (tail (reverse (xs)))

-- func_2b_error :: [a] -> String 
-- func_2b_error [] = "ERROR"

-- func_2b :: [a] -> (_ -> _)
-- func_2b [] = func_2b_error ([])
-- func_2b [a] = func_2b_success ([a])
-- func_2b (xs) = func_2b_success ((xs))

-- func_2b_helper :: [a] -> (String, Maybe a)
-- func_2b_helper [] = ("ERROR", Nothing)
-- func_2b_helper [a] = ("SUCCESS", Just a)
-- func_2b_helper xs = ("SUCCESS", Just (head (tail (reverse xs))))

-- func_2b :: [a] -> _
-- func_2b [] = fst (func_2b_helper ([]))
-- func_2b [a] = snd (func_2b_helper ([a]))
-- func_2b xs = snd (func_2b_helper (xs))

-- type MyResult = Either String 

-- func_2b_print :: MyResult -> IO()
-- func_2b_print (Left stringg) = print stringg
-- func_2b_print (Right wildcardg) = print wildcardg

func_2b :: [a] -> a
func_2b [] = error "ERROR"
func_2b [a] = a
func_2b xs = head (tail (reverse xs))

-- If throwing an error is not allowed
func_2b' :: [a] -> Either String a
func_2b' [] = Left "ERROR"
func_2b' [a] = Right a
func_2b' xs = Right (head (tail (reverse xs)))

-- head [1,2,3] = 1
-- reverse [1,2,3] = [3,2,1]
-- tail [1,2,3] = [2,3]
-- init [1,2,3,4] = [1,2,3]






-- Problem 2C. Write a function that given a value, D,
--             returns a triple of Integers (a,b,c) less than or equal to d such that
--             a^2 + b^2 = c^2 with no repeats (3,4,5) and (4,3,5)
--             should not both be in the list.
--             (i.e., return all pythagorean triads (a,b,c))
--
--  ex:
--      INPUT: func_2c 10
--      OUTPUT: [(3,4,5),(6,8,10)]
--      INPUT: func_2c 15
--      OUTPUT: [(3,4,5),(5,12,13),(6,8,10),(9,12,15)]
--      INPUT: func_2c 3
--      OUTPUT: []
--

-- RETURN PYTHAGOREAN TRIPLES WHERE (a <= b <= c <= d), d is a parameter
-- 4 pts

-- getTriple :: (Integer, Integer) -> (Integer, Integer, Integer)
-- getTriple (0,_) = 

-- func_2c :: Integer -> [(Integer, Integer, Integer)]
-- func_2c num = if num <= 4 
--     then []
--     else test ++ func_2c (num - 1)
--         where test = [3..num-1]

-- isPythagorean :: (Int, Int, Int) -> Bool
-- isPythagorean (a, b, c) = squares
--     where  
--         squares = (a*a) + (b*b) == (c*c)

-- Partially adopted by peterb12 from exercism.org: https://exercism.org/tracks/haskell/exercises/pythagorean-triplet/solutions/peterb12
func_2c :: Integer -> [(Integer, Integer, Integer)]
func_2c c = if c <= 4
    then []
    else func_2c (c-1) ++ [(a, b, c) | 
                            b <- [1..c],
                            a <- [1..b],
                            a^2 + b^2 == c^2]







-- Problem 2D. Write a function that takes an integer, n,
--             some thing, s, and produces a list of n instances of s
--             Fill in the type signature of func_2d.
--
--
--  ex:
--      INPUT: func_2d 10 (-1)
--      OUTPUT: [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
--      INPUT: func_2d -1 50000
--      OUTPUT: []
--      INPUT: func_2d 12 'A'
--      OUTPUT: "AAAAAAAAAAAA"
--
--

-- FOR INTEGER, N, AND THING, S, OF UNKNOWN TYPE, RETURN A LIST OF S REPEATED N TIMES
-- 4 pts
-- func_2d :: ????
func_2d :: Integer -> s -> [s]
func_2d n s = if n < 1 
    then []
    else s : func_2d (n-1) s









-- Problem 2E. Write a function func_3c that
-- takes the elements of a list and triples them.
-- Being given the empty list should return the
-- empty list.
--
--  ex:
--      INPUT: func_2e [2,3,5,6]
--      OUTPUT: [2,2,2,3,3,3,5,5,5,6,6,6]
--      INPUT: func_2e "yeet"
--      OUTPUT: "yyyeeeeeettt"
--      INPUT: func_2e ["one", "two"]
--      OUTPUT : ["one", "one", "one", "two", "two", "two"]

-- FOR SOME LIST OF ELEMENTS, DUPLICATE EACH ELEMENT TWICE IN THE LIST
-- 4 pts
-- func_2e :: ?????
func_2e :: [a] -> [a]
func_2e [] = []
func_2e (x:xs) = x : x : x : func_2e xs
-- func_2e [] = []
-- func_2e (x:xs) = [x, x, x] ++ func_2e (xs)
-- func_2e xs = map (\x -> [x, x, x]) xs









------------------------------------------------
--                                            --
--            Part Three: Functions           --
--                   10 pts                   --
--                                            --
------------------------------------------------

-- Problem 3A. Write a function, func_3b
--          that takes a String, str, and an Integer, n,
--          then performs n rotations right on str. It should
--          return the string "error" if a number below
--          0 is passed to the function. Uncomment and
--          fill in the type signature as well.
--
-- Helpful Hint:
-- Recall the representation of Strings in Haskell.
--
--  ex:
--      INPUT: func_3b "haskell" 3
--      OUTPUT: "ellhask"
--  ex:
--      INPUT: func_3b "haskell" (-3)
--      OUTPUT: "error"
--


--   IMPLEMENT A FUNCTION THAT ROTATES STRINGS RIGHT  --
--       10 pts (-1 for not handling negatives)        --

func_3b_recursive :: [Char] -> Integer -> [Char]
func_3b_recursive xs n = if n == 0 
    then xs
    else func_3b_recursive (last xs : init xs) (n-1)

-- func_3b :: String -> Integer -> String
func_3b :: [Char] -> Integer -> [Char]
func_3b [a] n = [a]
func_3b xs n = if n < 0 
    then "error"
    else func_3b_recursive xs n


