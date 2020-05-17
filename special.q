/ Binomial Coefficient
.special.binom: {[n;k]
  if [n<k; 'domain];
  q: 1+til k;
  p: reverse q+n+neg k;
  mul: {[p;q;x;i] (p[i]*x) div q[i]}[p;q];
  :1 mul/ til k;
  };
