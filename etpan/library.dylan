Module: dylan-user

define library etpan
  use common-dylan;
  use io;

  export etpan;
end library;

define module etpan
  use common-dylan, exclude: { format-to-string };
  use format-out;
end module;
