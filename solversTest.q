.solversTest.testBisect: {[]
  .qunit.assertThat[abs .solvers.bisect[{-2+x*x};1f;2f;()!()]-sqrt[2];<;1e-12;"sqrt 2"];
  .qunit.assertThat[abs .solvers.bisect[{-0.5+exp neg x};0f;1f;()!()]-log[2];<;1e-12;"log 2"];
  };
