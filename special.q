/ Binomial Coefficient
.special.binom: {[n;k]
  if [n<k; 'domain];
  q: 1+til k;
  p: reverse q+n+neg k;
  mul: {[p;q;x;i] (p[i]*x) div q[i]}[p;q];
  :1 mul/ til k;
  };

.special.factor: {[n]
  n0: n;
  i: 2;
  ans: `long$();
  while [n0>=i*i;
    while [0=n mod i;
      n: n div i;
      ans,:i;
      ];
    i+:1;
    ];
  if [1<n; ans,:n];
  :ans;
  };
