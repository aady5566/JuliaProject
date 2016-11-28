workspace()

prog = " 1+1 "

ex1 = parse(prog)
typeof(ex1)

# Expr objects contain three parts: head, args, typ
ex1.head
ex1.args
ex1.typ

# prefix notation
ex2 = Expr(:call, :+, 1, 1)
ex1 == ex2

dump(ex2)
