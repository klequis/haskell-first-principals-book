# Prelude

- constrained == ad-hoc
- parimetric == unconstrained
- Type classes are not types. There is no shuch thing as _value of type `Eq`_.[1] 

# Type Class

A Type Class is
- (can be thought of as) A set of types
- Type classes correspond to sets of types which have certain operations defined for them [3]
- A set of operations defined with respect to a polymorphic type
- Defined with the `class` key word
- A type class is a means of expressing faculties or interfaces that multiple datatypes may have in common

A Type Class May Be?
- polymorhic, parametric, constrained
- is not a set of values


# Type

A typeype

- Is a set of values [2]
  - E.g., `Bool` is the finite set of `True` & `False`
- Can have instance of 1 or more type classes.
- Defined with the `data` key word

A type May Be?

- 2 types are compatible (have the same functions) if they have an instance of a given type class.

# Concrete Type

- Said/spoken to make it clear that we mean that a type corresponds to as set of values. [2]
- A concrete type cannot have type variables

# Type Constructor
- Type-level functions that can be pattern-matched.
- Declared with `data`
- Can be nullary or not



Other

- We can describe Num as a _superclass_ of several other numeric type classes that all inherit operations from Num. (p. 141)
- _`Fractional`_ is a type class that requires types to already have an instance of the `Num` type class. Therefore:
  - `Num` is a superclass of `Fractional`.
  - `Fractional` is a subclass of `Num`
- A typeclass can be ad-hoc polymorphism? Or can they be 
- A type constructor that takes an argument is not concrete and once received it is concrete.
- Haskell does not do runtime type checking. Types are stripped ?(after/during) compile.


Footnotes:
[1] https://en.wikipedia.org/wiki/Type_class#Type_classes_and_implicit_parameters
[2] https://stackoverflow.com/questions/68427664/clarification-of-terms-around-haskell-type-system
[3] https://www.schoolofhaskell.com/school/starting-with-haskell/introduction-to-haskell/5-type-classes