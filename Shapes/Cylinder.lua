setColor(102, 187, 106)

centered = input('centered', 'BOOLEAN', false)
radius   = input('radius'  , 'REAL' , 5.0, 0.0, 1000.0)
height   = input('height'  , 'REAL' , 10.0, 0.0, 1000.0)

if centered then
  shape = ccylinder(radius, height)
else
  shape = cylinder(radius, height)
end
output('cube', 'SHAPE', shape)
