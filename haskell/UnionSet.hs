union :: [Int] -> [Int] -> [Int]
union list [] = list
union list (x:xs) = if x `elem` list then union list xs else union (list ++ [x]) xs 

main = do
	list1 <- getLine
	list2 <- getLine

	print (union (read list1) (read list2))
