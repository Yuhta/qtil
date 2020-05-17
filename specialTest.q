.specialTest.testBinom: {
  .qunit.assertEquals[.special.binom[7;3];35;"binom[7;3]"];
  .qunit.assertEquals[.special.binom[10;0];1;"binom[10;0]"];
  .qunit.assertEquals[.special.binom[10;1];10;"binom[10;1]"];
  .qunit.assertEquals[.special.binom[0;0];1;"binom[0;0]"];
  .qunit.assertThrows[.special.binom[10];-1;"domain";"binom[10;-1]"];
  .qunit.assertThrows[.special.binom[10];11;"domain";"binom[10;11]"];
  .qunit.assertThrows[.special.binom[-10];1;"domain";"binom[-10;1]"];
  };
