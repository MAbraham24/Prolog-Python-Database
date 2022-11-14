% defining male or female in overwatch
% split in both male and female
female(ana).
female(tracer).
female(widowmaker).
male(reinhardt).
male(winston).
robot(orisa).
robot(zenyatta).
male(cassidy).
female(dva).
robot(echo).
female(zarya).
male(baptiste).
female(mercy).
female(moria).
male(lucio).
female(brigitte).
male(doomfist).
male(hanzo).
male(junkrat).
male(roadhog).
male(genji).
female(ashe).
female(mei).
male(reaper).
male(sigma).
male(soldier).
female(sombra).
male(ball).
female(symmetra).
male(torb).
female(phara).
robot(bastion).

% putting female into different groups hero vs villain
hero(ana).
hero(tracer).
hero(reinhardt).
hero(soldier).
hero(torb).
hero(echo).
hero(winston).
hero(genji).
hero(brigitte).
hero(zenyatta).
hero(phara).
hero(mercy).
hero(cassidy).
hero(lucio).
hero(dva).
hero(baptiste).
hero(mei).
villain(reaper).
villain(moria).
villain(junkrat).
villain(roadhog).
villain(sombra).
villain(sigma).
villain(doomfist).
villain(widowmaker).
villain(ashe).
villain(ball).
villain(bastion).
others(hanzo).
others(orisa).
others(symmetra).
others(zarya).

% defining roles in game.

sup(ana).
sup(moria).
sup(baptiste).
sup(brigitte).
sup(zenyatta).
sup(mercy).
sup(lucio).

dps(symmetra).
dps(junkrat).
dps(bastion).
dps(mcree).
dps(genji).
dps(hanzo).
dps(ashe).
dps(widowmaker).
dps(doomfist).
dps(sombra).
dps(reaper).
dps(mei).
dps(cassidy).
dps(phara).
dps(echo).
dps(torb).
dps(soldier).
dps(tracer).

tank(winston).
tank(sigma).
tank(ball).
tank(reinhardt).
tank(orisa).
tank(roadhog).
tank(zarya).
tank(dva).

% relations and rules.
heros(H, C):-
    male(H);
    female(H),
    hero(H, C).

villain(V,C):-
    female(V);
    male(V),
    villain(V, C).

dmg(D, C):-
    male(D);
    female(D),
    dps(D, C).

healer(H, C):-
    male(H);
    female(H),
    dps(H, C).

tanker(T, C):-
    male(T);
    female(T),
    dps(T, C).

robo(R, C):-
    robot(R),
    dps(R, C);
    sup(R, C);
    tank(R, C).

write('hello world/n').
