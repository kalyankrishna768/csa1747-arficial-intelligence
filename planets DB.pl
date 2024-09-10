% Facts defining planets with their name, type, and distance from the Sun (in million kilometers).
% Format: planet(Name, Type, DistanceFromSun).

% Example entries:
planet('Mercury', terrestrial, 57.9).
planet('Venus', terrestrial, 108.2).
planet('Earth', terrestrial, 149.6).
planet('Mars', terrestrial, 227.9).
planet('Jupiter', gas_giant, 778.3).
planet('Saturn', gas_giant, 1427.0).
planet('Uranus', ice_giant, 2871.0).
planet('Neptune', ice_giant, 4497.1).

% Rule to find a planet by name
find_planet(Name, Type, DistanceFromSun) :-
    planet(Name, Type, DistanceFromSun).

% Rule to find all planets of a specific type
planets_of_type(Type, Planets) :-
    findall(Name, planet(Name, Type, _), Planets).

% Rule to find the planet closest to the Sun
closest_planet(Name, DistanceFromSun) :-
    planet(Name, _, DistanceFromSun),
    \+ (planet(_, _, D), D < DistanceFromSun).

% Rule to find the planet farthest from the Sun
farthest_planet(Name, DistanceFromSun) :-
    planet(Name, _, DistanceFromSun),
    \+ (planet(_, _, D), D > DistanceFromSun).

% Example queries:
% ?- find_planet('Earth', Type, Distance).
% Type = terrestrial,
% Distance = 149.6.

% ?- planets_of_type(terrestrial, Planets).
% Planets = ['Mercury', 'Venus', 'Earth', 'Mars'].

% ?- closest_planet(Name, Distance).
% Name = 'Mercury',
% Distance = 57.9.

% ?- farthest_planet(Name, Distance).
% Name = 'Neptune',
% Distance = 4497.1.
