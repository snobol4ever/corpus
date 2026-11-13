say (1 ... *).map({ $_ * $_ }).grep({ $_ %% 3 }).head(4);
say (1 ... *).is-lazy;
