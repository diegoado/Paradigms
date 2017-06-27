perfectNumber :: Int -> Bool
perfectNumber num = sum [x | x <- [1 .. quot num 2], num `mod` x == 0] == num


main = do
	num <- getLine
	
	print (perfectNumber (read num))


