#foxdot , rpg background sound

Scale.default.set("major")

bd >> play("ooo --xx x(  )  o").every([7,12], 'mirror')
bd.shuffle()

hh >> play("- -oxxxxoo o").every([3,8], 'mirror')
hh.shuffle()

sn >> play("-- xo-oxo- --xx-").every([5,12], 'mirror')
sn.shuffle()

d1 >> play("(--) o o[o-]-x")
b1 >> bass([(5,9),(3,17)], dur= 2, pan=(-1,1)).every(3,'reverse')
b2 >> bass([(0,9),(1,7)], dur= 4, chop=(8,5), pan=(-1,1))
d2 >> varsaw([1,3,5,7], sus=3, bits=(7,4))
d3 >> varsaw([0,3,5,9], chop=(10,22), bits=(7,4)).every(4,'reverse')

cp >> play("(xo) (xx--o)")
Group(cp,sn,hh).shuffle

