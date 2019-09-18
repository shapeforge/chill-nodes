setColor(255, 122, 18)

name  = data('name' , 'STRING')
value = data('default value', 'INTEGER', 10.0)
min_value   = data('min'  , 'INTEGER', 0.0)
max_value   = data('max'  , 'INTEGER', 1000.0)

output('integer', 'INTEGER', ui_number(name, value, min_value, max_value))
