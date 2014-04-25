module: etpan-test-suite
synopsis: Test suite for the etpan library.

define test example-test ()
  assert-true(#t);
end test example-test;

define suite etpan-test-suite ()
  test example-test;
end suite;
