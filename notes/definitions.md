- _Application_ (1 of 2) is how one evaluates or reduces lambdas, binding the parameter to the concrete argument. The argument is what specific term the lambda is applied to. Computations are performed in lambda calculus by applying lambdas to arguments until you run out of applications to perform:

  ```haskell
  (𝜆𝑥.𝑥)1
  ```

  This example reduces to `1`, as the identity `𝜆𝑥.𝑥` is applied to the value `1`, `𝑥` is bound to `1`, and since the lambda’s body is `𝑥`, it just kicks the `1` out. In a sense, applying the `𝜆𝑥.𝑥` consumes it. We reduce the amount of structure with which we start.

- _Application_ (2 of 2) is the act of applying a lambda function to an argument. When we apply an abstraction to artuments, we replace the names (parameter names) with values, making it _concrete_.

---

- _Arity_: The number of parameters in a function signature or the number if items in a tuple.
  - Formally: the number of arguments or operands taken by a function or operation in logic, mathematics, and computer science.

---

- _Beta reduction_ is the process of
  - applying a lambda term to an argument
  - replacing the bound variables with the value of the argument
  - and eliminating the head.

---

- _Bindings_
  - _Local bindings_ are bindings local to particular expressions. The primary distinction here from top level bindings is that local bindings cannot be imported by other programs or modules.
  - _Top level bindings_ in Haskell are bindings that stand outside of any other declaration. The main feature of top-level bindings is that they can be made available to other modules within your programs or to other people’s programs.

---

---

- A _bound_ variable is one that appears in the head and body.

---

- A _calculus_ is a method of calculation or reasoning; the lambda calculus is one process for formalizing a method. Like Turing machines, the lambda calculus formalizes the concept of effective computability, thus determining which problems, or classes of problems, can be solved.

---

- The _Church-Rosser property_ states that the normal form obtained is independent of the order of evaluation of subterms.

---

- A _combinator_ is a lamda term with no free variables. Combinators, as the name suggests, serve only to combine the arguments they are given. In other words:
  - Every term in the body appears in the head.
  - or: They are a special class of lambda expressions that can only combine the arguments they are given, without introducing any new values or random data.

---

- _Data constructors_ are a means of creating values that inhabit a given type. `True` & `False` are the data constructors for `Bool`. They begin with the word `data`.

---

- _Data declarations_ are how _datatypes_ are defined.

---

- _Declarations_ are top level bindings that allow us to name expressions

---

- _Divergence_ [here] means that the reduction process never terminates or ends. Reducing terms should ordinarily converge to beta normal form, and divergence is the opposite of convergence, or normal form. Normal form is also sometimes called _canonical form_.

---

- _Free variables_ (1 of 2) are variables in the body expression that are not named in the head. So in the expression `λx.xy`, `x` is bound and `y` is free.
- A _free_ (2 of 2) variable is one that appears in the body but not the head.

---

- A _function_
  1. A function is a specific type of expression.
  2. A function is a mathematical opject that can be applied to an argument in order to return a result.

---

- _Infix notation_: Infix means that the operator is place between operands or arguments. E.e., `2 + 2`.

---

- The _lambda_ in lambda calculus is the greek letter 𝜆 used to
  introduce, or abstract, arguments for binding in an expression.
- A lambda abstraction is an anonymous function or lambda term.
  `(𝜆𝑥.𝑥 + 1)`
  - The head of the expression, 𝜆𝑥., abstracts out the term 𝑥 + 1.
  - We can apply it to any 𝑥 and recompute different results for each 𝑥 to which we apply the lambda.
- _Lambda calculus_ is a formal system for expressing programs in
  terms of abstraction and application.

---

- _Normal order_ is a common evaluation strategy in lambda cal-
  culi. Normal order means evaluating the leftmost, outermost
  lambdas first, evaluating nested terms after you’ve run out of
  arguments to apply. Normal order isn’t how Haskell code is
  evaluated. Haskell’s evaluation strategy is call-by-need, instead.

---

- _Operators_ are functions that are infix by default. In Haskell, operators mus use symbols and not alphanumeric characters.

---

- _Partial functions_: I got this from [here](http://learn.hfm.io/fundamentals.html). It says that partial functions (not partial application) are functions that do not have a patter match for all possible cases. An example is `head`. `head` does not have a case for `[]` and will throw an exception. Such functions should return an error using `error`.

---

- _Polymorphism_ means being able to write code in terms of values
  that may be one of several types or of any type. There are two types in Haskell and, as I understand them currently
  - Parametric is unconstrained such as `id :: a -> a`
  - Ponstrained is constrained as `isEqual :: Eq a => a -> a -> Bool`.

---

- Reducible expressions are also called _Redexes_.

---

- _Top-level declarations_ are not nested within anything else, and they are in scope throughout the whole module. There placement from top to bottom doesn't matter.

---

- A _type_ or _datatype_ is a classification of values or data. Types in Haskell determine what values are members of the type or that inhabit the type. **Unlike in other languages, datatypes in Haskell by default do not delimit the operations that can be performed on that data**.

---

- A _type alias_ is a way to refer to a type constructor or type constant by an alternate name, usually to communicate something more specific or for brevity.

---

- A _type class_ is a set of operations defined with respect to a polymorphic type.

---

- The _type constructor_ is the name if the type and must be capitalized.

---

- A _type variable_ is a variable used in a type signatures such as `a` in `f :: a -> a`

---
