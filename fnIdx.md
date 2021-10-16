```haskell

`putStrLn`

`putStr`

`elemIndex` -- import Data.List (elemIndex)



`:` -- combine stuff









`!!` -- return elem at idx



```

#### `elem`

Appears to check if element is member of list

```haskell
2 `elem` [1, 3, 4] -- false

2 `elem` [1, 2, 3] -- true
```

#### `zip`

```haskell
zip :: [a] -> [b] -> [(a,b)]
```

### `concat`

```haskell
x = concat ["hello", " ", "Alice"] -- -> "hello Alice"
```

### `head`

Returns first items in a list.

### `product`

product [2, 3, 4] -- > 24

### `sum`

sum [1, 2, 3] -- > 6

### `tail`

Returns list without head.

### `take`

Returns the specified number of elements from the list starting from the left / begining.

```haskell
take 2 [1, 2, 3, 4] -- -> [1, 2]
```

### `drop`

Returns the remainder of the list after the specified number of elements have been dropped.

```haskell
drop 2 [1, 2, 3, 4] -- -> [3, 4]
```

### `swap`

- from: import Data.Tuble
- can be use with tuple.
- Ex: swap (1, 2) --> (2, 1)

### `fromIntegral`

- Takes an Integral type and forces it to implement the `Num` type class. Example:

```Haskell
xs = 6 / length [1, 2, 3] -- error

xs = 6 / fromIntegral [1, 2, 3] -- 2.0
```
