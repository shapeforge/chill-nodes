implicit = input('implicit', 'IMPLICIT')
scale = input('scale', 'VEC3', {1, 1, 1}, -1000, 1000)

equation = implicit[1]
bbox_min = implicit[2] * scale
bbox_max = implicit[3] * scale

equation = equation .. [[
float distance]] .. __currentNodeId .. [[(vec3 p) {
  return 
    distance]] .. getNodeId('implicit') .. [[(p / 
    vec3(]]..scale.x..[[,]]..scale.y..[[,]]..scale.z..[[));
}
]]

output('implicit', 'IMPLICIT', {equation, bbox_min, bbox_max})