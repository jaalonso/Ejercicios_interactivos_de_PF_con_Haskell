module Tiempo where

import Data.Time

tiempo :: a -> IO NominalDiffTime
tiempo e = do
  inicial <- getCurrentTime
  final  <- e `seq` getCurrentTime
  return (diffUTCTime final inicial)
    
