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

  // Mail and MailMessage List
  export
    <mail-list>,
    <mail-list*>,
    <mailmessage>,
    <mailmessage*>,
    <mailmessage-list>,
    <mailmessage-list*>,
    mail-list-free,
    mailmessage-free,
    mailmessage-list-free;

  // Mail Session
  export
    <mailsession*>,
    <mailsession-driver*>,
    <mailstream*>,
    mailsession-new,
    mailsession-free,
    mailsession-parameters,
    mailsession-connect-stream,
    mailsession-connect-path,
    mailsession-starttls,
    mailsession-login,
    mailsession-logout,
    mailsession-noop,
    mailsession-build-folder-name,
    mailsession-create-folder,
    mailsession-delete-folder,
    mailsession-rename-folder,
    mailsession-check-folder,
    mailsession-examine-folder,
    mailsession-select-folder,
    mailsession-expunge-folder,
    mailsession-status-folder,
    mailsession-messages-number,
    mailsession-recent-number,
    mailsession-unseen-number,
    mailsession-list-folders,
    mailsession-lsub-folders,
    mailsession-subscribe-folder,
    mailsession-unsubscribe-folder,
    mailsession-append-message,
    mailsession-append-message-flags,
    mailsession-copy-message,
    mailsession-move-message,
    mailsession-get-messages-list,
    mailsession-get-envelopes-list,
    mailsession-remove-message,
    mailsession-get-message,
    mailsession-get-message-by-uid,
    mailsession-login-sasl;
end module;
