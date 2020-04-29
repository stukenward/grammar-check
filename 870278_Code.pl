/*pronouns(word, singular/plural, 1st 2nd or 3rd person, grammatical role(object or subject))*/

pro(singular,subject,1) --> [i].
pro(singular,subject,2) --> [you].
pro(singular,subject,3) --> [he].
pro(singular,subject,3) --> [she].
pro(singular,subject,3) --> [it].
pro(plural,subject,1) --> [we].
pro(plural,subject,2) --> [you].
pro(plural,subject,3) --> [they].
pro(singular,object,1) --> [me].
pro(singular,object,2) --> [you].
pro(singular,object,3) --> [him].
pro(singular,object,3) --> [her].
pro(singular,object,3) --> [it].
pro(plural,object,1) --> [us].
pro(plural,object,2) --> [you].
pro(plural,object,3) --> [them].

/*verbs(word, singular/plural, 1st 2nd or 3rd person)*/

v(singular,1) --> [know].
v(singular,2) --> [know].
v(singular,3) --> [knows]. 
v(plural,_) --> [know].
v(singular,1) --> [see].
v(singular,2) --> [see].
v(singular,3) --> [sees].
v(plural,_) --> [see].

/*determiner(word, singular/plural)*/
det(_) --> [the].
det(singular) --> [a].
det(plural) --> [two].

/*nouns(word, singular/plural)*/

n(singular) --> [man].
n(singular) --> [woman].
n(singular) --> [apple].
n(singular) --> [chair].
n(singular) --> [room].
n(plural) --> [men].
n(plural) --> [women].
n(plural) --> [apples].
n(plural) --> [chairs].
n(plural) --> [rooms].

/*prepositions*/
prep --> [on].
prep --> [in].
prep --> [under].

/*adjectives*/
adj --> [old].
adj --> [young].
adj --> [red].
adj --> [short].
adj --> [tall].

/*rules (X is singular/plural, Y is subject/object)
 * Z is 1st/2nd/3rd person)*/
s --> np(_,subject,1),vp(_,1).
s --> np(_,subject,2),vp(_,2).
s --> np(singular,subject,3),vp(singular,3).
s --> np(plural,subject,3),vp(plural,3).
np(X,_,_) --> det(X),nbar(X). /*perfect*/
np(X,Y,Z) --> pro(X,Y,Z).
np(X,_,_) --> det(X),nbar(X),pp.
nbar(X) --> n(X).
nbar(X) --> jp(X).
jp(X) --> adj, jp(X).
jp(X) --> adj, n(X).
pp --> prep,np(_,_,_).
vp(X,Z) --> v(X,Z), np(_,object,Z).
vp(X,Z) --> v(X,Z).