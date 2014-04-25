module: mail-test-suite
synopsis: Test suite for the mail library.

define test example-test ()
  assert-true(#t);
end test example-test;

define suite mail-test-suite ()
  test example-test;
end suite;
