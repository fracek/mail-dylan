module: examples-etpan-imap

define function main (name :: <string>, arguments :: <vector>)
  if (size(arguments) < 3)
    format-out("usage: %s gmail-address password\n", name);
    exit-application(1);
  end if;
  let imap = mailimap-new(0, $NULL);

  mailimap-free(imap);
  exit-application(0);
end function main;

main(application-name(), application-arguments());
