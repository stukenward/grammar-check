/*pronouns(word, singular/plural, 1st 2nd or 3rd person, grammatical role(object or subject))*/
pro(pro(i),pronoun,singular,subject,1) --> [i].
pro(pro(you),pronoun,singular,subject,2) --> [you].
pro(pro(he),pronoun,singular,subject,3) --> [he].
pro(pro(she),pronoun,singular,subject,3) --> [she].
pro(pro(it),pronoun,singular,subject,3) --> [it].
pro(pro(we),pronoun,plural,subject,1) --> [we].
pro(pro(you),pronoun,plural,subject,2) --> [you].
pro(pro(they),pronoun,plural,subject,3) --> [they].
pro(pro(me),pronoun,singular,object,1) --> [me].
pro(pro(you),pronoun,singular,object,2) --> [you].
pro(pro(him),pronoun,singular,object,3) --> [him].
pro(pro(her),pronoun,singular,object,3) --> [her].
pro(pro(it),pronoun,singular,object,3) --> [it].
pro(pro(us),pronoun,plural,object,1) --> [us].
pro(pro(you),pronoun,plural,object,2) --> [you].
pro(pro(them),pronoun,plural,object,3) --> [them].

/*verbs(word, singular/plural, 1st 2nd or 3rd person)*/
v(v(know),singular,1) --> [know].
v(v(know),singular,2) --> [know].
v(v(knows),singular,3) --> [knows]. 
v(v(know),plural,_) --> [know].
v(v(see),singular,1) --> [see].
v(v(see),singular,2) --> [see].
v(v(sees),singular,3) --> [sees].
v(v(see),plural,_) --> [see].

/*determiner(word, singular/plural)*/
det(det(the),_) --> [the].
det(det(a),singular) --> [a].
det(det(two),plural) --> [two].

/*nouns(word, singular/plural)*/
n(n(man),noun,singular) --> [man].
n(n(woman),noun,singular) --> [woman].
n(n(apple),noun,singular) --> [apple].
n(n(chair),noun,singular) --> [chair].
n(n(room),noun,singular) --> [room].
n(n(men),noun,plural) --> [men].
n(n(women),noun,plural) --> [women].
n(n(apples),noun,plural) --> [apples].
n(n(chairs),noun,plural) --> [chairs].
n(n(rooms),noun,plural) --> [rooms].

/*prepositions*/
prep(prep(on)) --> [on].
prep(prep(in)) --> [in].
prep(prep(under)) --> [under].

/*adjectives*/
adj(adj(old)) --> [old].
adj(adj(young)) --> [young].
adj(adj(red)) --> [red].
adj(adj(short)) --> [short].
adj(adj(tall)) --> [tall].

/*rules*/
s(s(NP,VP)) --> np(NP,pronoun,_,subject,1),vp(VP,_,1).
s(s(NP,VP)) --> np(NP,pronoun,_,subject,2),vp(VP,_,2).
s(s(NP,VP)) --> np(NP,_,singular,subject,3),vp(VP,singular,3).
s(s(NP,VP)) --> np(NP,_,plural,subject,3),vp(VP,plural,3).
np(np(DET,N),W,X,_,_) --> det(DET,X),nbar(N,W,X).
np(np(PRO),W,X,Y,Z) --> pro(PRO,W,X,Y,Z).
np(np(DET,N,PP),W,X,_,_) --> det(DET,X),nbar(N,W,X),pp(PP).
nbar(nbar(N),W,X) --> n(N,W,X).
nbar(nbar(JP),W,X) --> jp(JP,W,X).
jp(jp(ADJ,JP),W,X) --> adj(ADJ), jp(JP,W,X).
jp(jp(ADJ,N),W,X) --> adj(ADJ), n(N,W,X).
pp(pp(PREP,NP)) --> prep(PREP),np(NP,_,_,object,_).
vp(vp(V,NP),X,Z) --> v(V,X,Z), np(NP,_,_,object,_).
vp(vp(V),X,Z) --> v(V,X,Z).