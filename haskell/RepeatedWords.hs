wordsAmount :: [String] -> [(String, Int)]
wordsAmount list = zip (unionSet [] list) (countElementsInList (unionSet [] list) list [])

unionSet :: [String] -> [String] -> [String]
unionSet list [] = list
unionSet list (x:xs) = if x `elem` list then unionSet list xs else unionSet (list ++ [x]) xs

countElement :: String -> [String] -> Int -> Int
countElement elem [] count = count 
countElement elem (x:xs) count = countElement elem xs (if x == elem then (count + 1) else count) 

countElementsInList :: [String] -> [String] -> [Int] -> [Int]
countElementsInList [] list1 list2 = list2
countElementsInList (x:xs) list1 list2 = countElementsInList xs list1 (list2 ++ [(countElement x list1 0)])


main = do
	list <- getLine
	
	print (wordsAmount (read list))
