# printは改行しないで式評価する
def add(a,b)
    a+b
end
print add(1,2)


def add(a,b);a+b;end
print add(1,3)