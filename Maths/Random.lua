seed = input('seed', 'INTEGER', 0)

lower_bound = input('lower bound', 'INTEGER', 0)
upper_bound = input('upper bound', 'INTEGER', 100)

if not seed == 0 then
  seed = seed * 1000
  math.randomseed(seed)
end

output('result', 'SCALAR', math.random(lower_bound, upper_bound))