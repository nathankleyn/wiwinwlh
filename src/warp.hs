{-# LANGUAGE OverloadedStrings #-}

import Network.Wai.Handler.Warp (run)
import Network.Wai.Application.Static

server :: Int -> IO ()
server port = do
  let staticPath = "."
  let app = staticApp $ defaultFileServerSettings staticPath
  run port app

main :: IO ()
main = server 8000
