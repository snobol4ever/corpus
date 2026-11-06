enum A <e1 e2>;
multi infix:<< - >>(e1, e2) { return "AWW" };
say e1 - e2;
say 5 - 2;
say 1.5 - 1;
