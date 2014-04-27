module: dylan-user

define library examples-etpan-imap
  use common-dylan;
  use io;
  use c-ffi;
  use etpan;
end library;

define module examples-etpan-imap
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use c-ffi;
  use etpan;
end module;
