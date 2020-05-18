.specialTest.testBinom: {
  .qunit.assertEquals[.special.binom[7;3];35;"binom[7;3]"];
  .qunit.assertEquals[.special.binom[10;0];1;"binom[10;0]"];
  .qunit.assertEquals[.special.binom[10;1];10;"binom[10;1]"];
  .qunit.assertEquals[.special.binom[0;0];1;"binom[0;0]"];
  .qunit.assertThrows[.special.binom[10];-1;"domain";"binom[10;-1]"];
  .qunit.assertThrows[.special.binom[10];11;"domain";"binom[10;11]"];
  .qunit.assertThrows[.special.binom[-10];1;"domain";"binom[-10;1]"];
  };

.specialTest.testFactor: {
  .qunit.assertEquals[.special.factor `long$1e9+7;enlist `long$1e9+7;"factor `long$1e9+7"];
  .qunit.assertEquals[.special.factor 60;2 2 3 5;"factor 60"];
  };
