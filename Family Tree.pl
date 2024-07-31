% Facts
father(koang, biel).
father(biel, nyakuoth).
father(biel, mathor).
father(nyakuoth, kueth).
father(nyakuoth, james).
father(nyakuoth, edward).
father(nyakuoth, lines).
father(kueth, mary).
father(kueth, dictor).
father(kueth, jima).
father(kueth, samuel).
father(kueth, gum).
father(kueth, dthour).
father(kueth, nyariik).
father(kueth, athie).
father(kueth, makur).

mother(nyabol, majok).
mother(eliza, mary).
mother(mary, dictor).
mother(mayien, dthour).
mother(mayien, athie).
mother(mayien, samuel).
mother(kuoth, jima).
mother(kuoth, gum).
mother(kuoth, nyariik).

% Rules
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

siblings(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Query examples
% Query: mother(X, mary).
% Result: X = nyibol.
%
% Query: siblings(X, samuel).
% Result: X = dictor ; X = jima ; X = gum ; X = dthour ; X = nyariik ; X = athie ; X = makur.