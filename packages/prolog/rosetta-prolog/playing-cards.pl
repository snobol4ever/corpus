/** <module> Cards

  A card is represented by the term "card(Pip, Suit)".
  A deck is represented internally as a list of cards.

  Usage:
  new_deck(D0), deck_shuffle(D0, D1), deck_deal(D1, C, D2).
*/
:- module(cards, [ new_deck/1,     % -Deck
                   deck_shuffle/2, % +Deck, -NewDeck
                   deck_deal/3,    % +Deck, -Card, -NewDeck
                   print_deck/1    % +Deck
                  ]).

%% new_deck(-Deck)
new_deck(Deck) :-
        Suits = [clubs, hearts, spades, diamonds],
        Pips = [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace],
        setof(card(Pip, Suit), (member(Suit, Suits), member(Pip, Pips)), Deck).

%% deck_shuffle(+Deck, -NewDeck)
deck_shuffle(Deck, NewDeck) :-
        length(Deck, NumCards),
        findall(X, (between(1, NumCards, _I), X is random(1000)), Ord),
        pairs_keys_values(Pairs, Ord, Deck),
        keysort(Pairs, OrdPairs),
        pairs_values(OrdPairs, NewDeck).

%% deck_deal(+Deck, -Card, -NewDeck)
deck_deal([Card|Cards], Card, Cards).

%% print_deck(+Deck)
print_deck(Deck) :-
        maplist(print_card, Deck).

% print_card(+Card)
print_card(card(Pip, Suit)) :-
        format('~a of ~a~n', [Pip, Suit]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this module defines new_deck/1, print_deck/1 and deck_deal/3 and never calls them; the driver prints a new deck and deals one card (deck_shuffle/2 is random/1 and is not called).
:- initialization((new_deck(D), print_deck(D), deck_deal(D, C, D1), length(D1, N), format("dealt ~w, ~w left~n", [C, N]))).
