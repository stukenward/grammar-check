/*pronouns(word, singular/plural, 1st 2nd or 3rd person, grammatical role(object or subject))*/
pro(pro(i),singular,subject,1) --> [i].
pro(pro(you),singular,subject,2) --> [you].
pro(pro(he),singular,subject,3) --> [he].
pro(pro(she),singular,subject,3) --> [she].
pro(pro(it),singular,subject,3) --> [it].
pro(pro(we),plural,subject,1) --> [we].
pro(pro(you),plural,subject,2) --> [you].
pro(pro(they),plural,subject,3) --> [they].
pro(pro(me),singular,object,1) --> [me].
pro(pro(you),singular,object,2) --> [you].
pro(pro(him),singular,object,3) --> [him].
pro(pro(her),singular,object,3) --> [her].
pro(pro(it),singular,object,3) --> [it].
pro(pro(us),plural,object,1) --> [us].
pro(pro(you),plural,object,2) --> [you].
pro(pro(them),plural,object,3) --> [them].

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
n(n(man),singular) --> [man].
n(n(woman),singular) --> [woman].
n(n(apple),singular) --> [apple].
n(n(chair),singular) --> [chair].
n(n(room),singular) --> [room].
n(n(men),plural) --> [men].
n(n(women),plural) --> [women].
n(n(apples),plural) --> [apples].
n(n(chairs),plural) --> [chairs].
n(n(rooms),plural) --> [rooms].

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
s(s(NP,VP)) --> np(NP,_,subject,1),vp(VP,_,1).
s(s(NP,VP)) --> np(NP,_,subject,2),vp(VP,_,2).
s(s(NP,VP)) --> np(NP,singular,subject,3),vp(VP,singular,3).
s(s(NP,VP)) --> np(NP,plural,subject,3),vp(VP,plural,3).
np(np(DET,N),X,_,_) --> det(DET,X),nbar(N,X).
np(np(PRO),X,Y,Z) --> pro(PRO,X,Y,Z).
np(np(DET,N,PP),X,_,_) --> det(DET,X),nbar(N,X),pp(PP).
nbar(nbar(N),X) --> n(N,X).
nbar(nbar(JP),X) --> jp(JP,X).
jp(jp(ADJ,JP),X) --> adj(ADJ), jp(JP,X).
jp(jp(ADJ,N),X) --> adj(ADJ), n(N,X).
pp(pp(PREP,NP)) --> prep(PREP),np(NP,_,_,_).
vp(vp(V,NP),X,Z) --> v(V,X,Z), np(NP,_,_,_).
vp(vp(V),X,Z) --> v(V,X,Z).
