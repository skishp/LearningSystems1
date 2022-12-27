## Topic 2: Learning in logic-based systems
This topic is all about learning with logic. But the question is what do we understand by logic-based learning. In short logic-based learning is breaking down every sentence into mathematical truth tables, where we assign the value True to 1, and False to 0. In our case one sentence can either be true or false. But how do we learn with this representation. To learn we have to define all statements and all rules. For example if 
``` 
A implies B, B implies C
```
then we should learn that
```
A implies C
```
To learn in this case we have to write down each possible scenario of the rule `implies`. So if we have to remember the truth table for implies. This means we have to write each statement into our data base as rule, for example `If A true and B true then true` and `If A false and B false then true`. 
This is also the biggest reason of limitation for this kind of learning. 

For the exercise for this topic we are using the programming language `prolog`. Which was written for the only purpose of writing logic-based code. Some simple code is given by
```
3<4.
True
4<3.
False
```
If you want you can write your statements and rules into a `Perl Source File` which has the ending `.pl`. A first look into more 'complex' code is given in `FirstSystem.pl`. Now if we want to make a simple Statement like for example 'Socrates is a man' we can write it into code like
```
man(Socrates).
True.
```
We can further make statements like
```
animal(elephant).
animal(horse).
bigger(elephant,horse).
```
Our first rule is given by
```
mortal(X) :- man(X).
```
Which basically means, if `man(X).` is true than `mortal(X)` is set to true. A more interesting rule is `is_bigger`. What we want to do is to compare the sizes of two animals. We have to cases, one where we already defined `bigger(X,Y)` and one where we have `bigger(X,Y)` and `bigger(X,Z)` but we want to know `is_bigger(X,Z)`. This can be done via 
``` 
is_bigger(X,Y) :- bigger(X,Y).
is_bigger(X,Y) :- bigger(X,Z), is_bigger(Z,Y).
```
At this point I refrain from going into more detail of prolog, because this is not very practical but only a nice tool to play around if you want to understand logic-based learning. 

