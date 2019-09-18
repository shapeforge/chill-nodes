setColor(255, 122, 18)

name  = data('name' , 'STRING')
value = data('value', 'SCALAR', 10.0)
min_value   = data('min'  , 'SCALAR', 0.0)
max_value   = data('max'  , 'SCALAR', 1000.0)

output('scalar', 'SCALAR', ui_scalar(name, value, min_value, max_value))
