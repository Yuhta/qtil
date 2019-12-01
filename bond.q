/ table t contains the following columns:
/   time: time of each coupon, represented in number of years into the future
/   coupon: value of each coupon
/   rate: zero rates (with continuous compounding)
.bond.price: {[t]
  c: `float$t `coupon;
  c[-1+count t] +: 100f;
  :sum c*exp neg t[`rate]*t[`time];
  };

/ p: price
/ t: coupon schedule
.bond.yield: {[p;t]
  c: `float$t `coupon;
  c[-1+count t] +: 100f;
  f: {[p;c;t;y] p-sum c*exp neg y*t}[p;c;t`time];
  b: log[p%sum c]%neg first t`time;
  :.solvers.bisect[f;0f;b;()!()];
  };

.bond.parYield: {[t]
  d: exp neg t[`rate]*t[`time];
  :(1-last d)%(0.5*sum d);
  };
