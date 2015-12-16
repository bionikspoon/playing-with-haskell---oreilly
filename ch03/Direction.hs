module Direction where

data Coord = Coord CoordX CoordY
data Direction = DirLeft
               | DirRight
               | DirStraight


type CoordX = Double
type CoordY = Double

slope :: Fractional a => Coord -> Coord -> a
slope (Coord px py) (Coord qx qy) = (py - qy) / (px - qx)
