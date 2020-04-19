/*pronouns(word, singular/plural, 1st 2nd or 3rd person, grammatical role(object or subject))*/
pro(i,singular,1,subject).
pro(you,singular,2,subject).
pro(he,singular,3,subject).
pro(she,singular,3,subject).
pro(it,singular,3,subject).
pro(we,plural,1,subject).
pro(you,plural,2,subject).
pro(they,plural,3,subject).
pro(me,singular,1,object).
pro(you,singular,2,object).
pro(him,singular,3,object).
pro(her,singular,3,object).
pro(it,singular,3,object).
pro(us,plural,1,object).
pro(you,plural,2,object).
pro(them,plural,3,object).

/*verbs(word, singular/plural, 1st 2nd or 3rd person)*/
v(know,singular,1).
v(know,singular,2).
v(knows,singular,3).
v(know,plural,_).
v(see,singular,1).
v(see,singular,2).
v(sees,singular,3).
v(see,plural,_).

/*determiner(word, singular/plural)*/
det(the,_).
det(a,singular).
det(two,plural).

/*nouns(word, singular/plural)*/
n(man,singular).
n(woman,singular).
n(apple,singular).
n(chair,singular).
n(room,singular).
n(men,plural).
n(women,plural).
n(apples,plural).
n(chairs,plural).
n(rooms,plural).

/*prepositions*/
prep(on).
prep(in).
prep(under).

/*adjectives*/
adj(old).
adj(young).
adj(red).
adj(short).
adj(tall).

/*rules*/
s(X,Y) :-
    pro(X,_,_,_),
    v(Y,_,_).

s(X,Y) :-
    det(X,singular),
    n(Y,singular).
