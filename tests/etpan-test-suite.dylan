module: etpan-test-suite
synopsis: Test suite for the etpan library.

define test get-version-test ()
  let version-major = libetpan-get-version-major();
  let version-minor = libetpan-get-version-minor();

  assert-true(instance?(version-major, <integer>));
  assert-true(instance?(version-minor, <integer>));
end test;

define suite etpan-test-suite ()
  test get-version-test;
end suite;
