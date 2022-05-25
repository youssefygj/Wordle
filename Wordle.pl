merge(X,[],X):-!.
merge([],X,X):-!.
merge([H|T],[H1|T1],Z):- H < H1, merge(T,T1,Z2), Z = [H,H1|Z2].
merge([H|T],[H1|T1],Z):- H1 < H, merge(T,T1,Z2), Z = [H1,H|Z2].