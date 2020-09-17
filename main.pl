parent(sheliganova_taya, murygina_clavdia).
parent(sheliganova_taya, sheliganova_tatyana).
parent(sheliganova_taya, perseva_nataliya).
parent(sheliganov_nikolai, murygina_clavdia).
parent(sheliganov_nikolai, sheliganova_tatyana).
parent(sheliganov_nikolai, perseva_nataliya).
parent(murygina_clavdia ,belyakova_larisa).
parent(murygina_clavdia ,murygin_alexei).
parent(murygin_ivan, belyakova_larisa).
parent(murygin_ivan, murygin_alexei).
parent(perseva_nataliya, perseva_lena).
parent(perseva_nataliya, krivoruchko_ekaterina).
parent(persev_nikolai, perseva_lena).
parent(persev_nikolai, krivoruchko_ekaterina).
parent(belyakov_boris, belyakov_alexei).
parent(belyakov_boris, belyakov_sergei).
parent(belyakova_lydmila, belyakov_alexei).
parent(belyakova_lydmila, belyakov_sergei).
parent(belyakova_olga, belyakova_veronica).
parent(belyakova_olga, belyakova_anastasiya).
parent(belyakov_alexei, belyakova_veronica).
parent(belyakov_alexei, belyakova_anastasiya).
parent(belyakov_sergei, belyakov_dmitriy).
parent(belyakov_sergei, belyakova_ekaterina).
parent(belyakova_larisa, belyakov_dmitriy).
parent(belyakova_larisa, belyakova_ekaterina).
parent(murygin_alexei, murygin_ilya).
parent(murygin_alexei, murygina_ksenia).
parent(murygina_inna, murygin_ilya).
parent(murygina_inna, murygina_ksenia).

male(sheliganov_nikolai).
male(belyakov_boris).
male(murygin_ivan).
male(persev_nikolai).
male(belyakov_alexei).
male(belyakov_sergei).
male(murygin_alexei).
male(belyakov_dmitriy).
male(murygin_ilya).

female(sheliganova_taya).
female(belyakova_lydmila).
female(murygina_clavdia).
female(sheliganova_tatyana).
female(perseva_nataliya).
female(belyakova_olga).
female(belyakova_larisa).
female(murygina_inna).
female(perseva_lena).
female(krivoruchko_ekaterina).
female(belyakova_veronica).
female(belyakova_anastasiya).
female(belyakova_ekaterina).
female(murygina_ksenia).

predecessor(X, Y) :- parent(X, Y).
predecessor(X, Y) :- parent(Z, Y), predecessor(X, Z).
mother(X, Y) :- female(X), parent(X, Y).
father(X, Y) :- male(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
sister(X, Y) :- female(X), sibling(X, Y).
brother(X, Y) :- male(X), sibling(X, Y).
grandparent(X, Y) :- parent(Z, Y), parent(X, Z).
grand_grandparent(X, Y) :- grandparent(Z, Y), parent(X, Z).
parent_sibling(X, Y) :- sibling(X, Z), parent(Z, Y).
uncle(X, Y) :- male(X), parent_sibling(X, Y).
aunt(X, Y) :- female(X), parent_sibling(X, Y).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
