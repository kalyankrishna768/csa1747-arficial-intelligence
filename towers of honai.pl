% The base case for moving a single disk
move(1, A, B, _) :-
    format('Move disk from ~w to ~w~n', [A, B]).

% Recursive case for moving more than one disk
move(N, A, B, C) :-
    N > 1,
    M is N - 1,
    move(M, A, C, B),  % Move N-1 disks from A to C using B as auxiliary
    move(1, A, B, _),  % Move the remaining disk from A to B
    move(M, C, B, A).  % Move N-1 disks from C to B using A as auxiliary

% To start the process, use this predicate
hanoi(N) :-
    move(N, start, target, auxiliary).

% Example usage:
% ?- hanoi(3).
