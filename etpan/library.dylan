Module: dylan-user

define library etpan
  use common-dylan;
  use io;
  use c-ffi;

  export etpan;
end library;

define module etpan
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use c-ffi;

  export
    libetpan-get-version-major,
    libetpan-get-version-minor;
end module;
