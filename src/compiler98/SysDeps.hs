module SysDeps (
   trace, openBinaryFileWrite, osName
) where

import Debug.Trace (trace)
import System.IO
import System.Info

openBinaryFileWrite :: FilePath -> IO Handle
openBinaryFileWrite f = openBinaryFile f WriteMode

osName :: String
osName = if compilerName == "yhc" || os /= "mingw32"
         then os
         else "windows"
