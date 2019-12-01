.bondTest.testPrice: {[]
  t: {flip first[x]!flip 1_x} (0N 3)#(
    `time ; `coupon ; `rate ;
    0.5   ; 2       ; 0.04  ;
    1.0   ; 2       ; 0.042 ;
    1.5   ; 2       ; 0.044 ;
    2.0   ; 2       ; 0.046 ;
    2.5   ; 2       ; 0.048 );
  .qunit.assertEquals[.bond.price[t];98.04049348058;"price"];
  };

.bondTest.testYield: {[]
  time: 0.5*1+til 6;
  coupon: 6#4;
  .qunit.assertEquals[.bond.yield[104;([]time;coupon)];0.06406969623711;"yield"];
  };
