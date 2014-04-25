Module: dylan-user

define library mail
  use common-dylan;
  use io;

  export mail;
end library;

define module mail
  use common-dylan, exclude: { format-to-string };
  use format-out;
end module;
