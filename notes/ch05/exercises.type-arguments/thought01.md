```Haskell
u = undefined

kessel :: (Ord a, Num b) => a -> b -> a; kessel = u

vessel :: (Ord a, Num b) => a -> b -> b; vessel = u
```

Tests
| fn | 1 2 | "ca" 1 | "ca" | 1 |
|--------|-------------------|------------|-------------------------|---------------------------------|
| kessel | (Ord a, Num a) => a | [ Char ] | Num b => b -> [ Char ] | (Ord a, Num b, Num a) => b -> a |
| vessel | Num b => b | Num b => b | Num b => b -> b | Num b => b -> b |

--- yesterday
I'm working on an exercise from Haskell First Pricapals and not understanding the following.

I have the type

```Haskell
kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
```

And

```
> :t kessel 1 2
```

gives: `kessel 1 2 :: (Ord a, Num a) => a`

So `b` is removed from the type signature and it says, as I understand it, `a` must be both `Ord` & `Num`, but the original signature seemed to say that both `a` & `b` can be different types. Did it just remove `b` because I passed it two params of the same type or is there something else to it?

But I can give `kessel` a string and an int

```
:t kessel "ca" 1
```

which gives: `kessel "ca" 1 :: [Char]`.

String ("ca") has the type class Ord so it takes that, and the original signature says it returns `a`, so the type of the first parameter. However, I don't kno why `kessel "ca" 1 :: [Char]` has no type constraints.

I'm guessing I am unaware of some guiding generalization or rule on how types work. Was hoping someone could shed some light for me.

---

So in a sense, if you ti `:t kessel 1` then `a` is `1: Num` so you get

Maybe I'm confusing the number of type class constraints with the number of paraameters. It seems you can have a type `(Ord a, Intergral a) => a` so `a` can not be `Char` or `String` even though the latter both have `Ord`.

---

Is it also the case in

```
kessel 1 :: (Ord a, Num a, Num b) => b -> a
```

That you get the additional `a` becuase a more specific type is now know for `a`.

So `Num a` is added because a more specific type for `a` is now known
