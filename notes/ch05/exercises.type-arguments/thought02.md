# kessel

I'd like to confirm that is the 'compiler' that is the type magic below so I don't say it the wrong way?

## 1. `:t kessel 1 2`

`(Ord a, Num b) => a -> b -> a` -- original

`(Ord a, Num a) => a` -- result

- Since both `a` & `b` are `Num` a separate type for `b` is not needed to express the type so the compiler eliminates it.
- I'm curious what the first parameter was passed a `Num`, why it is `Ord` & not `Num`?

**Follow-up**

`(Ord a, Num a) => a` means, you are getting (or got) a value back that is both an `Ord` & a `Num`.

## 2. `:t kessel "ca" 1`

`(Ord a, Num b) => a -> b -> a` -- original

`[char]`

Similar to #1 above, two parameters are passed but in this case no parameter types are included. I.e., I was expecting something like:

`(some param types here) => [char]`

- For some reason it seems the type constraints are not needed?

**Follow-up**

So could I say in short: in this case both the types of `a` & `b` are know, as is the return type so no type constraints. Or in other words, you can't put a type constraing on a concrete type.

## 3. `:t kessel "ca"`

`(Ord a, Num b) => a -> b -> a` -- original

`Num b => b -> [ Char ]`

I think I get this one:
`a` was given a `[Char]` and is not gone. The return type is `[Char]` because the original signature says it will match `a`, and the function is waiting for `b` which must be a `Num`.

## 4. `:t kessel 1`

`(Ord a, Num b) => a -> b -> a` -- original

`(Ord a, Num b, Num a) => b -> a`

My understanding here is:

`a` was passed as a `Num` so the return type must be a `Num` and this constraint has been added as the last `Num a`.

- Instead of saying 'the return type ...' is it also true OK to think about it as `Num a` was added because the compiler was given addition information (i.e., 1) about `a` and adds that new info to the type constraints?

**Follow-up**
