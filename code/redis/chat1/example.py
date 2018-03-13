def foobar(z,y):
    print(z,y)


def x():
    y = 1
    z = 2
    print(locals())
    foobar(**locals())

x()
