setColor(255, 122, 18)

name  = data('name' , 'STRING')
value = data('value', 'REAL', 10.0)
min_value   = data('min'  , 'REAL', 0.0)
max_value   = data('max'  , 'REAL', 1000.0)

output('scalar', 'REAL', ui_scalar(name, value, min_value, max_value))
