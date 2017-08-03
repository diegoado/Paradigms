getElement :: Int -> [Int] -> Int
getElement index list = last (take index list)

main = do
	list  <- getLine
	index <- getLine
	
	print (getElement (read index) (read list))
