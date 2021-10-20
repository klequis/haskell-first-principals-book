
-- # 1
data TisAnInteger =
  TisAn Integer
  deriving Show

instance Eq TisAnInteger where
  (TisAn a) == (TisAn b) = a == b

-- # 2
data TwoIntegers =
  Two Integer Integer
  deriving Show

instance Eq TwoIntegers where
  --(Two a b) == (Two c d) = a == c && b == d
  (==) (Two a b) (Two c d) = a == c && b ==d

-- # 3
data StringOrInt =
  TisAnInt Int
  | TisAString String
  deriving Show

instance Eq StringOrInt where
  -- (TisAnInt a) == (TisAnInt b) = a == b
  (==) (TisAnInt a) (TisAnInt b) = a == b
  -- (TisAString a) == (TisAString b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  -- _ == _ = False
  (==) _ _ = False

-- # 4
data Pair a =
  Pair a a
  deriving Show

instance Eq a => Eq (Pair a) where
  (Pair a b) == (Pair c d) = a == c && b == d

-- # 5
data Tuple a b =
  Tuple a b
  deriving Show

instance (Eq a, Eq b) => Eq (Tuple a b) where
       (Tuple a b) == (Tuple c d) = a == c && b == d

-- # 6
data Which a =
  ThisOne a
  | ThatOne a
  deriving Show

instance Eq a => Eq (Which a) where
  (ThisOne a) == (ThisOne b) = a == b
  (ThatOne a) == (ThatOne b) = a == b
  _ == _ = False

-- # 7
data EitherOr a b =
  Hello a
  | Goodbye b
  deriving Show

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (Hello a) == (Hello b) = a == b
  (Goodbye a) == (Goodbye b) = a == b
  _ == _ = False