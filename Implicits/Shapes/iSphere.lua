setColor(177, 123, 200)

radius = input('radius', 'REAL', 5.0, 0.0, 1000.0)

bbox_min = v(-radius,-radius,-radius)
bbox_max = v( radius, radius, radius)

equation = [[
float distance]]..__currentNodeId..[[(vec3 p) {
  return length(p)-]]..radius..[[;
}
]]

output('sphere', 'IMPLICIT', {equation, bbox_min, bbox_max})
