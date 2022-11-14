% defining male or female in overwatch
% split in both male and female
:- initialization(main).

roles(hero, ana, healer).
roles(hero, tracer, dealer).
roles(hero, dva, tanker).
roles(hero, reinhardt, tanker).
roles(hero, winston, tanker).
roles(hero, cassidy, dealer).
roles(hero, orisa, tanker).
roles(hero, zen, healer).
roles(hero, echo, dealer).

roles(villain, reaper, dealer).
roles(villain, moria, healer).
roles(villain, junkrat, dealer).
roles(villain, roadhog, tanker).
roles(villain, sombra, dealer).
roles(villain, sigma, tanker).
roles(villain, doomfist, dealer).
roles(villain, widowmaker, dealer).
roles(villain, ashe, dealer).

% seq(PLACEHOLDER1).


% relations and rules.
game(Organization, Name, Roles):-
    roles(Organization, Name, Roles).


main :- forall(game(PLACEHOLDER1, WhatHero, PLACEHOLDER2),(write(WhatHero:game(PLACEHOLDER1, WhatHero, PLACEHOLDER2)), nl)).


% print character gender
% print role
% print organization
