logicAndOr :: Bool -> Bool -> Bool -> String -> Bool
logicAndOr bool1 bool2 bool3 "AND" = bool1 && bool2 && bool3
logicAndOr bool1 bool2 bool3 "OR"  = bool1 || bool2 || bool3


main = do
	bool1 <- getLine
	bool2 <- getLine
	bool3 <- getLine
	operator <- getLine
	
	print (logicAndOr (read bool1) (read bool2) (read bool3) operator)
