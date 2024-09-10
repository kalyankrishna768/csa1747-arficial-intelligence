% Base case: the sum of integers from 1 to 0 is 0
sum_to_n(0, 0).

% Recursive case: the sum of integers from 1 to N is N plus the sum of integers from 1 to (N-1)
sum_to_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_to_n(N1, Sum1),
    Sum is N + Sum1.

% Example query:
% ?- sum_to_n(5, Sum).
% Sum = 15.
