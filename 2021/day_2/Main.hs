solution :: [(String, Int)] -> Int -> Int -> Int -> Int
solution (("forward", x):xs) h v a = solution xs (h + x) (v + (a * x)) a
solution (("down", x):xs) h v a = solution xs h v (a + x)
solution (("up", x):xs) h v a = solution xs h v (a - x)
solution [] h v a = h * v

main :: IO()
main = do
    contents <- readFile "input.txt"
    let xs = map (\(x:y:_) -> (x, read y :: Int)) $ map words $ lines contents
    print $ solution xs 0 0 0
