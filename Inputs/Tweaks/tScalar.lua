setColor(255, 122, 18)

name  = input('name' , 'STRING', 'scalar_value')
value = input('value', 'SCALAR', 10.0)
min_value   = input('min'  , 'SCALAR', 0.0)
max_value   = input('max'  , 'SCALAR', 1000.0)

output('scalar', 'SCALAR', ui_scalar(name, value, min_value, max_value))
