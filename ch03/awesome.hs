module Awesome where

import Data.List ( elemIndex )
-- import Data.Char
-- import Data.Array.ST (Ix(range, index))

str = "Curry is awesome"

appendChar c = "Curry is awesome" ++ c


findCharIdx c = elemIndex c "Curry is awesome"

thirdLetter word = word !! 2

letterIdx :: Int -> Char
letterIdx num = "Curry is awesome" !! num

rvrs = do
  putStrLn first
  putStrLn second
  putStrLn third
  putStrLn (third ++ " " ++ second ++ " " ++ first)
  where s = "Curry is awesome!"
        first = take 5 s -- curry
        y = drop 6 s -- is awesome
        second = take 2 y -- is
        third = drop 3 y --awesome!
        answer = "b"

-- 61