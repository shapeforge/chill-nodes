path = input('path', 'PATH', '', false, 'Object (*.stl, *.obj)\0*.obj;*.stl\0All (*.*)\0*.*\0'  )
shape = load(path)
output('shape', 'SHAPE', shape)