CORRECT

```haskell

-- a. Start

  (λxyz.xz(yz))(λmn.m)(λp.p)

-- b. Expand to make currying explicit

  (λx.λy.λz.xz(yz))(λm.λn.m)(λp.p)

-- c. Apply λx to (λm.λn.m)

  (λy.λz.(λm.λn.m)z(yz))(λp.p)

-- d. Apply λy to y

  λz.(λm.λn.m)(z)((λp.p)z)


-- e. Apply λn to ((λp.p)z)
      -- But λn doesn't bind anything so it and ((λp.p)z)
      -- go away.

  λz.(λn.z)((λp.p)z)

-- f
  λz.z

```

## DO NOT KEEP THE BELOW

Start with:
(λx.λy.λz.xz(yz)) (λm.λn.m) (λp.p)

Apply the λx to the first argument (λm.λn.m):
(λy.λz.(λm.λn.m)(z)(yz)) (λp.p)

Apply λm to z
(λy.λz.(λn.z)(yz)) (λp.p)

Apply λy to (λp.p)
(λz.(λn.z)((λp.p)z))

- Apply λp to z
  (λz.(λn.z)(z))

- Apply λn to z (Again, λn is bound to nothing)
  The second z goes away as does λn
  (λz.(z))

- remove paren
  λz.z

---

(λxyz.xz(yz))(λmn.m)(λp.p)
(λx.λy.λz.xz(yz))(λm.λn.m)(λp.p)
( λy.λz.(λm.λn.m)z(yz))(λp.p)
λz.(λm.λn.m) (z) ((λp.p)z)
λz.(λn.z)((λp.p)z)
λz.z

---

(λx.(λy.(x(λx.xy))))y

(λy.(x(λx.xy)))

(λt.(x(λx.xt))) = (λt.(y(λx.xt)))
