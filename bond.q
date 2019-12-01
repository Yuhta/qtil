/ table t contains the following columns:
/   time: time of each coupon, represented in number of years into the future
/   coupon: value of each coupon
/   rate: zero rates (with continuous compounding)
.bond.price: {[t]
  c: `float$t `coupon;
  c[-1+count t] +: 100f;
  :sum c*exp neg t[`rate]*t[`time];
  };
