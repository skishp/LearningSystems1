/* The basic facts */


man(socrates).

animal(elephant).
animal(horse).
animal(donkey).
animal(dog).
animal(mouse).
animal(monkey).

bigger(elephant, horse).
bigger(horse, donkey).
bigger(donkey, monkey).
bigger(donkey, dog).
bigger(mouse,fly).
bigger(dog,mouse).


bigger(socrates, dog).

/* Rules */


mortal(X) :- man(X).
mortal(X) :- animal(X).

is_bigger(X,Y) :- bigger(X,Y).
is_bigger(X,Y) :- bigger(X,Z), is_bigger(Z,Y).

smallest(X) :- \+ bigger(X,_).

loop(0).  
loop(N) :- writeln(N), S is N-1, loop(S).
