setColor(200, 230, 135)

shape1 = input('shape1', 'SHAPE')
shape2 = input('shape2', 'SHAPE')
density = input('density', 'SCALAR', 0.1, 0.0, 1.0, true)
orient = input('follow normals', 'BOOLEAN', false)

s = distribute(shape1, density)
centroids = {}

if orient then
  for i = 1,#s,1 do
    centroids[i] = translate(s[i][1]) * frame(s[i][2]) * union{ shape2, mirror(Z) * shape2 }
  end
else
  for i = 1,#s,1 do
    centroids[i] = translate(s[i][1]) * shape2
  end
end

output('shape', 'SHAPE', union(centroids))