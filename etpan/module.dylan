module: dylan-user

define module etpan
  use common-dylan;
  use c-ffi;
  export
    $CHASH-COPYALL,
    $CHASH-COPYKEY,
    $CHASH-COPYNONE,
    $CHASH-COPYVALUE,
    $CHASH-DEFAULTSIZE,
    $LIBETPAN-API-COMPATIBILITY,
    $LIBETPAN-API-CURRENT,
    $LIBETPAN-API-REVISION,
    $LIBETPAN-REENTRANT,
    $LIBETPAN-VERSION-MAJOR,
    $LIBETPAN-VERSION-MINOR,
    $MAIL-CHARCONV-ERROR-CONV,
    $MAIL-CHARCONV-ERROR-MEMORY,
    $MAIL-CHARCONV-ERROR-UNKNOWN-CHARSET,
    $MAIL-CHARCONV-NO-ERROR,
    <FILE*>,
    <FILE>,
    <MMAPString*>,
    <MMAPString>,
    <_MMAPString>,
    <__darwin-off-t>,
    <__darwin-size-t>,
    <__darwin-ssize-t>,
    <__darwin-time-t>,
    <__int64-t>,
    <__sFILE>,
    <__sFILEX*>,
    <__sFILEX>,
    <__sbuf>,
    <_close>,
    <_mailstream-low>,
    <_mailstream>,
    <_read>,
    <_seek>,
    <_write>,
    <anonymous-473>,
    <anonymous-504>,
    <anonymous-505>,
    <anonymous-509>,
    <anonymous-510>,
    <anonymous-511>,
    <anonymous-724>,
    <anonymous-93>,
    <anonymous-94>,
    <carray*>,
    <carray-s>,
    <carray>,
    <char**>,
    <char*>,
    <chash*>,
    <chash>,
    <chashcell**>,
    <chashcell*>,
    <chashcell>,
    <chashdatum*>,
    <chashdatum>,
    <chashiter*>,
    <chashiter>,
    <clist*>,
    <clist-s>,
    <clist>,
    <clistcell*>,
    <clistcell-s*>,
    <clistcell-s>,
    <clistcell>,
    <clistiter*>,
    <clistiter>,
    <comp-func>,
    <decrypt>,
    <encrypt>,
    <fpos-t>,
    <is-encrypted>,
    <logger>,
    <mail-flags**>,
    <mail-flags*>,
    <mail-flags>,
    <mail-list**>,
    <mail-list*>,
    <mail-list>,
    <mailengine*>,
    <mailengine>,
    <mailfolder*>,
    <mailfolder>,
    <mailimf-address-list*>,
    <mailimf-address-list>,
    <mailimf-bcc*>,
    <mailimf-bcc>,
    <mailimf-cc*>,
    <mailimf-cc>,
    <mailimf-comments*>,
    <mailimf-comments>,
    <mailimf-date-time*>,
    <mailimf-date-time>,
    <mailimf-fields**>,
    <mailimf-fields*>,
    <mailimf-fields>,
    <mailimf-from*>,
    <mailimf-from>,
    <mailimf-in-reply-to*>,
    <mailimf-in-reply-to>,
    <mailimf-keywords*>,
    <mailimf-keywords>,
    <mailimf-mailbox*>,
    <mailimf-mailbox-list*>,
    <mailimf-mailbox-list>,
    <mailimf-mailbox>,
    <mailimf-message-id*>,
    <mailimf-message-id>,
    <mailimf-orig-date*>,
    <mailimf-orig-date>,
    <mailimf-references*>,
    <mailimf-references>,
    <mailimf-reply-to*>,
    <mailimf-reply-to>,
    <mailimf-sender*>,
    <mailimf-sender>,
    <mailimf-single-fields>,
    <mailimf-subject*>,
    <mailimf-subject>,
    <mailimf-to*>,
    <mailimf-to>,
    <mailmessage**>,
    <mailmessage*>,
    <mailmessage-driver*>,
    <mailmessage-driver>,
    <mailmessage-list**>,
    <mailmessage-list*>,
    <mailmessage-list>,
    <mailmessage-tree**>,
    <mailmessage-tree*>,
    <mailmessage-tree>,
    <mailmessage>,
    <mailmime**>,
    <mailmime*>,
    <mailmime-composite-type*>,
    <mailmime-composite-type>,
    <mailmime-content*>,
    <mailmime-content>,
    <mailmime-data*>,
    <mailmime-data>,
    <mailmime-discrete-type*>,
    <mailmime-discrete-type>,
    <mailmime-fields*>,
    <mailmime-fields>,
    <mailmime-type*>,
    <mailmime-type>,
    <mailmime>,
    <mailprivacy*>,
    <mailprivacy-encryption*>,
    <mailprivacy-encryption>,
    <mailprivacy-protocol*>,
    <mailprivacy-protocol>,
    <mailprivacy>,
    <mailprogress-function*>,
    <mailprogress-function>,
    <mailsem*>,
    <mailsem>,
    <mailsession**>,
    <mailsession*>,
    <mailsession-driver*>,
    <mailsession-driver>,
    <mailsession>,
    <mailsmtp*>,
    <mailsmtp>,
    <mailstorage*>,
    <mailstorage-driver*>,
    <mailstorage-driver>,
    <mailstorage>,
    <mailstream*>,
    <mailstream-cancel*>,
    <mailstream-cancel>,
    <mailstream-close>,
    <mailstream-free>,
    <mailstream-get-cancel>,
    <mailstream-get-certificate-chain>,
    <mailstream-get-fd>,
    <mailstream-interrupt-idle>,
    <mailstream-low*>,
    <mailstream-low-driver*>,
    <mailstream-low-driver>,
    <mailstream-low>,
    <mailstream-read>,
    <mailstream-setup-idle>,
    <mailstream-unsetup-idle>,
    <mailstream-write>,
    <mailstream>,
    <msg-check>,
    <msg-fetch-body>,
    <msg-fetch-envelope>,
    <msg-fetch-header>,
    <msg-fetch-result-free>,
    <msg-fetch-section-body>,
    <msg-fetch-section-header>,
    <msg-fetch-section-mime>,
    <msg-fetch-section>,
    <msg-fetch-size>,
    <msg-fetch>,
    <msg-flush>,
    <msg-get-bodystructure>,
    <msg-get-flags>,
    <msg-initialize>,
    <msg-uninitialize>,
    <progress-function*>,
    <progress-function>,
    <sess-append-message-flags>,
    <sess-append-message>,
    <sess-build-folder-name>,
    <sess-check-folder>,
    <sess-connect-path>,
    <sess-connect-stream>,
    <sess-copy-message>,
    <sess-create-folder>,
    <sess-delete-folder>,
    <sess-examine-folder>,
    <sess-expunge-folder>,
    <sess-get-envelopes-list>,
    <sess-get-message-by-uid>,
    <sess-get-message>,
    <sess-get-messages-list>,
    <sess-initialize>,
    <sess-list-folders>,
    <sess-login-sasl>,
    <sess-login>,
    <sess-logout>,
    <sess-lsub-folders>,
    <sess-messages-number>,
    <sess-move-message>,
    <sess-noop>,
    <sess-parameters>,
    <sess-recent-number>,
    <sess-remove-message>,
    <sess-rename-folder>,
    <sess-select-folder>,
    <sess-starttls>,
    <sess-status-folder>,
    <sess-subscribe-folder>,
    <sess-uninitialize>,
    <sess-unseen-number>,
    <sess-unsubscribe-folder>,
    <size-t*>,
    <size-t>,
    <smtp-logger>,
    <ssize-t>,
    <statically-typed-pointer*>,
    <sto-connect>,
    <sto-get-folder-session>,
    <sto-uninitialize>,
    <time-t>,
    <uint16-t>,
    <uint32-t*>,
    <uint32-t>,
    <unsigned-char*>,
    <unsigned-char<@1>>,
    <unsigned-char<@3>>,
    <unsigned-int*>,
    _MMAPString$allocated-len,
    _MMAPString$allocated-len-setter,
    _MMAPString$fd,
    _MMAPString$fd-setter,
    _MMAPString$len,
    _MMAPString$len-setter,
    _MMAPString$mmapped-size,
    _MMAPString$mmapped-size-setter,
    _MMAPString$str,
    _MMAPString$str-setter,
    __sFILE$_bf,
    __sFILE$_bf-setter,
    __sFILE$_blksize,
    __sFILE$_blksize-setter,
    __sFILE$_close,
    __sFILE$_close-setter,
    __sFILE$_cookie,
    __sFILE$_cookie-setter,
    __sFILE$_extra,
    __sFILE$_extra-setter,
    __sFILE$_file,
    __sFILE$_file-setter,
    __sFILE$_flags,
    __sFILE$_flags-setter,
    __sFILE$_lb,
    __sFILE$_lb-setter,
    __sFILE$_lbfsize,
    __sFILE$_lbfsize-setter,
    __sFILE$_nbuf,
    __sFILE$_nbuf-setter,
    __sFILE$_offset,
    __sFILE$_offset-setter,
    __sFILE$_p,
    __sFILE$_p-setter,
    __sFILE$_r,
    __sFILE$_r-setter,
    __sFILE$_read,
    __sFILE$_read-setter,
    __sFILE$_seek,
    __sFILE$_seek-setter,
    __sFILE$_ub,
    __sFILE$_ub-setter,
    __sFILE$_ubuf,
    __sFILE$_ubuf-setter,
    __sFILE$_ur,
    __sFILE$_ur-setter,
    __sFILE$_w,
    __sFILE$_w-setter,
    __sFILE$_write,
    __sFILE$_write-setter,
    __sbuf$_base,
    __sbuf$_base-setter,
    __sbuf$_size,
    __sbuf$_size-setter,
    _mailstream$buffer-max-size,
    _mailstream$buffer-max-size-setter,
    _mailstream$idle,
    _mailstream$idle-setter,
    _mailstream$idling,
    _mailstream$idling-setter,
    _mailstream$logger,
    _mailstream$logger-context,
    _mailstream$logger-context-setter,
    _mailstream$logger-setter,
    _mailstream$low,
    _mailstream$low-setter,
    _mailstream$read-buffer,
    _mailstream$read-buffer-len,
    _mailstream$read-buffer-len-setter,
    _mailstream$read-buffer-setter,
    _mailstream$write-buffer,
    _mailstream$write-buffer-len,
    _mailstream$write-buffer-len-setter,
    _mailstream$write-buffer-setter,
    _mailstream_low$data,
    _mailstream_low$data-setter,
    _mailstream_low$driver,
    _mailstream_low$driver-setter,
    _mailstream_low$identifier,
    _mailstream_low$identifier-setter,
    _mailstream_low$logger,
    _mailstream_low$logger-context,
    _mailstream_low$logger-context-setter,
    _mailstream_low$logger-setter,
    _mailstream_low$privacy,
    _mailstream_low$privacy-setter,
    _mailstream_low$timeout,
    _mailstream_low$timeout-setter,
    anonymous-473$tp-composite-type,
    anonymous-473$tp-composite-type-setter,
    anonymous-473$tp-discrete-type,
    anonymous-473$tp-discrete-type-setter,
    anonymous-504$dt-data,
    anonymous-504$dt-data-setter,
    anonymous-504$dt-length,
    anonymous-504$dt-length-setter,
    anonymous-505$dt-filename,
    anonymous-505$dt-filename-setter,
    anonymous-505$dt-text,
    anonymous-505$dt-text-setter,
    anonymous-509$mm-epilogue,
    anonymous-509$mm-epilogue-setter,
    anonymous-509$mm-mp-list,
    anonymous-509$mm-mp-list-setter,
    anonymous-509$mm-preamble,
    anonymous-509$mm-preamble-setter,
    anonymous-510$mm-fields,
    anonymous-510$mm-fields-setter,
    anonymous-510$mm-msg-mime,
    anonymous-510$mm-msg-mime-setter,
    anonymous-511$mm-message,
    anonymous-511$mm-message-setter,
    anonymous-511$mm-multipart,
    anonymous-511$mm-multipart-setter,
    anonymous-511$mm-single,
    anonymous-511$mm-single-setter,
    anonymous-724$sasl-auth-name,
    anonymous-724$sasl-auth-name-setter,
    anonymous-724$sasl-conn,
    anonymous-724$sasl-conn-setter,
    anonymous-724$sasl-login,
    anonymous-724$sasl-login-setter,
    anonymous-724$sasl-password,
    anonymous-724$sasl-password-setter,
    anonymous-724$sasl-realm,
    anonymous-724$sasl-realm-setter,
    anonymous-724$sasl-secret,
    anonymous-724$sasl-secret-setter,
    anonymous-724$sasl-server-fqdn,
    anonymous-724$sasl-server-fqdn-setter,
    carray-add,
    carray-count,
    carray-data,
    carray-delete,
    carray-delete-fast,
    carray-delete-slow,
    carray-free,
    carray-get,
    carray-new,
    carray-set,
    carray-set-size,
    carray_s$array,
    carray_s$array-setter,
    carray_s$len,
    carray_s$len-setter,
    carray_s$max,
    carray_s$max-setter,
    charconv,
    charconv-buffer,
    charconv-buffer-free,
    chash$cells,
    chash$cells-setter,
    chash$copykey,
    chash$copykey-setter,
    chash$copyvalue,
    chash$copyvalue-setter,
    chash$count,
    chash$count-setter,
    chash$size,
    chash$size-setter,
    chash-begin,
    chash-clear,
    chash-count,
    chash-delete,
    chash-free,
    chash-get,
    chash-key,
    chash-new,
    chash-next,
    chash-resize,
    chash-set,
    chash-size,
    chash-value,
    chashcell$func,
    chashcell$func-setter,
    chashcell$key,
    chashcell$key-setter,
    chashcell$next,
    chashcell$next-setter,
    chashcell$value,
    chashcell$value-setter,
    chashdatum$data,
    chashdatum$data-setter,
    chashdatum$len,
    chashdatum$len-setter,
    clist_s$count,
    clist_s$count-setter,
    clist_s$first,
    clist_s$first-setter,
    clist_s$last,
    clist_s$last-setter,
    clistcell_s$data,
    clistcell_s$data-setter,
    clistcell_s$next,
    clistcell_s$next-setter,
    clistcell_s$previous,
    clistcell_s$previous-setter,
    data-message-detach-mime,
    data-message-init,
    db-mailstorage-init,
    extended-charconv,
    feed-mailstorage-init,
    hotmail-mailstorage-init,
    imap-mailstorage-init,
    imap-mailstorage-init-sasl,
    imap-mailstorage-init-sasl-with-local-address,
    libetpan-engine-debug,
    libetpan-engine-free,
    libetpan-engine-get-privacy,
    libetpan-engine-new,
    libetpan-folder-connect,
    libetpan-folder-disconnect,
    libetpan-folder-fetch-env-list,
    libetpan-folder-free-msg-list,
    libetpan-folder-get-msg-list,
    libetpan-get-version-major,
    libetpan-get-version-minor,
    libetpan-message-get-folder,
    libetpan-message-get-storage,
    libetpan-message-mime-ref,
    libetpan-message-mime-unref,
    libetpan-message-ref,
    libetpan-message-register,
    libetpan-message-unref,
    libetpan-storage-add,
    libetpan-storage-connect,
    libetpan-storage-disconnect,
    libetpan-storage-remove,
    libetpan-storage-used,
    mail-build-thread,
    mail-thread-sort,
    mail_flags$fl-extension,
    mail_flags$fl-extension-setter,
    mail_flags$fl-flags,
    mail_flags$fl-flags-setter,
    mail_list$mb-list,
    mail_list$mb-list-setter,
    maildir-mailstorage-init,
    mailesmtp-auth-sasl,
    mailesmtp-ehlo,
    mailesmtp-ehlo-with-ip,
    mailesmtp-mail,
    mailesmtp-mail-size,
    mailesmtp-rcpt,
    mailesmtp-starttls,
    mailfolder$fld-children,
    mailfolder$fld-children-setter,
    mailfolder$fld-parent,
    mailfolder$fld-parent-setter,
    mailfolder$fld-pathname,
    mailfolder$fld-pathname-setter,
    mailfolder$fld-pos,
    mailfolder$fld-pos-setter,
    mailfolder$fld-session,
    mailfolder$fld-session-setter,
    mailfolder$fld-shared-session,
    mailfolder$fld-shared-session-setter,
    mailfolder$fld-sibling-index,
    mailfolder$fld-sibling-index-setter,
    mailfolder$fld-storage,
    mailfolder$fld-storage-setter,
    mailfolder$fld-user-data,
    mailfolder$fld-user-data-setter,
    mailfolder$fld-virtual-name,
    mailfolder$fld-virtual-name-setter,
    mailfolder-add-child,
    mailfolder-append-message,
    mailfolder-append-message-flags,
    mailfolder-check,
    mailfolder-connect,
    mailfolder-detach-parent,
    mailfolder-disconnect,
    mailfolder-expunge,
    mailfolder-free,
    mailfolder-get-envelopes-list,
    mailfolder-get-message,
    mailfolder-get-message-by-uid,
    mailfolder-get-messages-list,
    mailfolder-new,
    mailfolder-noop,
    mailfolder-status,
    mailimf_address_list$ad-list,
    mailimf_address_list$ad-list-setter,
    mailimf_bcc$bcc-addr-list,
    mailimf_bcc$bcc-addr-list-setter,
    mailimf_cc$cc-addr-list,
    mailimf_cc$cc-addr-list-setter,
    mailimf_comments$cm-value,
    mailimf_comments$cm-value-setter,
    mailimf_date_time$dt-day,
    mailimf_date_time$dt-day-setter,
    mailimf_date_time$dt-hour,
    mailimf_date_time$dt-hour-setter,
    mailimf_date_time$dt-min,
    mailimf_date_time$dt-min-setter,
    mailimf_date_time$dt-month,
    mailimf_date_time$dt-month-setter,
    mailimf_date_time$dt-sec,
    mailimf_date_time$dt-sec-setter,
    mailimf_date_time$dt-year,
    mailimf_date_time$dt-year-setter,
    mailimf_date_time$dt-zone,
    mailimf_date_time$dt-zone-setter,
    mailimf_fields$fld-list,
    mailimf_fields$fld-list-setter,
    mailimf_from$frm-mb-list,
    mailimf_from$frm-mb-list-setter,
    mailimf_in_reply_to$mid-list,
    mailimf_in_reply_to$mid-list-setter,
    mailimf_keywords$kw-list,
    mailimf_keywords$kw-list-setter,
    mailimf_mailbox$mb-addr-spec,
    mailimf_mailbox$mb-addr-spec-setter,
    mailimf_mailbox$mb-display-name,
    mailimf_mailbox$mb-display-name-setter,
    mailimf_mailbox_list$mb-list,
    mailimf_mailbox_list$mb-list-setter,
    mailimf_message_id$mid-value,
    mailimf_message_id$mid-value-setter,
    mailimf_orig_date$dt-date-time,
    mailimf_orig_date$dt-date-time-setter,
    mailimf_references$mid-list,
    mailimf_references$mid-list-setter,
    mailimf_reply_to$rt-addr-list,
    mailimf_reply_to$rt-addr-list-setter,
    mailimf_sender$snd-mb,
    mailimf_sender$snd-mb-setter,
    mailimf_single_fields$fld-bcc,
    mailimf_single_fields$fld-bcc-setter,
    mailimf_single_fields$fld-cc,
    mailimf_single_fields$fld-cc-setter,
    mailimf_single_fields$fld-comments,
    mailimf_single_fields$fld-comments-setter,
    mailimf_single_fields$fld-from,
    mailimf_single_fields$fld-from-setter,
    mailimf_single_fields$fld-in-reply-to,
    mailimf_single_fields$fld-in-reply-to-setter,
    mailimf_single_fields$fld-keywords,
    mailimf_single_fields$fld-keywords-setter,
    mailimf_single_fields$fld-message-id,
    mailimf_single_fields$fld-message-id-setter,
    mailimf_single_fields$fld-orig-date,
    mailimf_single_fields$fld-orig-date-setter,
    mailimf_single_fields$fld-references,
    mailimf_single_fields$fld-references-setter,
    mailimf_single_fields$fld-reply-to,
    mailimf_single_fields$fld-reply-to-setter,
    mailimf_single_fields$fld-sender,
    mailimf_single_fields$fld-sender-setter,
    mailimf_single_fields$fld-subject,
    mailimf_single_fields$fld-subject-setter,
    mailimf_single_fields$fld-to,
    mailimf_single_fields$fld-to-setter,
    mailimf_subject$sbj-value,
    mailimf_subject$sbj-value-setter,
    mailimf_to$to-addr-list,
    mailimf_to$to-addr-list-setter,
    maillock-read-lock,
    maillock-read-unlock,
    maillock-write-lock,
    maillock-write-unlock,
    mailmessage$msg-cached,
    mailmessage$msg-cached-setter,
    mailmessage$msg-data,
    mailmessage$msg-data-setter,
    mailmessage$msg-driver,
    mailmessage$msg-driver-setter,
    mailmessage$msg-fields,
    mailmessage$msg-fields-setter,
    mailmessage$msg-flags,
    mailmessage$msg-flags-setter,
    mailmessage$msg-folder,
    mailmessage$msg-folder-setter,
    mailmessage$msg-index,
    mailmessage$msg-index-setter,
    mailmessage$msg-mime,
    mailmessage$msg-mime-setter,
    mailmessage$msg-resolved,
    mailmessage$msg-resolved-setter,
    mailmessage$msg-session,
    mailmessage$msg-session-setter,
    mailmessage$msg-single-fields,
    mailmessage$msg-single-fields-setter,
    mailmessage$msg-size,
    mailmessage$msg-size-setter,
    mailmessage$msg-uid,
    mailmessage$msg-uid-setter,
    mailmessage$msg-user-data,
    mailmessage$msg-user-data-setter,
    mailmessage-check,
    mailmessage-fetch,
    mailmessage-fetch-body,
    mailmessage-fetch-envelope,
    mailmessage-fetch-header,
    mailmessage-fetch-result-free,
    mailmessage-fetch-section,
    mailmessage-fetch-section-body,
    mailmessage-fetch-section-header,
    mailmessage-fetch-section-mime,
    mailmessage-fetch-size,
    mailmessage-flush,
    mailmessage-free,
    mailmessage-get-bodystructure,
    mailmessage-get-flags,
    mailmessage-init,
    mailmessage-new,
    mailmessage-resolve-single-fields,
    mailmessage_driver$msg-check,
    mailmessage_driver$msg-check-setter,
    mailmessage_driver$msg-fetch,
    mailmessage_driver$msg-fetch-body,
    mailmessage_driver$msg-fetch-body-setter,
    mailmessage_driver$msg-fetch-envelope,
    mailmessage_driver$msg-fetch-envelope-setter,
    mailmessage_driver$msg-fetch-header,
    mailmessage_driver$msg-fetch-header-setter,
    mailmessage_driver$msg-fetch-result-free,
    mailmessage_driver$msg-fetch-result-free-setter,
    mailmessage_driver$msg-fetch-section,
    mailmessage_driver$msg-fetch-section-body,
    mailmessage_driver$msg-fetch-section-body-setter,
    mailmessage_driver$msg-fetch-section-header,
    mailmessage_driver$msg-fetch-section-header-setter,
    mailmessage_driver$msg-fetch-section-mime,
    mailmessage_driver$msg-fetch-section-mime-setter,
    mailmessage_driver$msg-fetch-section-setter,
    mailmessage_driver$msg-fetch-setter,
    mailmessage_driver$msg-fetch-size,
    mailmessage_driver$msg-fetch-size-setter,
    mailmessage_driver$msg-flush,
    mailmessage_driver$msg-flush-setter,
    mailmessage_driver$msg-get-bodystructure,
    mailmessage_driver$msg-get-bodystructure-setter,
    mailmessage_driver$msg-get-flags,
    mailmessage_driver$msg-get-flags-setter,
    mailmessage_driver$msg-initialize,
    mailmessage_driver$msg-initialize-setter,
    mailmessage_driver$msg-name,
    mailmessage_driver$msg-name-setter,
    mailmessage_driver$msg-uninitialize,
    mailmessage_driver$msg-uninitialize-setter,
    mailmessage_list$msg-tab,
    mailmessage_list$msg-tab-setter,
    mailmessage_tree$node-base-subject,
    mailmessage_tree$node-base-subject-setter,
    mailmessage_tree$node-children,
    mailmessage_tree$node-children-setter,
    mailmessage_tree$node-date,
    mailmessage_tree$node-date-setter,
    mailmessage_tree$node-is-reply,
    mailmessage_tree$node-is-reply-setter,
    mailmessage_tree$node-msg,
    mailmessage_tree$node-msg-setter,
    mailmessage_tree$node-msgid,
    mailmessage_tree$node-msgid-setter,
    mailmessage_tree$node-parent,
    mailmessage_tree$node-parent-setter,
    mailmime$mm-body,
    mailmime$mm-body-setter,
    mailmime$mm-content-type,
    mailmime$mm-content-type-setter,
    mailmime$mm-data,
    mailmime$mm-data-setter,
    mailmime$mm-length,
    mailmime$mm-length-setter,
    mailmime$mm-mime-fields,
    mailmime$mm-mime-fields-setter,
    mailmime$mm-mime-start,
    mailmime$mm-mime-start-setter,
    mailmime$mm-multipart-pos,
    mailmime$mm-multipart-pos-setter,
    mailmime$mm-parent,
    mailmime$mm-parent-setter,
    mailmime$mm-parent-type,
    mailmime$mm-parent-type-setter,
    mailmime$mm-type,
    mailmime$mm-type-setter,
    mailmime_composite_type$ct-token,
    mailmime_composite_type$ct-token-setter,
    mailmime_composite_type$ct-type,
    mailmime_composite_type$ct-type-setter,
    mailmime_content$ct-parameters,
    mailmime_content$ct-parameters-setter,
    mailmime_content$ct-subtype,
    mailmime_content$ct-subtype-setter,
    mailmime_content$ct-type,
    mailmime_content$ct-type-setter,
    mailmime_data$dt-data,
    mailmime_data$dt-data-setter,
    mailmime_data$dt-encoded,
    mailmime_data$dt-encoded-setter,
    mailmime_data$dt-encoding,
    mailmime_data$dt-encoding-setter,
    mailmime_data$dt-type,
    mailmime_data$dt-type-setter,
    mailmime_discrete_type$dt-extension,
    mailmime_discrete_type$dt-extension-setter,
    mailmime_discrete_type$dt-type,
    mailmime_discrete_type$dt-type-setter,
    mailmime_fields$fld-list,
    mailmime_fields$fld-list-setter,
    mailmime_type$tp-data,
    mailmime_type$tp-data-setter,
    mailmime_type$tp-type,
    mailmime_type$tp-type-setter,
    mailprivacy$make-alternative,
    mailprivacy$make-alternative-setter,
    mailprivacy$mime-ref,
    mailprivacy$mime-ref-setter,
    mailprivacy$mmapstr,
    mailprivacy$mmapstr-setter,
    mailprivacy$msg-ref,
    mailprivacy$msg-ref-setter,
    mailprivacy$protocols,
    mailprivacy$protocols-setter,
    mailprivacy$tmp-dir,
    mailprivacy$tmp-dir-setter,
    mailprivacy-debug,
    mailprivacy-encrypt,
    mailprivacy-encrypt-msg,
    mailprivacy-free,
    mailprivacy-get-encryption-name,
    mailprivacy-get-protocols,
    mailprivacy-gnupg-done,
    mailprivacy-gnupg-encryption-id-list,
    mailprivacy-gnupg-encryption-id-list-clear,
    mailprivacy-gnupg-init,
    mailprivacy-gnupg-set-encryption-id,
    mailprivacy-is-encrypted,
    mailprivacy-msg-fetch,
    mailprivacy-msg-fetch-header,
    mailprivacy-msg-fetch-result-free,
    mailprivacy-msg-fetch-section,
    mailprivacy-msg-fetch-section-body,
    mailprivacy-msg-fetch-section-header,
    mailprivacy-msg-fetch-section-mime,
    mailprivacy-msg-flush,
    mailprivacy-msg-get-bodystructure,
    mailprivacy-new,
    mailprivacy-recursive-unregister-mime,
    mailprivacy-register,
    mailprivacy-smime-done,
    mailprivacy-smime-encryption-id-list,
    mailprivacy-smime-encryption-id-list-clear,
    mailprivacy-smime-init,
    mailprivacy-smime-set-CA-check,
    mailprivacy-smime-set-CA-dir,
    mailprivacy-smime-set-cert-dir,
    mailprivacy-smime-set-encryption-id,
    mailprivacy-smime-set-private-keys-dir,
    mailprivacy-smime-set-store-cert,
    mailprivacy-unregister,
    mailprivacy_encryption$description,
    mailprivacy_encryption$description-setter,
    mailprivacy_encryption$encrypt,
    mailprivacy_encryption$encrypt-setter,
    mailprivacy_encryption$name,
    mailprivacy_encryption$name-setter,
    mailprivacy_protocol$decrypt,
    mailprivacy_protocol$decrypt-setter,
    mailprivacy_protocol$description,
    mailprivacy_protocol$description-setter,
    mailprivacy_protocol$encryption-count,
    mailprivacy_protocol$encryption-count-setter,
    mailprivacy_protocol$encryption-tab,
    mailprivacy_protocol$encryption-tab-setter,
    mailprivacy_protocol$is-encrypted,
    mailprivacy_protocol$is-encrypted-setter,
    mailprivacy_protocol$name,
    mailprivacy_protocol$name-setter,
    mailsem$sem-kind,
    mailsem$sem-kind-setter,
    mailsem$sem-sem,
    mailsem$sem-sem-setter,
    mailsem-down,
    mailsem-free,
    mailsem-new,
    mailsem-up,
    mailsession$sess-data,
    mailsession$sess-data-setter,
    mailsession$sess-driver,
    mailsession$sess-driver-setter,
    mailsession-append-message,
    mailsession-append-message-flags,
    mailsession-build-folder-name,
    mailsession-check-folder,
    mailsession-connect-path,
    mailsession-connect-stream,
    mailsession-copy-message,
    mailsession-create-folder,
    mailsession-delete-folder,
    mailsession-examine-folder,
    mailsession-expunge-folder,
    mailsession-free,
    mailsession-get-envelopes-list,
    mailsession-get-message,
    mailsession-get-message-by-uid,
    mailsession-get-messages-list,
    mailsession-list-folders,
    mailsession-login,
    mailsession-login-sasl,
    mailsession-logout,
    mailsession-lsub-folders,
    mailsession-messages-number,
    mailsession-move-message,
    mailsession-new,
    mailsession-noop,
    mailsession-parameters,
    mailsession-recent-number,
    mailsession-remove-message,
    mailsession-rename-folder,
    mailsession-select-folder,
    mailsession-starttls,
    mailsession-status-folder,
    mailsession-subscribe-folder,
    mailsession-unseen-number,
    mailsession-unsubscribe-folder,
    mailsession_driver$sess-append-message,
    mailsession_driver$sess-append-message-flags,
    mailsession_driver$sess-append-message-flags-setter,
    mailsession_driver$sess-append-message-setter,
    mailsession_driver$sess-build-folder-name,
    mailsession_driver$sess-build-folder-name-setter,
    mailsession_driver$sess-check-folder,
    mailsession_driver$sess-check-folder-setter,
    mailsession_driver$sess-connect-path,
    mailsession_driver$sess-connect-path-setter,
    mailsession_driver$sess-connect-stream,
    mailsession_driver$sess-connect-stream-setter,
    mailsession_driver$sess-copy-message,
    mailsession_driver$sess-copy-message-setter,
    mailsession_driver$sess-create-folder,
    mailsession_driver$sess-create-folder-setter,
    mailsession_driver$sess-delete-folder,
    mailsession_driver$sess-delete-folder-setter,
    mailsession_driver$sess-examine-folder,
    mailsession_driver$sess-examine-folder-setter,
    mailsession_driver$sess-expunge-folder,
    mailsession_driver$sess-expunge-folder-setter,
    mailsession_driver$sess-get-envelopes-list,
    mailsession_driver$sess-get-envelopes-list-setter,
    mailsession_driver$sess-get-message,
    mailsession_driver$sess-get-message-by-uid,
    mailsession_driver$sess-get-message-by-uid-setter,
    mailsession_driver$sess-get-message-setter,
    mailsession_driver$sess-get-messages-list,
    mailsession_driver$sess-get-messages-list-setter,
    mailsession_driver$sess-initialize,
    mailsession_driver$sess-initialize-setter,
    mailsession_driver$sess-list-folders,
    mailsession_driver$sess-list-folders-setter,
    mailsession_driver$sess-login,
    mailsession_driver$sess-login-sasl,
    mailsession_driver$sess-login-sasl-setter,
    mailsession_driver$sess-login-setter,
    mailsession_driver$sess-logout,
    mailsession_driver$sess-logout-setter,
    mailsession_driver$sess-lsub-folders,
    mailsession_driver$sess-lsub-folders-setter,
    mailsession_driver$sess-messages-number,
    mailsession_driver$sess-messages-number-setter,
    mailsession_driver$sess-move-message,
    mailsession_driver$sess-move-message-setter,
    mailsession_driver$sess-name,
    mailsession_driver$sess-name-setter,
    mailsession_driver$sess-noop,
    mailsession_driver$sess-noop-setter,
    mailsession_driver$sess-parameters,
    mailsession_driver$sess-parameters-setter,
    mailsession_driver$sess-recent-number,
    mailsession_driver$sess-recent-number-setter,
    mailsession_driver$sess-remove-message,
    mailsession_driver$sess-remove-message-setter,
    mailsession_driver$sess-rename-folder,
    mailsession_driver$sess-rename-folder-setter,
    mailsession_driver$sess-select-folder,
    mailsession_driver$sess-select-folder-setter,
    mailsession_driver$sess-starttls,
    mailsession_driver$sess-starttls-setter,
    mailsession_driver$sess-status-folder,
    mailsession_driver$sess-status-folder-setter,
    mailsession_driver$sess-subscribe-folder,
    mailsession_driver$sess-subscribe-folder-setter,
    mailsession_driver$sess-uninitialize,
    mailsession_driver$sess-uninitialize-setter,
    mailsession_driver$sess-unseen-number,
    mailsession_driver$sess-unseen-number-setter,
    mailsession_driver$sess-unsubscribe-folder,
    mailsession_driver$sess-unsubscribe-folder-setter,
    mailsmtp$auth,
    mailsmtp$auth-setter,
    mailsmtp$esmtp,
    mailsmtp$esmtp-setter,
    mailsmtp$line-buffer,
    mailsmtp$line-buffer-setter,
    mailsmtp$progr-fun,
    mailsmtp$progr-fun-setter,
    mailsmtp$progr-rate,
    mailsmtp$progr-rate-setter,
    mailsmtp$response,
    mailsmtp$response-buffer,
    mailsmtp$response-buffer-setter,
    mailsmtp$response-code,
    mailsmtp$response-code-setter,
    mailsmtp$response-setter,
    mailsmtp$smtp-logger,
    mailsmtp$smtp-logger-context,
    mailsmtp$smtp-logger-context-setter,
    mailsmtp$smtp-logger-setter,
    mailsmtp$smtp-max-msg-size,
    mailsmtp$smtp-max-msg-size-setter,
    mailsmtp$smtp-progress-context,
    mailsmtp$smtp-progress-context-setter,
    mailsmtp$smtp-progress-fun,
    mailsmtp$smtp-progress-fun-setter,
    mailsmtp$smtp-sasl,
    mailsmtp$smtp-sasl-setter,
    mailsmtp$smtp-timeout,
    mailsmtp$smtp-timeout-setter,
    mailsmtp$stream,
    mailsmtp$stream-setter,
    mailsmtp-auth,
    mailsmtp-auth-type,
    mailsmtp-connect,
    mailsmtp-data,
    mailsmtp-data-message,
    mailsmtp-data-message-quit,
    mailsmtp-free,
    mailsmtp-get-timeout,
    mailsmtp-helo,
    mailsmtp-helo-with-ip,
    mailsmtp-mail,
    mailsmtp-new,
    mailsmtp-noop,
    mailsmtp-quit,
    mailsmtp-rcpt,
    mailsmtp-reset,
    mailsmtp-set-logger,
    mailsmtp-set-progress-callback,
    mailsmtp-set-timeout,
    mailsmtp-strerror,
    mailstorage$sto-data,
    mailstorage$sto-data-setter,
    mailstorage$sto-driver,
    mailstorage$sto-driver-setter,
    mailstorage$sto-id,
    mailstorage$sto-id-setter,
    mailstorage$sto-session,
    mailstorage$sto-session-setter,
    mailstorage$sto-shared-folders,
    mailstorage$sto-shared-folders-setter,
    mailstorage$sto-user-data,
    mailstorage$sto-user-data-setter,
    mailstorage-connect,
    mailstorage-disconnect,
    mailstorage-free,
    mailstorage-new,
    mailstorage-noop,
    mailstorage_driver$sto-connect,
    mailstorage_driver$sto-connect-setter,
    mailstorage_driver$sto-get-folder-session,
    mailstorage_driver$sto-get-folder-session-setter,
    mailstorage_driver$sto-name,
    mailstorage_driver$sto-name-setter,
    mailstorage_driver$sto-uninitialize,
    mailstorage_driver$sto-uninitialize-setter,
    mailstream_low_driver$mailstream-cancel,
    mailstream_low_driver$mailstream-cancel-setter,
    mailstream_low_driver$mailstream-close,
    mailstream_low_driver$mailstream-close-setter,
    mailstream_low_driver$mailstream-free,
    mailstream_low_driver$mailstream-free-setter,
    mailstream_low_driver$mailstream-get-cancel,
    mailstream_low_driver$mailstream-get-cancel-setter,
    mailstream_low_driver$mailstream-get-certificate-chain,
    mailstream_low_driver$mailstream-get-certificate-chain-setter,
    mailstream_low_driver$mailstream-get-fd,
    mailstream_low_driver$mailstream-get-fd-setter,
    mailstream_low_driver$mailstream-interrupt-idle,
    mailstream_low_driver$mailstream-interrupt-idle-setter,
    mailstream_low_driver$mailstream-read,
    mailstream_low_driver$mailstream-read-setter,
    mailstream_low_driver$mailstream-setup-idle,
    mailstream_low_driver$mailstream-setup-idle-setter,
    mailstream_low_driver$mailstream-unsetup-idle,
    mailstream_low_driver$mailstream-unsetup-idle-setter,
    mailstream_low_driver$mailstream-write,
    mailstream_low_driver$mailstream-write-setter,
    mailthread-tree-timecomp,
    mbox-mailstorage-init,
    mh-mailstorage-init,
    mime-message-detach-mime,
    mime-message-init,
    mime-message-set-tmpdir,
    nntp-mailstorage-init,
    nntp-mailstorage-init-with-local-address,
    pop3-mailstorage-init,
    pop3-mailstorage-init-sasl,
    pop3-mailstorage-init-sasl-with-local-address;
end module;
