module: mail-test-suite-app

define suite all-mail-test-suites ()
  suite mail-test-suite;
end;

run-test-application(all-mail-test-suites);
