module SysDeps (
   PackedString, packString, unpackPS,
   trace, openBinaryFileWrite, osName
) where

import qualified Data.ByteString.Char8 as BS
import Debug.Trace (trace)
import System.IO
import System.Info

type PackedString = BS.ByteString

packString :: String -> PackedString
packString = BS.pack

unpackPS :: PackedString -> String
unpackPS = BS.unpack

openBinaryFileWrite :: FilePath -> IO Handle
openBinaryFileWrite f = openBinaryFile f WriteMode

osName :: String
osName = if compilerName == "yhc" || os /= "mingw32"
         then os
         else "windows"
