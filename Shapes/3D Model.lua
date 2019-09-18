setColor(102, 187, 106)

path = data('path', 'PATH', '', false, 'Object (*.stl, *.obj)\0*.obj;*.stl\0All (*.*)\0*.*\0'  )
shape = load(path)
output('shape', 'SHAPE', shape)