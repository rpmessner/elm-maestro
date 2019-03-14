module Maestro exposing (..)

{-| This library provides music theory abstractions and functionalities.

# Definition
@docs octaveOf, noteOf, keyAtOctave
-}

import Maestro.Tone exposing (Key, keyToValue)


{-|
-}
octaveOf : Int -> Int
octaveOf value =
    value // 12


{-|
-}
noteOf : Int -> Int
noteOf value =
    modBy 12 value


{-|
-}
keyAtOctave : Key -> Int -> Int
keyAtOctave key octave =
    (keyToValue key) + (12 * octave)
