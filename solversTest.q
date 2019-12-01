.solversTest.testBisect: {[]
  .qunit.assertEquals[.solvers.bisect[{-2+x*x};1f;2f;()!()];sqrt 2;"sqrt 2"];
  .qunit.assertEquals[.solvers.bisect[{-0.5+exp neg x};0f;1f;()!()];log 2;"log 2"];
  };
