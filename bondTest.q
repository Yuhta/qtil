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
  t: ([] time:0.5*1+til 6; coupon:4);
  .qunit.assertEquals[.bond.yield[104;t];0.06406969623711;"yield"];
  };

.bondTest.testParYield: {[]
  time: 0.5  1.0  1.5   2.0;
  rate: 0.05 0.06 0.065 0.07;
  .qunit.assertEquals[.bond.parYield ([]time;rate);0.07074077478783;"par yield"];
  };

.bondTest.testDuration: {[]
  t: ([] time:1+til 5; coupon:8; rate:0.11);
  .qunit.assertEquals[.bond.duration t;4.25597456342787;"duration"];
  };
