module: dylan-user

define library etpan-test-suite
  use common-dylan;
  use etpan;
  use testworks;
  use system;

  export etpan-test-suite;
end library;

define module etpan-test-suite
  use common-dylan;
  use etpan;
  use testworks;

  export etpan-test-suite;
end module;
