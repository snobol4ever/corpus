say (try { (^10).batch(0); "lived" }) // "died";
say (^5).batch(2).map(*.join(",")).join(" ");
