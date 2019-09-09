implicit = input('implicit', 'IMPLICIT')
vector = input('rotation', 'VEC3', {0, 0, 0}, -1000, 1000)

equation = implicit[1]

A = implicit[2] 
B = implicit[3]

C = rotate(vector) * v(A.x,A.y,B.z)
J = rotate(vector) * v(A.x,B.y,A.z)
E = rotate(vector) * v(A.x,B.y,B.z)
F = rotate(vector) * v(B.x,A.y,A.z)
G = rotate(vector) * v(B.x,A.y,B.z)
H = rotate(vector) * v(B.x,B.y,A.z)
A = rotate(vector) * A
B = rotate(vector) * B


bbox_min = v(0,0,0)
bbox_min.x = math.min(A.x,B.x,C.x,J.x,E.x,F.x,G.x,H.x)
bbox_min.y = math.min(A.y,B.y,C.y,J.y,E.y,F.y,G.y,H.y)
bbox_min.z = math.min(A.z,B.z,C.z,J.z,E.z,F.z,G.z,H.z)

bbox_max = v(0,0,0)
bbox_max.x = math.max(A.x,B.x,C.x,J.x,E.x,F.x,G.x,H.x)
bbox_max.y = math.max(A.y,B.y,C.y,J.y,E.y,F.y,G.y,H.y)
bbox_max.z = math.max(A.z,B.z,C.z,J.z,E.z,F.z,G.z,H.z)

equation = equation .. [[
float distance]] .. __currentNodeId .. [[(vec3 p) {
  mat3 tx;
  mat3 ty;
  mat3 tz;
  
  float thetax = ]].. -vector.x / 180 * Pi ..[[;
  float thetay = ]].. -vector.y / 180 * Pi ..[[;
  float thetaz = ]].. -vector.z / 180 * Pi ..[[;
  
  tx[0] = vec3(1,           0,            0);
  tx[1] = vec3(0, cos(thetax), -sin(thetax));
  tx[2] = vec3(0,  sin(thetax),  cos(thetax));
  
  ty[0] = vec3( cos(thetay), 0, sin(thetay));
  ty[1] = vec3(           0, 1,           0);
  ty[2] = vec3( -sin(thetay), 0, cos(thetay));
  
  tz[0] = vec3(cos(thetaz), -sin(thetaz), 0);
  tz[1] = vec3(sin(thetaz),  cos(thetaz), 0);
  tz[2] = vec3(          0,            0, 1);

  return distance]] .. getNodeId('implicit') .. [[(inverse(tz) * inverse(ty) * inverse(tx) * p);
}
]]

output('implicit', 'IMPLICIT', {equation, bbox_min, bbox_max})