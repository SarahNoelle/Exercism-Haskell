-- Leap Year Task


isLeapYear :: Integer -> Bool
isLeapYear year = leapHelper year


leapHelper :: Integer -> Bool
leapHelper year
            | year `mod` 4 == 0 && year `mod` 100 /= 0 = True
            | year `mod` 4 == 0 && year `mod` 100 == 0 && year `mod` 400 == 0 = True
            | otherwise = False
