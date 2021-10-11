module Ex where

awesome :: [[Char]]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [[Char]]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[[Char]]]

allAwesome = [awesome, alsoAwesome]


-- length :: Foldable t => t a -> Int

-- length :: [a] -> Int
-- length :: [x:xs] -> Int

x :: Int
x = length [1, 2]


-- isPalindrome :: ()


isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs = abs

myAbs2 :: (Ord a, Num a) => a -> a
myAbs2 x = if x > 0 then x else negate x


-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f  (a, b)  (c, d) = ((b, d), (a, c))

f xs = w
  where w = length xs

