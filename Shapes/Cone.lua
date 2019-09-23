setColor(102, 187, 106)

centered = input('centered', 'BOOLEAN', false)
base_radius = input('base radius'  , 'REAL' , 5.0, 0.0, 1000.0)
top_radius  = input('top radius'   , 'REAL' , 0.0, 0.0, 1000.0)
height      = input('height'       , 'REAL' , 10.0, 0.0, 1000.0)

if centered then
  shape = ccone(base_radius, top_radius, height)
else
  shape = cone(base_radius, top_radius, height)
end
output('cube', 'SHAPE', shape)
