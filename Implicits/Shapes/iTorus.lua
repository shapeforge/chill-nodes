setColor(177, 123, 200)

inner_radius = input('inner radius', 'SCALAR', 5.0, 0.0, 1000.0)
outer_radius = input('outer radius', 'SCALAR', 10.0, 0.0, 1000.0)

r = outer_radius - inner_radius

bbox_min = v(-outer_radius,-outer_radius,-outer_radius)
bbox_max = v( outer_radius, outer_radius, outer_radius)

equation = [[
float distance]]..__currentNodeId..[[(vec3 p) {
  vec2 t = vec2(]]..(outer_radius - r/2)..[[, ]]..r..[[);
  vec2 q = vec2(length(p.xy)-t.x,p.z);
  return length(q) - t.y / 2;
}
]]

output('torus', 'IMPLICIT', {equation, bbox_min, bbox_max})