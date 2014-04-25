module: etpan-test-suite-app

define suite all-etpan-test-suites ()
  suite etpan-test-suite;
end;

run-test-application(all-etpan-test-suites);
