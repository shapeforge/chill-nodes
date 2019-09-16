setColor(149, 142, 203)

implicit = input('implicit', 'IMPLICIT')
translation = input('Translation', 'VEC3', {0.0, 0.0, 0.0}, -1000.0, 1000.0)

equation = implicit[1]
bbox_min = implicit[2] + translation
bbox_max = implicit[3] + translation

equation = equation .. [[
float distance]] .. __currentNodeId .. [[(vec3 p) {
  return 
    distance]] .. getNodeId('implicit') .. [[(p - 
    vec3(]]..translation.x..[[,]]..translation.y..[[,]]..translation.z..[[));
}
]]

output('implicit', 'IMPLICIT', {equation, bbox_min, bbox_max})