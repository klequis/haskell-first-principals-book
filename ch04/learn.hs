import GHC.RTS.Flags (ProfFlags(typeSelector))
x = (+)

f xs = w `x` 1
     where w = length xs


f1 x = fst

-- Match the function names to their typeSelector
-- 1 = c
-- 2 = b