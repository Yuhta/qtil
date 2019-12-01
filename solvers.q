.solvers.bisect: {[f;a;b;opt]
  tol: $[`tol in key opt; opt `tol; 1e-14];
  dx: b-a;
  root: a;
  if [0f<f a; dx: a-b; root: b];
  while [tol<=abs dx;
    dx *: 0.5;
    x: root+dx;
    if [0f>=f x; root: x];
    ];
  :root;
  };
