import Distribution.Fields.LexerMonad (addWarning)

add :: Int  -> Int -> Int
add x y = x + y

addWeird :: Int -> Int -> Int
addWeird x y =
  if x > 1
  then x + y
  else x

check' :: Int  -> Int -> Bool
check' a a' = a == a'




data Foo = F Int | G Char

instance Eq Foo where
  (F i1) == (F i2) = i1 == i2

  (G c1) == (G c2) = c1 == c2

  _ == _ = False
  foo1 /= foo2 = not (foo1 == foo2)