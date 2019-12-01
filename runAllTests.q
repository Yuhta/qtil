\c 1000 1000
projRoot: "/" sv -1_ "/" vs value[{}][6];
system "cd ",projRoot;

\l qunit.q
\l solvers.q
\l solversTest.q
\l bond.q
\l bondTest.q

.qunit.runTests ();
