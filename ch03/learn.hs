

printSecond :: IO ()

printSecond = do
  putStrLn greeting

main = do
  putStrLn greeting
  printSecond
  where greeting = "Yarrrrr"
