primes :: Int -> [Int]
primes 2 = [2]
primes num = if [x | x <- [2 .. quot num 2], num `mod` x == 0] == [] then [num] ++ (primes (num - 1)) else primes (num - 1)

main = do
	num <- getLine

	let x = read num :: Int		
	let p = primes (x + 2) 
	
	if x `elem` p && (x + 2) `elem` p then
		print ("PRIMO CASADO!")
	else if x `elem` p then
		print ("PRIMO!")
	else
		print ("NAO PRIMO!")

