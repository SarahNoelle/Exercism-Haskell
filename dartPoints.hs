-- Task to calculate Points in a dart game from the Haskell course on exercism.org 

score :: Float -> Float -> Int
score x y
        | x^2 + y^2 <= 1 = 10
        | x^2 + y^2 <= 25 = 5
        | x^2 + y^2 <= 100 = 1
        | otherwise = 0