setColor(102, 187, 106)

centered = input('centered', 'BOOLEAN', false)
size     = input('size'    , 'VEC3'   , {10.0, 10.0, 10.0}, 0.0, 1000.0)

if centered then
  shape = ccube(size)
else
  shape = cube(size)
end
output('cube', 'SHAPE', shape)