/* Example test sentences with outputs:
 * 1.
 * Input: s(Tree,[the,woman,sees,the,apples], [])
 * Output: Tree = s(np(det(the), nbar(n(woman))), vp(v(sees), np(det(the), nbar(n(apples)))))
 * 2.
 * Input: s(Tree,[a,woman,knows,him], [])
 * Output: Tree = s(np(det(a), nbar(n(woman))), vp(v(knows), np(pro(him))))
 * 3.
 * Input: s(Tree,[two,woman,sees,a,man], [])
 * Output: false
 * 4.
 * Input: s(Tree,[two,women,see,a,man], [])
 * Output: Tree = s(np(det(two), nbar(n(women))), vp(v(see), np(det(a), nbar(n(man)))))
 * 5.
 * Input: s(Tree,[the,man,see,the,apples], [])
 * Output: false
 * 6.
 * Input: s(Tree,[the,men,see,the,apples], [])
 * Output: Tree = s(np(det(the), nbar(n(men))), vp(v(see), np(det(the), nbar(n(apples)))))
 * 7.
 * Input: s(Tree,[the,men,sees,the,apples], [])
 * Output: false
 * 8.
 * Input: s(Tree,[she,knows,the,man], [])
 * Output: Tree = s(np(pro(she)), vp(v(knows), np(det(the), nbar(n(man)))))
 * 9.
 * Input: s(Tree,[she,know,the,man], [])
 * Output: false
 * 10.
 * Input: s(Tree,[us,sees,the,apple], [])
 * Output: false
 * 11.
 * Input: s(Tree,[i,know,a,short,man], [])
 * Output: Tree = s(np(pro(i)), vp(v(know), np(det(a), nbar(jp(adj(short), n(man))))))
 * 12.
 * Input: s(Tree,[the,tall,woman,sees,the,red], [])
 * Output: false
 * 13.
 * Input: s(Tree,[the,young,tall,man,knows,the,old,short,woman], [])
 * Output: Tree = s(np(det(the), nbar(jp(adj(young), jp(adj(tall), n(man))))), vp(v(knows), np(det(the), nbar(jp(adj(old), jp(adj(short), n(woman)))))))
 * 14.
 * Input: s(Tree,[a,man,tall,knows,the,short,woman], [])
 * Output: false
 * 15.
 * Input: s(Tree,[a,man,on,a,chair,sees,a,woman,in,a,room], [])
 * Output: Tree = s(np(det(a), nbar(n(man)), pp(prep(on), np(det(a), nbar(n(chair))))), vp(v(sees), np(det(a), nbar(n(woman)), pp(prep(in), np(det(a), nbar(n(room)))))))
 * 16.
 * Input: s(Tree,[a,man,on,a,chair,sees,a,woman,a,room,in], [])
 * Output: false
 * 17.
 * Input: s(Tree,[the,tall,young,woman,in,a,room,sees,the,red,apples,under,the,chair], [])
 * Output: Tree = s(np(det(the), nbar(jp(adj(tall), jp(adj(young), n(woman)))), pp(prep(in), np(det(a), nbar(n(room))))), vp(v(sees), np(det(the), nbar(jp(adj(red), n(apples))), pp(prep(under), np(det(the), nbar(n(chair)))))))
 * 18.
 * Input: s(Tree,[the,woman,in,a,room,on,the,chair,in,a,room,in,the,room,sees,the,man], [])
 * Output: Tree = s(np(det(the), nbar(n(woman)), pp(prep(in), np(det(a), nbar(n(room)), pp(prep(on), np(det(the), nbar(n(chair)), pp(prep(in), np(det(a), nbar(n(room)), pp(prep(in), np(det(the), nbar(n(room))))))))))), vp(v(sees), np(det(the), nbar(n(man)))))
*/

/*pronouns(word,pronoun/noun,singular/plural, 1st 2nd or 3rd person, grammatical role(object or subject))*/
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

/*nouns(word,pronoun/noun,singular/plural)*/
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

/*rules 
 * W is noun/pronoun, 
 * X is singular/plural,
 * Y is subject/object
 * Z is 1st/2nd/3rd person*/
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

