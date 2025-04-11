-- haskell task from exercism.org 

import Data.Char (isUpper, isSpace, isLetter)
import Data.List (dropWhileEnd)


responseFor :: String -> String
responseFor xs 
    | null trimmed = "Fine. Be that way!"
    | isQuestion && isYelling = "Calm down, I know what I'm doing!"
    | isYelling = "Whoa, chill out!"
    | isQuestion = "Sure."
    | otherwise = "Whatever."
  where
    trimmed = dropWhileEnd isSpace (dropWhile isSpace xs)
    letters = filter isLetter trimmed
    isYelling = not (null letters) && all isUpper letters
    isQuestion = not (null trimmed) && last trimmed == '?'