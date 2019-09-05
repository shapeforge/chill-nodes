implicit = input('implicit', 'IMPLICIT')
vector = input('rotation', 'VEC3', {0, 0, 0}, -1000, 1000)

equation = implicit[1]

bbox_min = implicit[2]
if(bbox_min.x > bbox_min.y) then bbox_min.x = bbox_min.y end
if(bbox_min.x > bbox_min.z) then bbox_min.x = bbox_min.z end
bbox_min.y = bbox_min.x
bbox_min.z = bbox_min.x

bbox_max = implicit[3]
if(bbox_max.x < bbox_max.y) then bbox_max.x = bbox_max.y end
if(bbox_max.x < bbox_max.z) then bbox_max.x = bbox_max.z end
bbox_max.y = bbox_max.x
bbox_max.z = bbox_max.x

equation = equation .. [[
float distance]] .. __currentNodeId .. [[(vec3 p) {
  mat3 tx;
  mat3 ty;
  mat3 tz;
  
  float thetax = ]].. vector.x ..[[;
  float thetay = ]].. vector.y ..[[;
  float thetaz = ]].. vector.z ..[[;
  
  tx[0] = vec3(1,           0,            0);
  tx[1] = vec3(0, cos(thetax), -sin(thetax));
  tx[2] = vec3(0, sin(thetax),  cos(thetax));
  
  ty[0] = vec3( cos(thetay), 0, sin(thetay));
  ty[1] = vec3(           0, 1,           0);
  ty[2] = vec3(-sin(thetay), 0, cos(thetay));
  
  tz[0] = vec3(cos(thetaz), -sin(thetaz), 0);
  tz[1] = vec3(sin(thetaz),  cos(thetaz), 0);
  tz[2] = vec3(          0,            0, 1);

  return distance]] .. getNodeId('implicit') .. [[( inverse(tx) * inverse(ty) * inverse(tz) * p);
}
]]

output('implicit', 'IMPLICIT', {equation, bbox_min, bbox_max})