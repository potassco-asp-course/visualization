   sudoku(X,Y,V)                :- initial(X,Y,V).
 { sudoku(X,Y,V) : val(V) } = 1 :- pos(X,Y).
:- sudoku(X,Y,V), sudoku(X',Y,V), X != X'.
:- sudoku(X,Y,V), sudoku(X,Y',V), Y != Y'.
:- sudoku(X,Y,V), sudoku(X',Y',V), (X,Y)!=(X',Y'),
   subgrid(X,Y,S), subgrid(X',Y',S).
