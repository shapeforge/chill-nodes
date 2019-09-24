setColor(102, 187, 106)

path = data('path', 'PATH', '.', false, {'*.stl', '*.obj'})

shape = load(path)

output('shape', 'SHAPE', shape)