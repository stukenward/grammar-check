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

/*rules*/
s --> np(subject),vp.
np(_) --> det(_),nbar.
np(X) --> pro(X,_,_).
/*np --> det,nbar,pp.*/
nbar --> n(_).
nbar --> jp.
jp --> adj, jp.
jp --> adj, n(_).
pp --> prep,np(_).
vp --> v(_,_), np(_).
