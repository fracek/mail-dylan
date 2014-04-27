module: examples-etpan-imap

define function check-error (err :: <integer>, msg :: <string>)
  if (err ~= $MAILIMAP-NO-ERROR &
      err ~= $MAILIMAP-NO-ERROR-AUTHENTICATED &
      err ~= $MAILIMAP-NO-ERROR-NON-AUTHENTICATED)
    format-out("error %d: %s\n", err, msg);
    exit-application(1);
  end if;
end;

define function fetch-messages (imap :: <mailimap*>)
  let set :: <mailimap-set*> = mailimap-set-new-interval(1, 0);
  let fetch-type = mailimap-fetch-type-new-fetch-att-list-empty();
  let fetch-att = mailimap-fetch-att-new-uid();
  mailimap-fetch-type-new-fetch-att-list-add(fetch-type, fetch-att);

  let (r, fetch-result) = mailimap-fetch(imap, set, fetch-type);
  check-error(r, "could not fetch");

  format-out("size: %d\n", size(fetch-result));
  // for each message

  mailimap-fetch-list-free(fetch-result);
end function;

define function main (name :: <string>, arguments :: <vector>)
  if (size(arguments) < 2)
    format-out("usage: %s gmail-address password\n", name);
    exit-application(1);
  end if;

  let current-directory = home-directory();
  let downloads-directory = create-directory(current-directory, "IMAPBackup");
  let imap = mailimap-new(0, null-pointer(<progress-function*>));
  let r = mailimap-ssl-connect(imap, "imap.gmail.com", 993);
  check-error(r, "could not connect to server");

  r := mailimap-login(imap, arguments[0], arguments[1]);
  check-error(r, "could not login");

  r := mailimap-select(imap, "INBOX");
  check-error(r, "could not select INBOX");

  fetch-messages(imap);

  mailimap-logout(imap);
  mailimap-free(imap);
  exit-application(0);
end function main;

main(application-name(), application-arguments());
