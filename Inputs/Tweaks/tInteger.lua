setColor(255, 122, 18)

name  = input('name' , 'STRING', 'integer_value')
value = input('default value', 'INTEGER', 10.0)
min_value   = input('min'  , 'INTEGER', 0.0)
max_value   = input('max'  , 'INTEGER', 1000.0)

output('integer', 'INTEGER', ui_number(name, value, min_value, max_value))
