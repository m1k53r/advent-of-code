solution :: [Int] -> Int
solution xs = foldr(\(x,y) acc -> if x < y then acc + 1 else acc) 0 $ zip ys (tail ys) where ys = map (\(x,y,z) -> x + y + z) $ zip3 xs (tail xs) (drop 2 xs)

main :: IO()
main = do
    contents <- readFile "input.txt"
    let xs = (map read $ lines contents) :: [Int]
    print $ solution xs

