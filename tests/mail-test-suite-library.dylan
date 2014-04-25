module: dylan-user

define library mail-test-suite
  use common-dylan;
  use mail;
  use testworks;
  use system;

  export mail-test-suite;
end library;

define module mail-test-suite
  use common-dylan;
  use mail;
  use testworks;

  export mail-test-suite;
end module;
