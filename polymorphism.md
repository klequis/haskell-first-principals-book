# Polymorphism

## Polymorphic Constant
- E.g., `10`.
- > :t (10) results in `10 :: Num a => a`.
- 10 is not a variable, it is a constant, but its type could be anything.

---

Concrete
- are not polymorphic
- Is of a specific, non-polymorphic type (e.g., `Int`)

Constrained polymorphic (aka ad-hoc)
- Is implemented via Type Classes
- Restricts the possible concrete types a variable can become

Parametrically polymorphic
- Refers to types that are fully polymorphic (unconstrained)
- Their final concrete type could be anything


# The Paradox Of Functionality & Types

It might be easy to assume a more generic/broader type would have more possible functionality than a more specific type, but the opposite is true.

The type `a -> a` says that `a` can be any type. But because it can be any type it has no methods associated with it. Therefore, `a -> a` can do only one thing, it can take a value of any type and return the same value with the same type.

This is because methods, which are operators such as `+` or `-`, are associated with type classes. That is, a type gets its methods from one or more type classes.

The class type `Num` has 7 methods: `(+)`, `(*)`, `abs`, `signum`, `fromInteger`, `negate` and `(-)`. As a result, if you have the type signature `Num a => a -> a` then `a` has the seven methods of `Num`.

The type class `Eq` has two methods: `(==)` & `(/=)`. If you add `Eq` to the previous type signature `(Num a, Eq a) => a -> a`, `a` now has 9 methods.

By the time you get to a concrete type such as `Int` there is more functionality (methods). `Int` has instances of 20+ type classes and can be used with all of the methods defined in those 10+ type classes.

While functionality increases with increased type specificity, flexibility in terms of types decreases. That is, `Num`, which has only 7 methods, can be a `Double`, `Float`, `Int`, `Integer`, `Word` and more. `Fractional` can only be a `Double`, `Float`, `CFloat`, `Integral` and a couple of more. At the end of the spectrum (for numbers) is `Int`. `Int` can be an `Int` and nothing else. It is called a _concrete type_ and is not polymorphic.