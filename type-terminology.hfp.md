# Types & Type Classes

Much of the content below is derived from [Haskell Programming from first principles](https://haskellbook.com/). Some of it is my interpretation. Since I hvae been learning Haskell for all of 2 weeks now, the below information my not be entirely correct.

> In Haskell, you cannot create untyped data, so evertying originates in a data constructor from some definition of a type.

# Term vs Type Level
- Term level: values that appear in your code or the values your code evaluates to.
- Type level: 

# Data Declaration

- Starts with keyword `data`.
- E.g., `data Bool = True | False`
- Can be logical conjunction (_and_), disjunction (_or_) or may have no artuments

## Type
- aka: datatypes
- A classification of values or data.
- Determine what values are members of the type (aka inhabit).
- Do not contain the operations that can be performed on their set of data.
- A way of grouping a set of values together that share something in common.
- Are defined by data declarations.

## Type Constructor
- The name of a type
- Are not values
- Is capitalized
- E.g., in `data Bool = True | False`, 'Bool' is the type constructor
- Is only used in a type signatures, never in term-level code.

## Data Constructors
- The values that inhabit a type
- E.g., in `data Bool = True | False`, 'True' & 'False' are both data constructors for the `Bool` type.
  - "True is the data constructor for the value True"
- Can be nullary (constants) or take one or more parameters like functions

# Values
- Every value has a type

# Relationships
- Types (datatypes) _have instances of_ type classes.
- A type class can have an instance of another type class. E.g., `Fractional` has an instance of `Num`.

# Questions
- It appears that all data constructors are also values?

# Type Classes
- Are a way of adding functionality to types that is reusable across all types that have instances of that type class.
  - (? unsure ?) It may be that the functions a type class describes can only be applied to concrete types. That does make sense.
- Provide methods that are reusable across all types that have instances of the type class. E.g., the type `Int` has an instance of the type class `Num`.
- (? This statement seems partial ?) An instance defines how the functions work for that specific type. (p. 93)
  - It appears from what I have read elsewhere that when an type declares an instance of a type class that it can inherit the type class' implementation of its methods or it can override them and provide its own implementation.
- Unlike a type such as `Int` which defines a set of number within a range, a type class does not define any data.

# Type Class Constraint
- In `Fractional a => a -> a` & `(Num a, Ord a) => a -> a`, the part before the ` => ` are type constraints.
- `Fractional a => a -> a` says that `a` must be a type that has an instance of the type class `Fractional`. 
- `(Num a, Ord a) => a -> a` says that `a` must be a type that has an instance of both `Num` and `Ord`.
- When a type has an instance of a type class it gets (inherits sort of) the methods of the type class.
- Example:

```Haskell
divTwo :: Fractional a => a -> a -> a -- [A]
divTwo a b = a / b
```
- [A] The `/` operator is defined in the `Fractional` type class and therefore a value used in a division operation must have an instance of `Fractional` or there will be no definition of how that number should be evaluated with the `/` operator.




## Of Note
- Numbers are polymorphic and the compiler doesn't assign a concrete type until it has to. For example, 5 will stay a `Num` until something requires it to become a more specific type when used in division what it is changed to `Fractional`.

