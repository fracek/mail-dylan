module: etpan

define C-function libetpan-get-version-major
  result res :: <C-signed-int>;
  c-name: "libetpan_get_version_major";
end;

define C-function libetpan-get-version-minor
  result res :: <C-signed-int>;
  c-name: "libetpan_get_version_minor";
end;

define constant $LIBETPAN-VERSION-MAJOR = 1;

define constant $LIBETPAN-VERSION-MINOR = 4;

define constant $LIBETPAN-REENTRANT = 1;

define constant $LIBETPAN-API-CURRENT = 18;

define constant $LIBETPAN-API-REVISION = 0;

define constant $LIBETPAN-API-COMPATIBILITY = 17;

define C-pointer-type <char*> => <C-signed-char>;
define constant <sess-initialize> = <C-function-pointer>;
define constant <sess-uninitialize> = <C-function-pointer>;
define constant <sess-parameters> = <C-function-pointer>;
define constant <__darwin-size-t> = <C-unsigned-long>;

define constant <size-t> = <__darwin-size-t>;

define constant <__darwin-ssize-t> = <C-signed-long>;

define constant <ssize-t> = <__darwin-ssize-t>;

define constant <mailstream-read> = <C-function-pointer>;
define constant <mailstream-write> = <C-function-pointer>;
define constant <mailstream-close> = <C-function-pointer>;
define constant <mailstream-get-fd> = <C-function-pointer>;
define constant <mailstream-free> = <C-function-pointer>;
define constant <mailstream-cancel> = <C-function-pointer>;
define C-struct <mailstream-cancel>
end;

define C-pointer-type <mailstream-cancel*> => <mailstream-cancel>;
define constant <mailstream-get-cancel> = <C-function-pointer>;
define C-pointer-type <statically-typed-pointer*> => <C-void*>;
define C-struct <carray-s>
  slot carray_s$array :: <statically-typed-pointer*>;
  slot carray_s$len :: <C-unsigned-int>;
  slot carray_s$max :: <C-unsigned-int>;
end;

define constant <carray> = <carray-s>;

define C-pointer-type <carray*> => <carray>;
define constant <mailstream-get-certificate-chain> = <C-function-pointer>;
define constant <mailstream-setup-idle> = <C-function-pointer>;
define constant <mailstream-unsetup-idle> = <C-function-pointer>;
define constant <mailstream-interrupt-idle> = <C-function-pointer>;
define C-struct <mailstream-low-driver>
  slot mailstream_low_driver$mailstream-read :: <mailstream-read>;
  slot mailstream_low_driver$mailstream-write :: <mailstream-write>;
  slot mailstream_low_driver$mailstream-close :: <mailstream-close>;
  slot mailstream_low_driver$mailstream-get-fd :: <mailstream-get-fd>;
  slot mailstream_low_driver$mailstream-free :: <mailstream-free>;
  slot mailstream_low_driver$mailstream-cancel :: <mailstream-cancel>;
  slot mailstream_low_driver$mailstream-get-cancel :: <mailstream-get-cancel>;
  slot mailstream_low_driver$mailstream-get-certificate-chain :: <mailstream-get-certificate-chain>;
  slot mailstream_low_driver$mailstream-setup-idle :: <mailstream-setup-idle>;
  slot mailstream_low_driver$mailstream-unsetup-idle :: <mailstream-unsetup-idle>;
  slot mailstream_low_driver$mailstream-interrupt-idle :: <mailstream-interrupt-idle>;
end;

define C-pointer-type <mailstream-low-driver*> => <mailstream-low-driver>;
define constant <logger> = <C-function-pointer>;
define C-struct <_mailstream-low>
  slot _mailstream_low$data :: <C-void*>;
  slot _mailstream_low$driver :: <mailstream-low-driver*>;
  slot _mailstream_low$privacy :: <C-signed-int>;
  slot _mailstream_low$identifier :: <char*>;
  slot _mailstream_low$timeout :: <C-unsigned-long>;
  slot _mailstream_low$logger :: <logger>;
  slot _mailstream_low$logger-context :: <C-void*>;
end;

define constant <mailstream-low> = <_mailstream-low>;

define C-pointer-type <mailstream-low*> => <mailstream-low>;
define constant <logger> = <C-function-pointer>;
define C-struct <_mailstream>
  slot _mailstream$buffer-max-size :: <C-unsigned-long>;
  slot _mailstream$write-buffer :: <char*>;
  slot _mailstream$write-buffer-len :: <C-unsigned-long>;
  slot _mailstream$read-buffer :: <char*>;
  slot _mailstream$read-buffer-len :: <C-unsigned-long>;
  slot _mailstream$low :: <mailstream-low*>;
  slot _mailstream$idle :: <mailstream-cancel*>;
  slot _mailstream$idling :: <C-signed-int>;
  slot _mailstream$logger :: <logger>;
  slot _mailstream$logger-context :: <C-void*>;
end;

define constant <mailstream> = <_mailstream>;

define C-pointer-type <mailstream*> => <mailstream>;
define constant <sess-connect-stream> = <C-function-pointer>;
define constant <sess-connect-path> = <C-function-pointer>;
define constant <sess-starttls> = <C-function-pointer>;
define constant <sess-login> = <C-function-pointer>;
define constant <sess-logout> = <C-function-pointer>;
define constant <sess-noop> = <C-function-pointer>;
define C-pointer-type <char**> => <char*>;
define constant <sess-build-folder-name> = <C-function-pointer>;
define constant <sess-create-folder> = <C-function-pointer>;
define constant <sess-delete-folder> = <C-function-pointer>;
define constant <sess-rename-folder> = <C-function-pointer>;
define constant <sess-check-folder> = <C-function-pointer>;
define constant <sess-examine-folder> = <C-function-pointer>;
define constant <sess-select-folder> = <C-function-pointer>;
define constant <sess-expunge-folder> = <C-function-pointer>;
define constant <uint32-t> = <C-unsigned-int>;

define C-pointer-type <uint32-t*> => <uint32-t>;
define constant <sess-status-folder> = <C-function-pointer>;
define constant <sess-messages-number> = <C-function-pointer>;
define constant <sess-recent-number> = <C-function-pointer>;
define constant <sess-unseen-number> = <C-function-pointer>;
define C-pointer-type <clistcell-s*> => <clistcell-s>;
define C-struct <clistcell-s>
  slot clistcell_s$data :: <C-void*>;
  slot clistcell_s$previous :: <clistcell-s*>;
  slot clistcell_s$next :: <clistcell-s*>;
end;

define constant <clistcell> = <clistcell-s>;

define C-pointer-type <clistcell*> => <clistcell>;
define C-struct <clist-s>
  slot clist_s$first :: <clistcell*>;
  slot clist_s$last :: <clistcell*>;
  slot clist_s$count :: <C-signed-int>;
end;

define constant <clist> = <clist-s>;

define C-pointer-type <clist*> => <clist>;
define C-struct <mail-list>
  slot mail_list$mb-list :: <clist*>;
end;

define C-pointer-type <mail-list*> => <mail-list>;
define C-pointer-type <mail-list**> => <mail-list*>;
define constant <sess-list-folders> = <C-function-pointer>;
define constant <sess-lsub-folders> = <C-function-pointer>;
define constant <sess-subscribe-folder> = <C-function-pointer>;
define constant <sess-unsubscribe-folder> = <C-function-pointer>;
define constant <sess-append-message> = <C-function-pointer>;
define C-struct <mail-flags>
  slot mail_flags$fl-flags :: <C-unsigned-int>;
  slot mail_flags$fl-extension :: <clist*>;
end;

define C-pointer-type <mail-flags*> => <mail-flags>;
define constant <sess-append-message-flags> = <C-function-pointer>;
define constant <sess-copy-message> = <C-function-pointer>;
define constant <sess-move-message> = <C-function-pointer>;
define constant <msg-initialize> = <C-function-pointer>;
define constant <msg-uninitialize> = <C-function-pointer>;
define constant <msg-flush> = <C-function-pointer>;
define constant <msg-check> = <C-function-pointer>;
define constant <msg-fetch-result-free> = <C-function-pointer>;
define C-pointer-type <size-t*> => <size-t>;
define constant <msg-fetch> = <C-function-pointer>;
define constant <msg-fetch-header> = <C-function-pointer>;
define constant <msg-fetch-body> = <C-function-pointer>;
define constant <msg-fetch-size> = <C-function-pointer>;
define constant <clistiter> = <clistcell>;

define C-pointer-type <clistiter*> => <clistiter>;
define C-struct <mailmime-fields>
  slot mailmime_fields$fld-list :: <clist*>;
end;

define C-pointer-type <mailmime-fields*> => <mailmime-fields>;
define C-struct <mailmime-discrete-type>
  slot mailmime_discrete_type$dt-type :: <C-signed-int>;
  slot mailmime_discrete_type$dt-extension :: <char*>;
end;

define C-pointer-type <mailmime-discrete-type*> => <mailmime-discrete-type>;
define C-struct <mailmime-composite-type>
  slot mailmime_composite_type$ct-type :: <C-signed-int>;
  slot mailmime_composite_type$ct-token :: <char*>;
end;

define C-pointer-type <mailmime-composite-type*> => <mailmime-composite-type>;
define C-union <anonymous-473>
  slot anonymous-473$tp-discrete-type :: <mailmime-discrete-type*>;
  slot anonymous-473$tp-composite-type :: <mailmime-composite-type*>;
end;

define C-struct <mailmime-type>
  slot mailmime_type$tp-type :: <C-signed-int>;
  slot mailmime_type$tp-data :: <anonymous-473>;
end;

define C-pointer-type <mailmime-type*> => <mailmime-type>;
define C-struct <mailmime-content>
  slot mailmime_content$ct-type :: <mailmime-type*>;
  slot mailmime_content$ct-subtype :: <char*>;
  slot mailmime_content$ct-parameters :: <clist*>;
end;

define C-pointer-type <mailmime-content*> => <mailmime-content>;
define C-struct <anonymous-504>
  slot anonymous-504$dt-data :: <char*>;
  slot anonymous-504$dt-length :: <C-unsigned-long>;
end;

define C-union <anonymous-505>
  slot anonymous-505$dt-text :: <anonymous-504>;
  slot anonymous-505$dt-filename :: <char*>;
end;

define C-struct <mailmime-data>
  slot mailmime_data$dt-type :: <C-signed-int>;
  slot mailmime_data$dt-encoding :: <C-signed-int>;
  slot mailmime_data$dt-encoded :: <C-signed-int>;
  slot mailmime_data$dt-data :: <anonymous-505>;
end;

define C-pointer-type <mailmime-data*> => <mailmime-data>;
define C-struct <anonymous-509>
  slot anonymous-509$mm-preamble :: <mailmime-data*>;
  slot anonymous-509$mm-epilogue :: <mailmime-data*>;
  slot anonymous-509$mm-mp-list :: <clist*>;
end;

define C-struct <mailimf-fields>
  slot mailimf_fields$fld-list :: <clist*>;
end;

define C-pointer-type <mailimf-fields*> => <mailimf-fields>;
define C-struct <anonymous-510>
  slot anonymous-510$mm-fields :: <mailimf-fields*>;
  slot anonymous-510$mm-msg-mime :: <mailmime*>;
end;

define C-union <anonymous-511>
  slot anonymous-511$mm-single :: <mailmime-data*>;
  slot anonymous-511$mm-multipart :: <anonymous-509>;
  slot anonymous-511$mm-message :: <anonymous-510>;
end;

define C-struct <mailmime>
  slot mailmime$mm-parent-type :: <C-signed-int>;
  slot mailmime$mm-parent :: <mailmime*>;
  slot mailmime$mm-multipart-pos :: <clistiter*>;
  slot mailmime$mm-type :: <C-signed-int>;
  slot mailmime$mm-mime-start :: <char*>;
  slot mailmime$mm-length :: <C-unsigned-long>;
  slot mailmime$mm-mime-fields :: <mailmime-fields*>;
  slot mailmime$mm-content-type :: <mailmime-content*>;
  slot mailmime$mm-body :: <mailmime-data*>;
  slot mailmime$mm-data :: <anonymous-511>;
end;

define C-pointer-type <mailmime*> => <mailmime>;
define C-pointer-type <mailmime**> => <mailmime*>;
define constant <msg-get-bodystructure> = <C-function-pointer>;
define constant <msg-fetch-section> = <C-function-pointer>;
define constant <msg-fetch-section-header> = <C-function-pointer>;
define constant <msg-fetch-section-mime> = <C-function-pointer>;
define constant <msg-fetch-section-body> = <C-function-pointer>;
define C-pointer-type <mailimf-fields**> => <mailimf-fields*>;
define constant <msg-fetch-envelope> = <C-function-pointer>;
define C-pointer-type <mail-flags**> => <mail-flags*>;
define constant <msg-get-flags> = <C-function-pointer>;
define C-struct <mailmessage-driver>
  slot mailmessage_driver$msg-name :: <char*>;
  slot mailmessage_driver$msg-initialize :: <msg-initialize>;
  slot mailmessage_driver$msg-uninitialize :: <msg-uninitialize>;
  slot mailmessage_driver$msg-flush :: <msg-flush>;
  slot mailmessage_driver$msg-check :: <msg-check>;
  slot mailmessage_driver$msg-fetch-result-free :: <msg-fetch-result-free>;
  slot mailmessage_driver$msg-fetch :: <msg-fetch>;
  slot mailmessage_driver$msg-fetch-header :: <msg-fetch-header>;
  slot mailmessage_driver$msg-fetch-body :: <msg-fetch-body>;
  slot mailmessage_driver$msg-fetch-size :: <msg-fetch-size>;
  slot mailmessage_driver$msg-get-bodystructure :: <msg-get-bodystructure>;
  slot mailmessage_driver$msg-fetch-section :: <msg-fetch-section>;
  slot mailmessage_driver$msg-fetch-section-header :: <msg-fetch-section-header>;
  slot mailmessage_driver$msg-fetch-section-mime :: <msg-fetch-section-mime>;
  slot mailmessage_driver$msg-fetch-section-body :: <msg-fetch-section-body>;
  slot mailmessage_driver$msg-fetch-envelope :: <msg-fetch-envelope>;
  slot mailmessage_driver$msg-get-flags :: <msg-get-flags>;
end;

define C-pointer-type <mailmessage-driver*> => <mailmessage-driver>;
define C-struct <mailimf-date-time>
  slot mailimf_date_time$dt-day :: <C-signed-int>;
  slot mailimf_date_time$dt-month :: <C-signed-int>;
  slot mailimf_date_time$dt-year :: <C-signed-int>;
  slot mailimf_date_time$dt-hour :: <C-signed-int>;
  slot mailimf_date_time$dt-min :: <C-signed-int>;
  slot mailimf_date_time$dt-sec :: <C-signed-int>;
  slot mailimf_date_time$dt-zone :: <C-signed-int>;
end;

define C-pointer-type <mailimf-date-time*> => <mailimf-date-time>;
define C-struct <mailimf-orig-date>
  slot mailimf_orig_date$dt-date-time :: <mailimf-date-time*>;
end;

define C-pointer-type <mailimf-orig-date*> => <mailimf-orig-date>;
define C-struct <mailimf-mailbox-list>
  slot mailimf_mailbox_list$mb-list :: <clist*>;
end;

define C-pointer-type <mailimf-mailbox-list*> => <mailimf-mailbox-list>;
define C-struct <mailimf-from>
  slot mailimf_from$frm-mb-list :: <mailimf-mailbox-list*>;
end;

define C-pointer-type <mailimf-from*> => <mailimf-from>;
define C-struct <mailimf-mailbox>
  slot mailimf_mailbox$mb-display-name :: <char*>;
  slot mailimf_mailbox$mb-addr-spec :: <char*>;
end;

define C-pointer-type <mailimf-mailbox*> => <mailimf-mailbox>;
define C-struct <mailimf-sender>
  slot mailimf_sender$snd-mb :: <mailimf-mailbox*>;
end;

define C-pointer-type <mailimf-sender*> => <mailimf-sender>;
define C-struct <mailimf-address-list>
  slot mailimf_address_list$ad-list :: <clist*>;
end;

define C-pointer-type <mailimf-address-list*> => <mailimf-address-list>;
define C-struct <mailimf-reply-to>
  slot mailimf_reply_to$rt-addr-list :: <mailimf-address-list*>;
end;

define C-pointer-type <mailimf-reply-to*> => <mailimf-reply-to>;
define C-struct <mailimf-to>
  slot mailimf_to$to-addr-list :: <mailimf-address-list*>;
end;

define C-pointer-type <mailimf-to*> => <mailimf-to>;
define C-struct <mailimf-cc>
  slot mailimf_cc$cc-addr-list :: <mailimf-address-list*>;
end;

define C-pointer-type <mailimf-cc*> => <mailimf-cc>;
define C-struct <mailimf-bcc>
  slot mailimf_bcc$bcc-addr-list :: <mailimf-address-list*>;
end;

define C-pointer-type <mailimf-bcc*> => <mailimf-bcc>;
define C-struct <mailimf-message-id>
  slot mailimf_message_id$mid-value :: <char*>;
end;

define C-pointer-type <mailimf-message-id*> => <mailimf-message-id>;
define C-struct <mailimf-in-reply-to>
  slot mailimf_in_reply_to$mid-list :: <clist*>;
end;

define C-pointer-type <mailimf-in-reply-to*> => <mailimf-in-reply-to>;
define C-struct <mailimf-references>
  slot mailimf_references$mid-list :: <clist*>;
end;

define C-pointer-type <mailimf-references*> => <mailimf-references>;
define C-struct <mailimf-subject>
  slot mailimf_subject$sbj-value :: <char*>;
end;

define C-pointer-type <mailimf-subject*> => <mailimf-subject>;
define C-struct <mailimf-comments>
  slot mailimf_comments$cm-value :: <char*>;
end;

define C-pointer-type <mailimf-comments*> => <mailimf-comments>;
define C-struct <mailimf-keywords>
  slot mailimf_keywords$kw-list :: <clist*>;
end;

define C-pointer-type <mailimf-keywords*> => <mailimf-keywords>;
define C-struct <mailimf-single-fields>
  slot mailimf_single_fields$fld-orig-date :: <mailimf-orig-date*>;
  slot mailimf_single_fields$fld-from :: <mailimf-from*>;
  slot mailimf_single_fields$fld-sender :: <mailimf-sender*>;
  slot mailimf_single_fields$fld-reply-to :: <mailimf-reply-to*>;
  slot mailimf_single_fields$fld-to :: <mailimf-to*>;
  slot mailimf_single_fields$fld-cc :: <mailimf-cc*>;
  slot mailimf_single_fields$fld-bcc :: <mailimf-bcc*>;
  slot mailimf_single_fields$fld-message-id :: <mailimf-message-id*>;
  slot mailimf_single_fields$fld-in-reply-to :: <mailimf-in-reply-to*>;
  slot mailimf_single_fields$fld-references :: <mailimf-references*>;
  slot mailimf_single_fields$fld-subject :: <mailimf-subject*>;
  slot mailimf_single_fields$fld-comments :: <mailimf-comments*>;
  slot mailimf_single_fields$fld-keywords :: <mailimf-keywords*>;
end;

define C-struct <mailmessage>
  slot mailmessage$msg-session :: <mailsession*>;
  slot mailmessage$msg-driver :: <mailmessage-driver*>;
  slot mailmessage$msg-index :: <C-unsigned-int>;
  slot mailmessage$msg-uid :: <char*>;
  slot mailmessage$msg-size :: <C-unsigned-long>;
  slot mailmessage$msg-fields :: <mailimf-fields*>;
  slot mailmessage$msg-flags :: <mail-flags*>;
  slot mailmessage$msg-resolved :: <C-signed-int>;
  slot mailmessage$msg-single-fields :: <mailimf-single-fields>;
  slot mailmessage$msg-mime :: <mailmime*>;
  slot mailmessage$msg-cached :: <C-signed-int>;
  slot mailmessage$msg-data :: <C-void*>;
  slot mailmessage$msg-folder :: <C-void*>;
  slot mailmessage$msg-user-data :: <C-void*>;
end;

define C-pointer-type <mailmessage*> => <mailmessage>;
define C-pointer-type <mailmessage**> => <mailmessage*>;
define constant <sess-get-message> = <C-function-pointer>;
define constant <sess-get-message-by-uid> = <C-function-pointer>;
define C-struct <mailmessage-list>
  slot mailmessage_list$msg-tab :: <carray*>;
end;

define C-pointer-type <mailmessage-list*> => <mailmessage-list>;
define C-pointer-type <mailmessage-list**> => <mailmessage-list*>;
define constant <sess-get-messages-list> = <C-function-pointer>;
define constant <sess-get-envelopes-list> = <C-function-pointer>;
define constant <sess-remove-message> = <C-function-pointer>;
define constant <sess-login-sasl> = <C-function-pointer>;
define C-struct <mailsession-driver>
  slot mailsession_driver$sess-name :: <char*>;
  slot mailsession_driver$sess-initialize :: <sess-initialize>;
  slot mailsession_driver$sess-uninitialize :: <sess-uninitialize>;
  slot mailsession_driver$sess-parameters :: <sess-parameters>;
  slot mailsession_driver$sess-connect-stream :: <sess-connect-stream>;
  slot mailsession_driver$sess-connect-path :: <sess-connect-path>;
  slot mailsession_driver$sess-starttls :: <sess-starttls>;
  slot mailsession_driver$sess-login :: <sess-login>;
  slot mailsession_driver$sess-logout :: <sess-logout>;
  slot mailsession_driver$sess-noop :: <sess-noop>;
  slot mailsession_driver$sess-build-folder-name :: <sess-build-folder-name>;
  slot mailsession_driver$sess-create-folder :: <sess-create-folder>;
  slot mailsession_driver$sess-delete-folder :: <sess-delete-folder>;
  slot mailsession_driver$sess-rename-folder :: <sess-rename-folder>;
  slot mailsession_driver$sess-check-folder :: <sess-check-folder>;
  slot mailsession_driver$sess-examine-folder :: <sess-examine-folder>;
  slot mailsession_driver$sess-select-folder :: <sess-select-folder>;
  slot mailsession_driver$sess-expunge-folder :: <sess-expunge-folder>;
  slot mailsession_driver$sess-status-folder :: <sess-status-folder>;
  slot mailsession_driver$sess-messages-number :: <sess-messages-number>;
  slot mailsession_driver$sess-recent-number :: <sess-recent-number>;
  slot mailsession_driver$sess-unseen-number :: <sess-unseen-number>;
  slot mailsession_driver$sess-list-folders :: <sess-list-folders>;
  slot mailsession_driver$sess-lsub-folders :: <sess-lsub-folders>;
  slot mailsession_driver$sess-subscribe-folder :: <sess-subscribe-folder>;
  slot mailsession_driver$sess-unsubscribe-folder :: <sess-unsubscribe-folder>;
  slot mailsession_driver$sess-append-message :: <sess-append-message>;
  slot mailsession_driver$sess-append-message-flags :: <sess-append-message-flags>;
  slot mailsession_driver$sess-copy-message :: <sess-copy-message>;
  slot mailsession_driver$sess-move-message :: <sess-move-message>;
  slot mailsession_driver$sess-get-message :: <sess-get-message>;
  slot mailsession_driver$sess-get-message-by-uid :: <sess-get-message-by-uid>;
  slot mailsession_driver$sess-get-messages-list :: <sess-get-messages-list>;
  slot mailsession_driver$sess-get-envelopes-list :: <sess-get-envelopes-list>;
  slot mailsession_driver$sess-remove-message :: <sess-remove-message>;
  slot mailsession_driver$sess-login-sasl :: <sess-login-sasl>;
end;

define C-pointer-type <mailsession-driver*> => <mailsession-driver>;
define C-struct <mailsession>
  slot mailsession$sess-data :: <C-void*>;
  slot mailsession$sess-driver :: <mailsession-driver*>;
end;

define C-pointer-type <mailsession*> => <mailsession>;
define C-function mailsession-new
  input parameter sess-driver_ :: <mailsession-driver*>;
  result res :: <mailsession*>;
  c-name: "mailsession_new";
end;

define C-function mailsession-free
  input parameter session_ :: <mailsession*>;
  c-name: "mailsession_free";
end;

define C-function mailsession-parameters
  input parameter session_ :: <mailsession*>;
  input parameter id_ :: <C-signed-int>;
  input parameter value_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_parameters";
end;

define C-function mailsession-connect-stream
  input parameter session_ :: <mailsession*>;
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_connect_stream";
end;

define C-function mailsession-connect-path
  input parameter session_ :: <mailsession*>;
  input parameter path_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_connect_path";
end;

define C-function mailsession-starttls
  input parameter session_ :: <mailsession*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_starttls";
end;

define C-function mailsession-login
  input parameter session_ :: <mailsession*>;
  input parameter userid_ :: <char*>;
  input parameter password_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_login";
end;

define C-function mailsession-logout
  input parameter session_ :: <mailsession*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_logout";
end;

define C-function mailsession-noop
  input parameter session_ :: <mailsession*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_noop";
end;

define C-function mailsession-build-folder-name
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter name_ :: <char*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_build_folder_name";
end;

define C-function mailsession-create-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_create_folder";
end;

define C-function mailsession-delete-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_delete_folder";
end;

define C-function mailsession-rename-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter new-name_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_rename_folder";
end;

define C-function mailsession-check-folder
  input parameter session_ :: <mailsession*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_check_folder";
end;

define C-function mailsession-examine-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_examine_folder";
end;

define C-function mailsession-select-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_select_folder";
end;

define C-function mailsession-expunge-folder
  input parameter session_ :: <mailsession*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_expunge_folder";
end;

define C-function mailsession-status-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result-messages_ :: <uint32-t*>;
  input parameter result-recent_ :: <uint32-t*>;
  input parameter result-unseen_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_status_folder";
end;

define C-function mailsession-messages-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_messages_number";
end;

define C-function mailsession-recent-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_recent_number";
end;

define C-function mailsession-unseen-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_unseen_number";
end;

define C-function mailsession-list-folders
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result_ :: <mail-list**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_list_folders";
end;

define C-function mailsession-lsub-folders
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  input parameter result_ :: <mail-list**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_lsub_folders";
end;

define C-function mailsession-subscribe-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_subscribe_folder";
end;

define C-function mailsession-unsubscribe-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_unsubscribe_folder";
end;

define C-function mailsession-append-message
  input parameter session_ :: <mailsession*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsession_append_message";
end;

define C-function mailsession-append-message-flags
  input parameter session_ :: <mailsession*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  input parameter flags_ :: <mail-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_append_message_flags";
end;

define C-function mailsession-copy-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_copy_message";
end;

define C-function mailsession-move-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_move_message";
end;

define C-function mailsession-get-messages-list
  input parameter session_ :: <mailsession*>;
  input parameter result_ :: <mailmessage-list**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_get_messages_list";
end;

define C-function mailsession-get-envelopes-list
  input parameter session_ :: <mailsession*>;
  input parameter result_ :: <mailmessage-list*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_get_envelopes_list";
end;

define C-function mailsession-remove-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailsession_remove_message";
end;

define C-function mailsession-get-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_get_message";
end;

define C-function mailsession-get-message-by-uid
  input parameter session_ :: <mailsession*>;
  input parameter uid_ :: <char*>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_get_message_by_uid";
end;

define C-function mailsession-login-sasl
  input parameter session_ :: <mailsession*>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_login_sasl";
end;

define C-function mailmessage-new
  result res :: <mailmessage*>;
  c-name: "mailmessage_new";
end;

define C-function mailmessage-free
  input parameter info_ :: <mailmessage*>;
  c-name: "mailmessage_free";
end;

define C-function mailmessage-init
  input parameter msg-info_ :: <mailmessage*>;
  input parameter session_ :: <mailsession*>;
  input parameter driver_ :: <mailmessage-driver*>;
  input parameter indx_ :: <uint32-t>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_init";
end;

define C-function mailmessage-flush
  input parameter info_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_flush";
end;

define C-function mailmessage-check
  input parameter info_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_check";
end;

define C-function mailmessage-fetch-result-free
  input parameter msg-info_ :: <mailmessage*>;
  input parameter msg_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_result_free";
end;

define C-function mailmessage-fetch
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch";
end;

define C-function mailmessage-fetch-header
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_header";
end;

define C-function mailmessage-fetch-body
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_body";
end;

define C-function mailmessage-fetch-size
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_size";
end;

define C-function mailmessage-get-bodystructure
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_get_bodystructure";
end;

define C-function mailmessage-fetch-section
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_section";
end;

define C-function mailmessage-fetch-section-header
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_section_header";
end;

define C-function mailmessage-fetch-section-mime
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_section_mime";
end;

define C-function mailmessage-fetch-section-body
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_section_body";
end;

define C-function mailmessage-fetch-envelope
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_fetch_envelope";
end;

define C-function mailmessage-get-flags
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <mail-flags**>;
  result res :: <C-signed-int>;
  c-name: "mailmessage_get_flags";
end;

define C-function mailmessage-resolve-single-fields
  input parameter msg-info_ :: <mailmessage*>;
  c-name: "mailmessage_resolve_single_fields";
end;

define constant <sto-connect> = <C-function-pointer>;
define C-pointer-type <mailsession**> => <mailsession*>;
define constant <sto-get-folder-session> = <C-function-pointer>;
define constant <sto-uninitialize> = <C-function-pointer>;
define C-struct <mailstorage-driver>
  slot mailstorage_driver$sto-name :: <char*>;
  slot mailstorage_driver$sto-connect :: <sto-connect>;
  slot mailstorage_driver$sto-get-folder-session :: <sto-get-folder-session>;
  slot mailstorage_driver$sto-uninitialize :: <sto-uninitialize>;
end;

define C-pointer-type <mailstorage-driver*> => <mailstorage-driver>;
define C-struct <mailstorage>
  slot mailstorage$sto-id :: <char*>;
  slot mailstorage$sto-data :: <C-void*>;
  slot mailstorage$sto-session :: <mailsession*>;
  slot mailstorage$sto-driver :: <mailstorage-driver*>;
  slot mailstorage$sto-shared-folders :: <clist*>;
  slot mailstorage$sto-user-data :: <C-void*>;
end;

define C-pointer-type <mailstorage*> => <mailstorage>;
define C-struct <mailfolder>
  slot mailfolder$fld-pathname :: <char*>;
  slot mailfolder$fld-virtual-name :: <char*>;
  slot mailfolder$fld-storage :: <mailstorage*>;
  slot mailfolder$fld-session :: <mailsession*>;
  slot mailfolder$fld-shared-session :: <C-signed-int>;
  slot mailfolder$fld-pos :: <clistiter*>;
  slot mailfolder$fld-parent :: <mailfolder*>;
  slot mailfolder$fld-sibling-index :: <C-unsigned-int>;
  slot mailfolder$fld-children :: <carray*>;
  slot mailfolder$fld-user-data :: <C-void*>;
end;

define C-pointer-type <mailfolder*> => <mailfolder>;
define C-function mailfolder-noop
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_noop";
end;

define C-function mailfolder-check
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_check";
end;

define C-function mailfolder-expunge
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_expunge";
end;

define C-function mailfolder-status
  input parameter folder_ :: <mailfolder*>;
  input parameter result-messages_ :: <uint32-t*>;
  input parameter result-recent_ :: <uint32-t*>;
  input parameter result-unseen_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_status";
end;

define C-function mailfolder-append-message
  input parameter folder_ :: <mailfolder*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_append_message";
end;

define C-function mailfolder-append-message-flags
  input parameter folder_ :: <mailfolder*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  input parameter flags_ :: <mail-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_append_message_flags";
end;

define C-function mailfolder-get-messages-list
  input parameter folder_ :: <mailfolder*>;
  input parameter result_ :: <mailmessage-list**>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_get_messages_list";
end;

define C-function mailfolder-get-envelopes-list
  input parameter folder_ :: <mailfolder*>;
  input parameter result_ :: <mailmessage-list*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_get_envelopes_list";
end;

define C-function mailfolder-get-message
  input parameter folder_ :: <mailfolder*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_get_message";
end;

define C-function mailfolder-get-message-by-uid
  input parameter folder_ :: <mailfolder*>;
  input parameter uid_ :: <char*>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_get_message_by_uid";
end;

define C-function mailstorage-new
  input parameter sto-id_ :: <char*>;
  result res :: <mailstorage*>;
  c-name: "mailstorage_new";
end;

define C-function mailstorage-free
  input parameter storage_ :: <mailstorage*>;
  c-name: "mailstorage_free";
end;

define C-function mailstorage-connect
  input parameter storage_ :: <mailstorage*>;
  result res :: <C-signed-int>;
  c-name: "mailstorage_connect";
end;

define C-function mailstorage-disconnect
  input parameter storage_ :: <mailstorage*>;
  c-name: "mailstorage_disconnect";
end;

define C-function mailstorage-noop
  input parameter storage_ :: <mailstorage*>;
  result res :: <C-signed-int>;
  c-name: "mailstorage_noop";
end;

define C-function mailfolder-new
  input parameter fld-storage_ :: <mailstorage*>;
  input parameter fld-pathname_ :: <char*>;
  input parameter fld-virtual-name_ :: <char*>;
  result res :: <mailfolder*>;
  c-name: "mailfolder_new";
end;

define C-function mailfolder-free
  input parameter folder_ :: <mailfolder*>;
  c-name: "mailfolder_free";
end;

define C-function mailfolder-add-child
  input parameter parent_ :: <mailfolder*>;
  input parameter child_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_add_child";
end;

define C-function mailfolder-detach-parent
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_detach_parent";
end;

define C-function mailfolder-connect
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_connect";
end;

define C-function mailfolder-disconnect
  input parameter folder_ :: <mailfolder*>;
  c-name: "mailfolder_disconnect";
end;

define constant <__darwin-time-t> = <C-signed-long>;

define constant <time-t> = <__darwin-time-t>;

define C-struct <mailmessage-tree>
  slot mailmessage_tree$node-parent :: <mailmessage-tree*>;
  slot mailmessage_tree$node-msgid :: <char*>;
  slot mailmessage_tree$node-date :: <C-signed-long>;
  slot mailmessage_tree$node-msg :: <mailmessage*>;
  slot mailmessage_tree$node-children :: <carray*>;
  slot mailmessage_tree$node-is-reply :: <C-signed-int>;
  slot mailmessage_tree$node-base-subject :: <char*>;
end;

define C-pointer-type <mailmessage-tree*> => <mailmessage-tree>;
define C-pointer-type <mailmessage-tree**> => <mailmessage-tree*>;
define constant <comp-func> = <C-function-pointer>;
define C-function mail-build-thread
  input parameter type_ :: <C-signed-int>;
  input parameter default-from_ :: <char*>;
  input parameter env-list_ :: <mailmessage-list*>;
  input parameter result_ :: <mailmessage-tree**>;
  input parameter comp-func_ :: <comp-func>;
  result res :: <C-signed-int>;
  c-name: "mail_build_thread";
end;

define constant <comp-func> = <C-function-pointer>;
define C-function mail-thread-sort
  input parameter tree_ :: <mailmessage-tree*>;
  input parameter comp-func_ :: <comp-func>;
  input parameter sort-sub_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mail_thread_sort";
end;

define C-function mailthread-tree-timecomp
  input parameter ptree1_ :: <mailmessage-tree**>;
  input parameter ptree2_ :: <mailmessage-tree**>;
  result res :: <C-signed-int>;
  c-name: "mailthread_tree_timecomp";
end;

define constant <anonymous-93> = <C-function-pointer>;
define constant <progress-function> = <anonymous-93>;

define C-pointer-type <progress-function*> => <progress-function>;
define C-struct <_MMAPString>
  slot _MMAPString$str :: <char*>;
  slot _MMAPString$len :: <C-unsigned-long>;
  slot _MMAPString$allocated-len :: <C-unsigned-long>;
  slot _MMAPString$fd :: <C-signed-int>;
  slot _MMAPString$mmapped-size :: <C-unsigned-long>;
end;

define constant <MMAPString> = <_MMAPString>;

define C-pointer-type <MMAPString*> => <MMAPString>;
define C-struct <anonymous-724>
  slot anonymous-724$sasl-conn :: <C-void*>;
  slot anonymous-724$sasl-server-fqdn :: <char*>;
  slot anonymous-724$sasl-login :: <char*>;
  slot anonymous-724$sasl-auth-name :: <char*>;
  slot anonymous-724$sasl-password :: <char*>;
  slot anonymous-724$sasl-realm :: <char*>;
  slot anonymous-724$sasl-secret :: <C-void*>;
end;

define constant <anonymous-94> = <C-function-pointer>;
define constant <mailprogress-function> = <anonymous-94>;

define C-pointer-type <mailprogress-function*> => <mailprogress-function>;
define constant <smtp-logger> = <C-function-pointer>;
define C-struct <mailsmtp>
  slot mailsmtp$stream :: <mailstream*>;
  slot mailsmtp$progr-rate :: <C-unsigned-long>;
  slot mailsmtp$progr-fun :: <progress-function*>;
  slot mailsmtp$response :: <char*>;
  slot mailsmtp$line-buffer :: <MMAPString*>;
  slot mailsmtp$response-buffer :: <MMAPString*>;
  slot mailsmtp$esmtp :: <C-signed-int>;
  slot mailsmtp$auth :: <C-signed-int>;
  slot mailsmtp$smtp-sasl :: <anonymous-724>;
  slot mailsmtp$smtp-max-msg-size :: <C-unsigned-long>;
  slot mailsmtp$smtp-progress-fun :: <mailprogress-function*>;
  slot mailsmtp$smtp-progress-context :: <C-void*>;
  slot mailsmtp$response-code :: <C-signed-int>;
  slot mailsmtp$smtp-timeout :: <C-signed-long>;
  slot mailsmtp$smtp-logger :: <smtp-logger>;
  slot mailsmtp$smtp-logger-context :: <C-void*>;
end;

define C-pointer-type <mailsmtp*> => <mailsmtp>;
define C-function mailsmtp-new
  input parameter progr-rate_ :: <size-t>;
  input parameter progr-fun_ :: <progress-function*>;
  result res :: <mailsmtp*>;
  c-name: "mailsmtp_new";
end;

define C-function mailsmtp-free
  input parameter session_ :: <mailsmtp*>;
  c-name: "mailsmtp_free";
end;

define C-function mailsmtp-set-timeout
  input parameter session_ :: <mailsmtp*>;
  input parameter timeout_ :: <time-t>;
  c-name: "mailsmtp_set_timeout";
end;

define C-function mailsmtp-get-timeout
  input parameter session_ :: <mailsmtp*>;
  result res :: <time-t>;
  c-name: "mailsmtp_get_timeout";
end;

define C-function mailsmtp-connect
  input parameter session_ :: <mailsmtp*>;
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_connect";
end;

define C-function mailsmtp-quit
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_quit";
end;

define C-function mailsmtp-auth
  input parameter session_ :: <mailsmtp*>;
  input parameter user_ :: <char*>;
  input parameter pass_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_auth";
end;

define C-function mailsmtp-auth-type
  input parameter session_ :: <mailsmtp*>;
  input parameter user_ :: <char*>;
  input parameter pass_ :: <char*>;
  input parameter type_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_auth_type";
end;

define C-function mailsmtp-helo
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_helo";
end;

define C-function mailsmtp-helo-with-ip
  input parameter session_ :: <mailsmtp*>;
  input parameter useip_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_helo_with_ip";
end;

define C-function mailsmtp-mail
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_mail";
end;

define C-function mailsmtp-rcpt
  input parameter session_ :: <mailsmtp*>;
  input parameter to_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_rcpt";
end;

define C-function mailsmtp-data
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_data";
end;

define C-function mailsmtp-data-message
  input parameter session_ :: <mailsmtp*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_data_message";
end;

define C-function mailsmtp-data-message-quit
  input parameter session_ :: <mailsmtp*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_data_message_quit";
end;

define C-function mailesmtp-ehlo
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_ehlo";
end;

define C-function mailesmtp-ehlo-with-ip
  input parameter session_ :: <mailsmtp*>;
  input parameter useip_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_ehlo_with_ip";
end;

define C-function mailesmtp-mail
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <char*>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_mail";
end;

define C-function mailesmtp-mail-size
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <char*>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_mail_size";
end;

define C-function mailesmtp-rcpt
  input parameter session_ :: <mailsmtp*>;
  input parameter to_ :: <char*>;
  input parameter notify_ :: <C-signed-int>;
  input parameter orcpt_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_rcpt";
end;

define C-function mailesmtp-starttls
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_starttls";
end;

define C-function mailsmtp-strerror
  input parameter errnum_ :: <C-signed-int>;
  result res :: <char*>;
  c-name: "mailsmtp_strerror";
end;

define C-function mailesmtp-auth-sasl
  input parameter session_ :: <mailsmtp*>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_auth_sasl";
end;

define C-function mailsmtp-noop
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_noop";
end;

define C-function mailsmtp-reset
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_reset";
end;

define C-function mailsmtp-set-progress-callback
  input parameter session_ :: <mailsmtp*>;
  input parameter progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  c-name: "mailsmtp_set_progress_callback";
end;

define constant <logger> = <C-function-pointer>;
define C-function mailsmtp-set-logger
  input parameter session_ :: <mailsmtp*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "mailsmtp_set_logger";
end;

define constant <uint16-t> = <C-unsigned-short>;

define C-function mailsmtp-socket-connect
  input parameter session_ :: <mailsmtp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_socket_connect";
end;

define C-function mailsmtp-socket-starttls
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_socket_starttls";
end;

define C-struct <mailstream-ssl-context>
end;

define C-pointer-type <mailstream-ssl-context*> => <mailstream-ssl-context>;
define constant <callback> = <C-function-pointer>;
define C-function mailsmtp-socket-starttls-with-callback
  input parameter session_ :: <mailsmtp*>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_socket_starttls_with_callback";
end;

define C-function mailsmtp-ssl-connect
  input parameter session_ :: <mailsmtp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailsmtp-ssl-connect-with-callback
  input parameter session_ :: <mailsmtp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_ssl_connect_with_callback";
end;

define constant <char<@1024>> = <char*>;
define C-struct <chashdatum>
  slot chashdatum$data :: <C-void*>;
  slot chashdatum$len :: <C-unsigned-int>;
end;

define C-struct <chashcell>
  slot chashcell$func :: <C-unsigned-int>;
  slot chashcell$key :: <chashdatum>;
  slot chashcell$value :: <chashdatum>;
  slot chashcell$next :: <chashcell*>;
end;

define C-pointer-type <chashcell*> => <chashcell>;
define C-pointer-type <chashcell**> => <chashcell*>;
define C-struct <chash>
  slot chash$size :: <C-unsigned-int>;
  slot chash$count :: <C-unsigned-int>;
  slot chash$copyvalue :: <C-signed-int>;
  slot chash$copykey :: <C-signed-int>;
  slot chash$cells :: <chashcell**>;
end;

define C-pointer-type <chash*> => <chash>;
define C-struct <mailmbox-folder>
  array slot mailmbox_folder$mb-filename :: <C-signed-char>, length: 1024;
  slot mailmbox_folder$mb-mtime :: <C-signed-long>;
  slot mailmbox_folder$mb-fd :: <C-signed-int>;
  slot mailmbox_folder$mb-read-only :: <C-signed-int>;
  slot mailmbox_folder$mb-no-uid :: <C-signed-int>;
  slot mailmbox_folder$mb-changed :: <C-signed-int>;
  slot mailmbox_folder$mb-deleted-count :: <C-unsigned-int>;
  slot mailmbox_folder$mb-mapping :: <char*>;
  slot mailmbox_folder$mb-mapping-size :: <C-unsigned-long>;
  slot mailmbox_folder$mb-written-uid :: <C-unsigned-int>;
  slot mailmbox_folder$mb-max-uid :: <C-unsigned-int>;
  slot mailmbox_folder$mb-hash :: <chash*>;
  slot mailmbox_folder$mb-tab :: <carray*>;
end;

define C-pointer-type <mailmbox-folder*> => <mailmbox-folder>;
define C-function mailmbox-append-message-list
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter append-tab_ :: <carray*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_append_message_list";
end;

define C-function mailmbox-append-message
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter data_ :: <char*>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_append_message";
end;

define C-pointer-type <unsigned-int*> => <C-unsigned-int>;
define C-function mailmbox-append-message-uid
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter data_ :: <char*>;
  input parameter len_ :: <size-t>;
  input parameter puid_ :: <unsigned-int*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_append_message_uid";
end;

define C-function mailmbox-fetch-msg
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_fetch_msg";
end;

define C-function mailmbox-fetch-msg-headers
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_fetch_msg_headers";
end;

define C-function mailmbox-fetch-result-free
  input parameter msg_ :: <char*>;
  c-name: "mailmbox_fetch_result_free";
end;

define C-function mailmbox-copy-msg-list
  input parameter dest-folder_ :: <mailmbox-folder*>;
  input parameter src-folder_ :: <mailmbox-folder*>;
  input parameter tab_ :: <carray*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_copy_msg_list";
end;

define C-function mailmbox-copy-msg
  input parameter dest-folder_ :: <mailmbox-folder*>;
  input parameter src-folder_ :: <mailmbox-folder*>;
  input parameter uid_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_copy_msg";
end;

define C-function mailmbox-expunge
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_expunge";
end;

define C-function mailmbox-delete-msg
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter uid_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_delete_msg";
end;

define C-pointer-type <mailmbox-folder**> => <mailmbox-folder*>;
define C-function mailmbox-init
  input parameter filename_ :: <char*>;
  input parameter force-readonly_ :: <C-signed-int>;
  input parameter force-no-uid_ :: <C-signed-int>;
  input parameter default-written-uid_ :: <uint32-t>;
  input parameter result-folder_ :: <mailmbox-folder**>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_init";
end;

define C-function mailmbox-done
  input parameter folder_ :: <mailmbox-folder*>;
  c-name: "mailmbox_done";
end;

define C-function mailmbox-write-lock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_write_lock";
end;

define C-function mailmbox-write-unlock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_write_unlock";
end;

define C-function mailmbox-read-lock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_read_lock";
end;

define C-function mailmbox-read-unlock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_read_unlock";
end;

define C-function mailmbox-map
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_map";
end;

define C-function mailmbox-unmap
  input parameter folder_ :: <mailmbox-folder*>;
  c-name: "mailmbox_unmap";
end;

define C-function mailmbox-sync
  input parameter folder_ :: <mailmbox-folder*>;
  c-name: "mailmbox_sync";
end;

define C-function mailmbox-open
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_open";
end;

define C-function mailmbox-close
  input parameter folder_ :: <mailmbox-folder*>;
  c-name: "mailmbox_close";
end;

define C-function mailmbox-validate-write-lock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_validate_write_lock";
end;

define C-function mailmbox-validate-read-lock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_validate_read_lock";
end;

define C-function mailmbox-fetch-msg-no-lock
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_fetch_msg_no_lock";
end;

define C-function mailmbox-fetch-msg-headers-no-lock
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter num_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_fetch_msg_headers_no_lock";
end;

define C-function mailmbox-append-message-list-no-lock
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter append-tab_ :: <carray*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_append_message_list_no_lock";
end;

define C-function mailmbox-expunge-no-lock
  input parameter folder_ :: <mailmbox-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_expunge_no_lock";
end;

define constant $MAILMH-NO-ERROR = 0;
define constant $MAILMH-ERROR-FOLDER = 1;
define constant $MAILMH-ERROR-MEMORY = 2;
define constant $MAILMH-ERROR-FILE = 3;
define constant $MAILMH-ERROR-COULD-NOT-ALLOC-MSG = 4;
define constant $MAILMH-ERROR-RENAME = 5;
define constant $MAILMH-ERROR-MSG-NOT-FOUND = 6;

define C-pointer-type <mailmh-folder*> => <mailmh-folder>;
define C-struct <mailmh-folder>
  slot mailmh_folder$fl-filename :: <char*>;
  slot mailmh_folder$fl-array-index :: <C-unsigned-int>;
  slot mailmh_folder$fl-name :: <char*>;
  slot mailmh_folder$fl-mtime :: <C-signed-long>;
  slot mailmh_folder$fl-parent :: <mailmh-folder*>;
  slot mailmh_folder$fl-max-index :: <C-unsigned-int>;
  slot mailmh_folder$fl-msgs-tab :: <carray*>;
  slot mailmh_folder$fl-msgs-hash :: <chash*>;
  slot mailmh_folder$fl-subfolders-tab :: <carray*>;
  slot mailmh_folder$fl-subfolders-hash :: <chash*>;
end;

define C-struct <mailmh>
  slot mailmh$mh-main :: <mailmh-folder*>;
end;

define C-struct <mailmh-msg-info>
  slot mailmh_msg_info$msg-array-index :: <C-unsigned-int>;
  slot mailmh_msg_info$msg-index :: <C-unsigned-int>;
  slot mailmh_msg_info$msg-size :: <C-unsigned-long>;
  slot mailmh_msg_info$msg-mtime :: <C-signed-long>;
end;

define C-pointer-type <mailmh*> => <mailmh>;
define C-function mailmh-new
  input parameter foldername_ :: <char*>;
  result res :: <mailmh*>;
  c-name: "mailmh_new";
end;

define C-function mailmh-free
  input parameter f_ :: <mailmh*>;
  c-name: "mailmh_free";
end;

define C-pointer-type <mailmh-msg-info*> => <mailmh-msg-info>;
define C-function mailmh-msg-info-new
  input parameter indx_ :: <uint32-t>;
  input parameter size_ :: <size-t>;
  input parameter mtime_ :: <time-t>;
  result res :: <mailmh-msg-info*>;
  c-name: "mailmh_msg_info_new";
end;

define C-function mailmh-msg-info-free
  input parameter msg-info_ :: <mailmh-msg-info*>;
  c-name: "mailmh_msg_info_free";
end;

define C-function mailmh-folder-new
  input parameter parent_ :: <mailmh-folder*>;
  input parameter name_ :: <char*>;
  result res :: <mailmh-folder*>;
  c-name: "mailmh_folder_new";
end;

define C-function mailmh-folder-free
  input parameter folder_ :: <mailmh-folder*>;
  c-name: "mailmh_folder_free";
end;

define C-function mailmh-folder-add-subfolder
  input parameter parent_ :: <mailmh-folder*>;
  input parameter name_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_subfolder";
end;

define C-function mailmh-folder-find
  input parameter root_ :: <mailmh-folder*>;
  input parameter filename_ :: <char*>;
  result res :: <mailmh-folder*>;
  c-name: "mailmh_folder_find";
end;

define C-function mailmh-folder-remove-subfolder
  input parameter folder_ :: <mailmh-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_remove_subfolder";
end;

define C-function mailmh-folder-rename-subfolder
  input parameter src-folder_ :: <mailmh-folder*>;
  input parameter dst-folder_ :: <mailmh-folder*>;
  input parameter new-name_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_rename_subfolder";
end;

define C-function mailmh-folder-get-message-filename
  input parameter folder_ :: <mailmh-folder*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_get_message_filename";
end;

define C-pointer-type <int*> => <C-signed-int>;
define C-function mailmh-folder-get-message-fd
  input parameter folder_ :: <mailmh-folder*>;
  input parameter indx_ :: <uint32-t>;
  input parameter flags_ :: <C-signed-int>;
  input parameter result_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_get_message_fd";
end;

define C-function mailmh-folder-get-message-size
  input parameter folder_ :: <mailmh-folder*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_get_message_size";
end;

define C-function mailmh-folder-add-message-uid
  input parameter folder_ :: <mailmh-folder*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  input parameter pindex_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_message_uid";
end;

define C-function mailmh-folder-add-message
  input parameter folder_ :: <mailmh-folder*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_message";
end;

define C-function mailmh-folder-add-message-file-uid
  input parameter folder_ :: <mailmh-folder*>;
  input parameter fd_ :: <C-signed-int>;
  input parameter pindex_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_message_file_uid";
end;

define C-function mailmh-folder-add-message-file
  input parameter folder_ :: <mailmh-folder*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_message_file";
end;

define C-function mailmh-folder-remove-message
  input parameter folder_ :: <mailmh-folder*>;
  input parameter indx_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_remove_message";
end;

define C-function mailmh-folder-move-message
  input parameter dest-folder_ :: <mailmh-folder*>;
  input parameter src-folder_ :: <mailmh-folder*>;
  input parameter indx_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_move_message";
end;

define C-function mailmh-folder-update
  input parameter folder_ :: <mailmh-folder*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_update";
end;

define C-function mailmh-folder-get-message-number
  input parameter folder_ :: <mailmh-folder*>;
  result res :: <C-unsigned-int>;
  c-name: "mailmh_folder_get_message_number";
end;

define C-struct <mailimap-capability-data>
  slot mailimap_capability_data$cap-list :: <clist*>;
end;

define C-pointer-type <mailimap-capability-data*> => <mailimap-capability-data>;
define C-struct <mailimap-connection-info>
  slot mailimap_connection_info$imap-capability :: <mailimap-capability-data*>;
end;

define C-pointer-type <mailimap-connection-info*> => <mailimap-connection-info>;
define C-struct <mailimap-flag-list>
  slot mailimap_flag_list$fl-list :: <clist*>;
end;

define C-pointer-type <mailimap-flag-list*> => <mailimap-flag-list>;
define C-struct <mailimap-selection-info>
  slot mailimap_selection_info$sel-perm-flags :: <clist*>;
  slot mailimap_selection_info$sel-perm :: <C-signed-int>;
  slot mailimap_selection_info$sel-uidnext :: <C-unsigned-int>;
  slot mailimap_selection_info$sel-uidvalidity :: <C-unsigned-int>;
  slot mailimap_selection_info$sel-first-unseen :: <C-unsigned-int>;
  slot mailimap_selection_info$sel-flags :: <mailimap-flag-list*>;
  slot mailimap_selection_info$sel-exists :: <C-unsigned-int>;
  slot mailimap_selection_info$sel-recent :: <C-unsigned-int>;
  slot mailimap_selection_info$sel-unseen :: <C-unsigned-int>;
  bitfield slot mailimap_selection_info$sel-has-exists :: <C-int>, width: 1;
  bitfield slot mailimap_selection_info$sel-has-recent :: <C-int>, width: 1;
end;

define C-pointer-type <mailimap-selection-info*> => <mailimap-selection-info>;
define C-struct <mailimap-mailbox-data-status>
  slot mailimap_mailbox_data_status$st-mailbox :: <char*>;
  slot mailimap_mailbox_data_status$st-info-list :: <clist*>;
end;

define C-pointer-type <mailimap-mailbox-data-status*> => <mailimap-mailbox-data-status>;
define C-struct <mailimap-response-info>
  slot mailimap_response_info$rsp-alert :: <char*>;
  slot mailimap_response_info$rsp-parse :: <char*>;
  slot mailimap_response_info$rsp-badcharset :: <clist*>;
  slot mailimap_response_info$rsp-trycreate :: <C-signed-int>;
  slot mailimap_response_info$rsp-mailbox-list :: <clist*>;
  slot mailimap_response_info$rsp-mailbox-lsub :: <clist*>;
  slot mailimap_response_info$rsp-search-result :: <clist*>;
  slot mailimap_response_info$rsp-status :: <mailimap-mailbox-data-status*>;
  slot mailimap_response_info$rsp-expunged :: <clist*>;
  slot mailimap_response_info$rsp-fetch-list :: <clist*>;
  slot mailimap_response_info$rsp-extension-list :: <clist*>;
  slot mailimap_response_info$rsp-atom :: <char*>;
  slot mailimap_response_info$rsp-value :: <char*>;
end;

define C-pointer-type <mailimap-response-info*> => <mailimap-response-info>;
define C-struct <anonymous-1081>
  slot anonymous-1081$sasl-conn :: <C-void*>;
  slot anonymous-1081$sasl-server-fqdn :: <char*>;
  slot anonymous-1081$sasl-login :: <char*>;
  slot anonymous-1081$sasl-auth-name :: <char*>;
  slot anonymous-1081$sasl-password :: <char*>;
  slot anonymous-1081$sasl-realm :: <char*>;
  slot anonymous-1081$sasl-secret :: <C-void*>;
end;

define C-struct <mailimap-msg-att>
  slot mailimap_msg_att$att-list :: <clist*>;
  slot mailimap_msg_att$att-number :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-msg-att*> => <mailimap-msg-att>;
define constant <anonymous-1080> = <C-function-pointer>;
define constant <mailimap-msg-att-handler> = <anonymous-1080>;

define C-pointer-type <mailimap-msg-att-handler*> => <mailimap-msg-att-handler>;
define constant <imap-logger> = <C-function-pointer>;
define C-struct <mailimap>
  slot mailimap$imap-response :: <char*>;
  slot mailimap$imap-stream :: <mailstream*>;
  slot mailimap$imap-progr-rate :: <C-unsigned-long>;
  slot mailimap$imap-progr-fun :: <progress-function*>;
  slot mailimap$imap-stream-buffer :: <MMAPString*>;
  slot mailimap$imap-response-buffer :: <MMAPString*>;
  slot mailimap$imap-state :: <C-signed-int>;
  slot mailimap$imap-tag :: <C-signed-int>;
  slot mailimap$imap-connection-info :: <mailimap-connection-info*>;
  slot mailimap$imap-selection-info :: <mailimap-selection-info*>;
  slot mailimap$imap-response-info :: <mailimap-response-info*>;
  slot mailimap$imap-sasl :: <anonymous-1081>;
  slot mailimap$imap-idle-timestamp :: <C-signed-long>;
  slot mailimap$imap-idle-maxdelay :: <C-signed-long>;
  slot mailimap$imap-body-progress-fun :: <mailprogress-function*>;
  slot mailimap$imap-items-progress-fun :: <mailprogress-function*>;
  slot mailimap$imap-progress-context :: <C-void*>;
  slot mailimap$imap-msg-att-handler :: <mailimap-msg-att-handler*>;
  slot mailimap$imap-msg-att-handler-context :: <C-void*>;
  slot mailimap$imap-timeout :: <C-signed-long>;
  slot mailimap$imap-logger :: <imap-logger>;
  slot mailimap$imap-logger-context :: <C-void*>;
end;

define C-pointer-type <mailimap*> => <mailimap>;
define C-function mailimap-connect
  input parameter session_ :: <mailimap*>;
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_connect";
end;

define C-struct <mailimap-date-time>
  slot mailimap_date_time$dt-day :: <C-signed-int>;
  slot mailimap_date_time$dt-month :: <C-signed-int>;
  slot mailimap_date_time$dt-year :: <C-signed-int>;
  slot mailimap_date_time$dt-hour :: <C-signed-int>;
  slot mailimap_date_time$dt-min :: <C-signed-int>;
  slot mailimap_date_time$dt-sec :: <C-signed-int>;
  slot mailimap_date_time$dt-zone :: <C-signed-int>;
end;

define C-pointer-type <mailimap-date-time*> => <mailimap-date-time>;
define C-function mailimap-append
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <char*>;
  input parameter flag-list_ :: <mailimap-flag-list*>;
  input parameter date-time_ :: <mailimap-date-time*>;
  input parameter literal_ :: <char*>;
  input parameter literal-size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_append";
end;

define C-function mailimap-noop
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_noop";
end;

define C-function mailimap-logout
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_logout";
end;

define C-pointer-type <mailimap-capability-data**> => <mailimap-capability-data*>;
define C-function mailimap-capability
  input parameter session_ :: <mailimap*>;
  input parameter result_ :: <mailimap-capability-data**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_capability";
end;

define C-function mailimap-check
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_check";
end;

define C-function mailimap-close
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_close";
end;

define C-function mailimap-expunge
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_expunge";
end;

define C-struct <mailimap-set>
  slot mailimap_set$set-list :: <clist*>;
end;

define C-pointer-type <mailimap-set*> => <mailimap-set>;
define C-function mailimap-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_copy";
end;

define C-function mailimap-uid-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_copy";
end;

define C-function mailimap-create
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_create";
end;

define C-function mailimap-delete
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_delete";
end;

define C-function mailimap-examine
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_examine";
end;

define C-struct <mailimap-header-list>
  slot mailimap_header_list$hdr-list :: <clist*>;
end;

define C-pointer-type <mailimap-header-list*> => <mailimap-header-list>;
define C-struct <mailimap-section-msgtext>
  slot mailimap_section_msgtext$sec-type :: <C-signed-int>;
  slot mailimap_section_msgtext$sec-header-list :: <mailimap-header-list*>;
end;

define C-pointer-type <mailimap-section-msgtext*> => <mailimap-section-msgtext>;
define C-struct <mailimap-section-part>
  slot mailimap_section_part$sec-id :: <clist*>;
end;

define C-pointer-type <mailimap-section-part*> => <mailimap-section-part>;
define C-union <anonymous-1008>
  slot anonymous-1008$sec-msgtext :: <mailimap-section-msgtext*>;
  slot anonymous-1008$sec-part :: <mailimap-section-part*>;
end;

define C-struct <mailimap-section-text>
  slot mailimap_section_text$sec-type :: <C-signed-int>;
  slot mailimap_section_text$sec-msgtext :: <mailimap-section-msgtext*>;
end;

define C-pointer-type <mailimap-section-text*> => <mailimap-section-text>;
define C-struct <mailimap-section-spec>
  slot mailimap_section_spec$sec-type :: <C-signed-int>;
  slot mailimap_section_spec$sec-data :: <anonymous-1008>;
  slot mailimap_section_spec$sec-text :: <mailimap-section-text*>;
end;

define C-pointer-type <mailimap-section-spec*> => <mailimap-section-spec>;
define C-struct <mailimap-section>
  slot mailimap_section$sec-spec :: <mailimap-section-spec*>;
end;

define C-pointer-type <mailimap-section*> => <mailimap-section>;
define C-struct <mailimap-fetch-att>
  slot mailimap_fetch_att$att-type :: <C-signed-int>;
  slot mailimap_fetch_att$att-section :: <mailimap-section*>;
  slot mailimap_fetch_att$att-offset :: <C-unsigned-int>;
  slot mailimap_fetch_att$att-size :: <C-unsigned-int>;
  slot mailimap_fetch_att$att-extension :: <char*>;
end;

define C-pointer-type <mailimap-fetch-att*> => <mailimap-fetch-att>;
define C-union <anonymous-1024>
  slot anonymous-1024$ft-fetch-att :: <mailimap-fetch-att*>;
  slot anonymous-1024$ft-fetch-att-list :: <clist*>;
end;

define C-struct <mailimap-fetch-type>
  slot mailimap_fetch_type$ft-type :: <C-signed-int>;
  slot mailimap_fetch_type$ft-data :: <anonymous-1024>;
end;

define C-pointer-type <mailimap-fetch-type*> => <mailimap-fetch-type>;
define C-pointer-type <clist**> => <clist*>;
define C-function mailimap-fetch
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch";
end;

define C-function mailimap-uid-fetch
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_fetch";
end;

define C-function mailimap-fetch-list-free
  input parameter fetch-list_ :: <clist*>;
  c-name: "mailimap_fetch_list_free";
end;

define C-function mailimap-list
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  input parameter list-mb_ :: <char*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_list";
end;

define C-function mailimap-login
  input parameter session_ :: <mailimap*>;
  input parameter userid_ :: <char*>;
  input parameter password_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_login";
end;

define C-function mailimap-authenticate
  input parameter session_ :: <mailimap*>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_authenticate";
end;

define C-function mailimap-lsub
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  input parameter list-mb_ :: <char*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_lsub";
end;

define C-function mailimap-list-result-free
  input parameter list_ :: <clist*>;
  c-name: "mailimap_list_result_free";
end;

define C-function mailimap-rename
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  input parameter new-name_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_rename";
end;

define C-struct <mailimap-date>
  slot mailimap_date$dt-day :: <C-signed-int>;
  slot mailimap_date$dt-month :: <C-signed-int>;
  slot mailimap_date$dt-year :: <C-signed-int>;
end;

define C-pointer-type <mailimap-date*> => <mailimap-date>;
define C-struct <anonymous-1031>
  slot anonymous-1031$sk-header-name :: <char*>;
  slot anonymous-1031$sk-header-value :: <char*>;
end;

define C-struct <anonymous-1032>
  slot anonymous-1032$sk-or1 :: <mailimap-search-key*>;
  slot anonymous-1032$sk-or2 :: <mailimap-search-key*>;
end;

define constant <uint64-t> = <C-unsigned-long>;

define C-union <anonymous-909>
  slot anonymous-909$fl-keyword :: <char*>;
  slot anonymous-909$fl-extension :: <char*>;
end;

define C-struct <mailimap-flag>
  slot mailimap_flag$fl-type :: <C-signed-int>;
  slot mailimap_flag$fl-data :: <anonymous-909>;
end;

define C-pointer-type <mailimap-flag*> => <mailimap-flag>;
define C-struct <anonymous-1033>
  slot anonymous-1033$sk-entry-name :: <mailimap-flag*>;
  slot anonymous-1033$sk-entry-type-req :: <C-signed-int>;
  slot anonymous-1033$sk-modseq-valzer :: <C-unsigned-long>;
end;

define C-union <anonymous-1034>
  slot anonymous-1034$sk-bcc :: <char*>;
  slot anonymous-1034$sk-before :: <mailimap-date*>;
  slot anonymous-1034$sk-body :: <char*>;
  slot anonymous-1034$sk-cc :: <char*>;
  slot anonymous-1034$sk-from :: <char*>;
  slot anonymous-1034$sk-keyword :: <char*>;
  slot anonymous-1034$sk-on :: <mailimap-date*>;
  slot anonymous-1034$sk-since :: <mailimap-date*>;
  slot anonymous-1034$sk-subject :: <char*>;
  slot anonymous-1034$sk-text :: <char*>;
  slot anonymous-1034$sk-to :: <char*>;
  slot anonymous-1034$sk-unkeyword :: <char*>;
  slot anonymous-1034$sk-header :: <anonymous-1031>;
  slot anonymous-1034$sk-larger :: <C-unsigned-int>;
  slot anonymous-1034$sk-not :: <mailimap-search-key*>;
  slot anonymous-1034$sk-or :: <anonymous-1032>;
  slot anonymous-1034$sk-sentbefore :: <mailimap-date*>;
  slot anonymous-1034$sk-senton :: <mailimap-date*>;
  slot anonymous-1034$sk-sentsince :: <mailimap-date*>;
  slot anonymous-1034$sk-smaller :: <C-unsigned-int>;
  slot anonymous-1034$sk-uid :: <mailimap-set*>;
  slot anonymous-1034$sk-set :: <mailimap-set*>;
  slot anonymous-1034$sk-xgmthrid :: <C-unsigned-long>;
  slot anonymous-1034$sk-xgmmsgid :: <C-unsigned-long>;
  slot anonymous-1034$sk-xgmraw :: <char*>;
  slot anonymous-1034$sk-multiple :: <clist*>;
  slot anonymous-1034$sk-modseq :: <anonymous-1033>;
end;

define C-struct <mailimap-search-key>
  slot mailimap_search_key$sk-type :: <C-signed-int>;
  slot mailimap_search_key$sk-data :: <anonymous-1034>;
end;

define C-pointer-type <mailimap-search-key*> => <mailimap-search-key>;
define C-function mailimap-search
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <char*>;
  input parameter key_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_search";
end;

define C-function mailimap-uid-search
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <char*>;
  input parameter key_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_search";
end;

define C-function mailimap-search-result-free
  input parameter search-result_ :: <clist*>;
  c-name: "mailimap_search_result_free";
end;

define C-function mailimap-select
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_select";
end;

define C-struct <mailimap-status-att-list>
  slot mailimap_status_att_list$att-list :: <clist*>;
end;

define C-pointer-type <mailimap-status-att-list*> => <mailimap-status-att-list>;
define C-pointer-type <mailimap-mailbox-data-status**> => <mailimap-mailbox-data-status*>;
define C-function mailimap-status
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  input parameter status-att-list_ :: <mailimap-status-att-list*>;
  input parameter result_ :: <mailimap-mailbox-data-status**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_status";
end;

define C-struct <mailimap-store-att-flags>
  slot mailimap_store_att_flags$fl-sign :: <C-signed-int>;
  slot mailimap_store_att_flags$fl-silent :: <C-signed-int>;
  slot mailimap_store_att_flags$fl-flag-list :: <mailimap-flag-list*>;
end;

define C-pointer-type <mailimap-store-att-flags*> => <mailimap-store-att-flags>;
define C-function mailimap-store
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter store-att-flags_ :: <mailimap-store-att-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_store";
end;

define C-function mailimap-uid-store
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter store-att-flags_ :: <mailimap-store-att-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_store";
end;

define C-function mailimap-subscribe
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_subscribe";
end;

define C-function mailimap-unsubscribe
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_unsubscribe";
end;

define C-function mailimap-starttls
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_starttls";
end;

define C-function mailimap-new
  input parameter imap-progr-rate_ :: <size-t>;
  input parameter imap-progr-fun_ :: <progress-function*>;
  result res :: <mailimap*>;
  c-name: "mailimap_new";
end;

define C-function mailimap-free
  input parameter session_ :: <mailimap*>;
  c-name: "mailimap_free";
end;

define C-function mailimap-send-current-tag
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_send_current_tag";
end;

define C-function mailimap-read-line
  input parameter session_ :: <mailimap*>;
  result res :: <char*>;
  c-name: "mailimap_read_line";
end;

define C-struct <anonymous-996>
  slot anonymous-996$atom-name :: <char*>;
  slot anonymous-996$atom-value :: <char*>;
end;

define C-pointer-type <mailimap-extension-data**> => <mailimap-extension-data*>;
define constant <ext-parser> = <C-function-pointer>;
define constant <ext-free> = <C-function-pointer>;
define C-struct <mailimap-extension-api>
  slot mailimap_extension_api$ext-name :: <char*>;
  slot mailimap_extension_api$ext-id :: <C-signed-int>;
  slot mailimap_extension_api$ext-parser :: <ext-parser>;
  slot mailimap_extension_api$ext-free :: <ext-free>;
end;

define C-pointer-type <mailimap-extension-api*> => <mailimap-extension-api>;
define C-struct <mailimap-extension-data>
  slot mailimap_extension_data$ext-extension :: <mailimap-extension-api*>;
  slot mailimap_extension_data$ext-type :: <C-signed-int>;
  slot mailimap_extension_data$ext-data :: <C-void*>;
end;

define C-pointer-type <mailimap-extension-data*> => <mailimap-extension-data>;
define C-union <anonymous-997>
  slot anonymous-997$rc-badcharset :: <clist*>;
  slot anonymous-997$rc-cap-data :: <mailimap-capability-data*>;
  slot anonymous-997$rc-perm-flags :: <clist*>;
  slot anonymous-997$rc-uidnext :: <C-unsigned-int>;
  slot anonymous-997$rc-uidvalidity :: <C-unsigned-int>;
  slot anonymous-997$rc-first-unseen :: <C-unsigned-int>;
  slot anonymous-997$rc-atom :: <anonymous-996>;
  slot anonymous-997$rc-ext-data :: <mailimap-extension-data*>;
end;

define C-struct <mailimap-resp-text-code>
  slot mailimap_resp_text_code$rc-type :: <C-signed-int>;
  slot mailimap_resp_text_code$rc-data :: <anonymous-997>;
end;

define C-pointer-type <mailimap-resp-text-code*> => <mailimap-resp-text-code>;
define C-struct <mailimap-resp-text>
  slot mailimap_resp_text$rsp-code :: <mailimap-resp-text-code*>;
  slot mailimap_resp_text$rsp-text :: <char*>;
end;

define C-pointer-type <mailimap-resp-text*> => <mailimap-resp-text>;
define C-struct <mailimap-resp-cond-state>
  slot mailimap_resp_cond_state$rsp-type :: <C-signed-int>;
  slot mailimap_resp_cond_state$rsp-text :: <mailimap-resp-text*>;
end;

define C-pointer-type <mailimap-resp-cond-state*> => <mailimap-resp-cond-state>;
define C-struct <mailimap-response-tagged>
  slot mailimap_response_tagged$rsp-tag :: <char*>;
  slot mailimap_response_tagged$rsp-cond-state :: <mailimap-resp-cond-state*>;
end;

define C-pointer-type <mailimap-response-tagged*> => <mailimap-response-tagged>;
define C-struct <mailimap-resp-cond-bye>
  slot mailimap_resp_cond_bye$rsp-text :: <mailimap-resp-text*>;
end;

define C-pointer-type <mailimap-resp-cond-bye*> => <mailimap-resp-cond-bye>;
define C-struct <mailimap-response-fatal>
  slot mailimap_response_fatal$rsp-bye :: <mailimap-resp-cond-bye*>;
end;

define C-pointer-type <mailimap-response-fatal*> => <mailimap-response-fatal>;
define C-union <anonymous-978>
  slot anonymous-978$rsp-tagged :: <mailimap-response-tagged*>;
  slot anonymous-978$rsp-fatal :: <mailimap-response-fatal*>;
end;

define C-struct <mailimap-response-done>
  slot mailimap_response_done$rsp-type :: <C-signed-int>;
  slot mailimap_response_done$rsp-data :: <anonymous-978>;
end;

define C-pointer-type <mailimap-response-done*> => <mailimap-response-done>;
define C-struct <mailimap-response>
  slot mailimap_response$rsp-cont-req-or-resp-data-list :: <clist*>;
  slot mailimap_response$rsp-resp-done :: <mailimap-response-done*>;
end;

define C-pointer-type <mailimap-response*> => <mailimap-response>;
define C-pointer-type <mailimap-response**> => <mailimap-response*>;
define C-function mailimap-parse-response
  input parameter session_ :: <mailimap*>;
  input parameter result_ :: <mailimap-response**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_parse_response";
end;

define C-function mailimap-set-progress-callback
  input parameter session_ :: <mailimap*>;
  input parameter body-progr-fun_ :: <mailprogress-function*>;
  input parameter items-progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  c-name: "mailimap_set_progress_callback";
end;

define C-function mailimap-set-msg-att-handler
  input parameter session_ :: <mailimap*>;
  input parameter handler_ :: <mailimap-msg-att-handler*>;
  input parameter context_ :: <C-void*>;
  c-name: "mailimap_set_msg_att_handler";
end;

define C-function mailimap-set-timeout
  input parameter session_ :: <mailimap*>;
  input parameter timeout_ :: <time-t>;
  c-name: "mailimap_set_timeout";
end;

define C-function mailimap-get-timeout
  input parameter session_ :: <mailimap*>;
  result res :: <time-t>;
  c-name: "mailimap_get_timeout";
end;

define constant <logger> = <C-function-pointer>;
define C-function mailimap-set-logger
  input parameter session_ :: <mailimap*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "mailimap_set_logger";
end;

define C-function mailimap-socket-connect-voip
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailimap_socket_connect_voip";
end;

define C-function mailimap-socket-connect
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_socket_connect";
end;

define C-function mailimap-socket-starttls
  input parameter f_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_socket_starttls";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailimap-socket-starttls-with-callback
  input parameter f_ :: <mailimap*>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_socket_starttls_with_callback";
end;

define C-function mailimap-ssl-connect
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect";
end;

define C-function mailimap-ssl-connect-voip
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_voip";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailimap-ssl-connect-with-callback
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_with_callback";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailimap-ssl-connect-voip-with-callback
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_voip_with_callback";
end;

define C-struct <anonymous-1416>
  slot anonymous-1416$sasl-conn :: <C-void*>;
  slot anonymous-1416$sasl-server-fqdn :: <char*>;
  slot anonymous-1416$sasl-login :: <char*>;
  slot anonymous-1416$sasl-auth-name :: <char*>;
  slot anonymous-1416$sasl-password :: <char*>;
  slot anonymous-1416$sasl-realm :: <char*>;
  slot anonymous-1416$sasl-secret :: <C-void*>;
end;

define constant <pop3-logger> = <C-function-pointer>;
define C-struct <mailpop3>
  slot mailpop3$pop3-response :: <char*>;
  slot mailpop3$pop3-timestamp :: <char*>;
  slot mailpop3$pop3-stream :: <mailstream*>;
  slot mailpop3$pop3-progr-rate :: <C-unsigned-long>;
  slot mailpop3$pop3-progr-fun :: <progress-function*>;
  slot mailpop3$pop3-stream-buffer :: <MMAPString*>;
  slot mailpop3$pop3-response-buffer :: <MMAPString*>;
  slot mailpop3$pop3-msg-tab :: <carray*>;
  slot mailpop3$pop3-state :: <C-signed-int>;
  slot mailpop3$pop3-deleted-count :: <C-unsigned-int>;
  slot mailpop3$pop3-sasl :: <anonymous-1416>;
  slot mailpop3$pop3-timeout :: <C-signed-long>;
  slot mailpop3$pop3-progress-fun :: <mailprogress-function*>;
  slot mailpop3$pop3-progress-context :: <C-void*>;
  slot mailpop3$pop3-logger :: <pop3-logger>;
  slot mailpop3$pop3-logger-context :: <C-void*>;
end;

define C-pointer-type <mailpop3*> => <mailpop3>;
define C-function mailpop3-new
  input parameter pop3-progr-rate_ :: <size-t>;
  input parameter pop3-progr-fun_ :: <progress-function*>;
  result res :: <mailpop3*>;
  c-name: "mailpop3_new";
end;

define C-function mailpop3-free
  input parameter f_ :: <mailpop3*>;
  c-name: "mailpop3_free";
end;

define C-function mailpop3-set-timeout
  input parameter f_ :: <mailpop3*>;
  input parameter timeout_ :: <time-t>;
  c-name: "mailpop3_set_timeout";
end;

define C-function mailpop3-get-timeout
  input parameter f_ :: <mailpop3*>;
  result res :: <time-t>;
  c-name: "mailpop3_get_timeout";
end;

define C-function mailpop3-set-progress-callback
  input parameter f_ :: <mailpop3*>;
  input parameter progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  c-name: "mailpop3_set_progress_callback";
end;

define C-function mailpop3-connect
  input parameter f_ :: <mailpop3*>;
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_connect";
end;

define C-function mailpop3-quit
  input parameter f_ :: <mailpop3*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_quit";
end;

define C-function mailpop3-apop
  input parameter f_ :: <mailpop3*>;
  input parameter user_ :: <char*>;
  input parameter password_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_apop";
end;

define C-function mailpop3-user
  input parameter f_ :: <mailpop3*>;
  input parameter user_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_user";
end;

define C-function mailpop3-pass
  input parameter f_ :: <mailpop3*>;
  input parameter password_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_pass";
end;

define C-pointer-type <carray**> => <carray*>;
define C-function mailpop3-list
  input parameter f_ :: <mailpop3*>;
  input parameter result_ :: <carray**>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_list";
end;

define C-function mailpop3-retr
  input parameter f_ :: <mailpop3*>;
  input parameter indx_ :: <C-unsigned-int>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_retr";
end;

define C-function mailpop3-top
  input parameter f_ :: <mailpop3*>;
  input parameter indx_ :: <C-unsigned-int>;
  input parameter count_ :: <C-unsigned-int>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_top";
end;

define C-function mailpop3-dele
  input parameter f_ :: <mailpop3*>;
  input parameter indx_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_dele";
end;

define C-function mailpop3-noop
  input parameter f_ :: <mailpop3*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_noop";
end;

define C-function mailpop3-rset
  input parameter f_ :: <mailpop3*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_rset";
end;

define C-function mailpop3-top-free
  input parameter str_ :: <char*>;
  c-name: "mailpop3_top_free";
end;

define C-function mailpop3-retr-free
  input parameter str_ :: <char*>;
  c-name: "mailpop3_retr_free";
end;

define C-struct <mailpop3-msg-info>
  slot mailpop3_msg_info$msg-index :: <C-unsigned-int>;
  slot mailpop3_msg_info$msg-size :: <C-unsigned-int>;
  slot mailpop3_msg_info$msg-uidl :: <char*>;
  slot mailpop3_msg_info$msg-deleted :: <C-signed-int>;
end;

define C-pointer-type <mailpop3-msg-info*> => <mailpop3-msg-info>;
define C-pointer-type <mailpop3-msg-info**> => <mailpop3-msg-info*>;
define C-function mailpop3-get-msg-info
  input parameter f_ :: <mailpop3*>;
  input parameter indx_ :: <C-unsigned-int>;
  input parameter result_ :: <mailpop3-msg-info**>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_get_msg_info";
end;

define C-function mailpop3-capa
  input parameter f_ :: <mailpop3*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_capa";
end;

define C-function mailpop3-capa-resp-free
  input parameter capa-list_ :: <clist*>;
  c-name: "mailpop3_capa_resp_free";
end;

define C-struct <mailpop3-stat-response>
  slot mailpop3_stat_response$msgs-count :: <C-unsigned-int>;
  slot mailpop3_stat_response$msgs-size :: <C-unsigned-long>;
end;

define C-pointer-type <mailpop3-stat-response*> => <mailpop3-stat-response>;
define C-pointer-type <mailpop3-stat-response**> => <mailpop3-stat-response*>;
define C-function mailpop3-stat
  input parameter f_ :: <mailpop3*>;
  input parameter result_ :: <mailpop3-stat-response**>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_stat";
end;

define C-function mailpop3-stat-resp-free
  input parameter stat-result_ :: <mailpop3-stat-response*>;
  c-name: "mailpop3_stat_resp_free";
end;

define C-function mailpop3-stls
  input parameter f_ :: <mailpop3*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_stls";
end;

define C-function mailpop3-auth
  input parameter f_ :: <mailpop3*>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_auth";
end;

define constant <logger> = <C-function-pointer>;
define C-function mailpop3-set-logger
  input parameter session_ :: <mailpop3*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "mailpop3_set_logger";
end;

define constant $POP3-STRING-SIZE = 513;

define C-function mailpop3-socket-connect
  input parameter f_ :: <mailpop3*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_socket_connect";
end;

define C-function mailpop3-socket-starttls
  input parameter f_ :: <mailpop3*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_socket_starttls";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailpop3-socket-starttls-with-callback
  input parameter f_ :: <mailpop3*>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_socket_starttls_with_callback";
end;

define C-function mailpop3-ssl-connect
  input parameter f_ :: <mailpop3*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailpop3-ssl-connect-with-callback
  input parameter f_ :: <mailpop3*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_ssl_connect_with_callback";
end;

define constant <nntp-logger> = <C-function-pointer>;
define C-struct <newsnntp>
  slot newsnntp$nntp-stream :: <mailstream*>;
  slot newsnntp$nntp-readonly :: <C-signed-int>;
  slot newsnntp$nntp-progr-rate :: <C-unsigned-int>;
  slot newsnntp$nntp-progr-fun :: <progress-function*>;
  slot newsnntp$nntp-stream-buffer :: <MMAPString*>;
  slot newsnntp$nntp-response-buffer :: <MMAPString*>;
  slot newsnntp$nntp-response :: <char*>;
  slot newsnntp$nntp-timeout :: <C-signed-long>;
  slot newsnntp$nntp-logger :: <nntp-logger>;
  slot newsnntp$nntp-logger-context :: <C-void*>;
end;

define C-pointer-type <newsnntp*> => <newsnntp>;
define C-function newsnntp-new
  input parameter nntp-progr-rate_ :: <size-t>;
  input parameter nntp-progr-fun_ :: <progress-function*>;
  result res :: <newsnntp*>;
  c-name: "newsnntp_new";
end;

define C-function newsnntp-free
  input parameter session_ :: <newsnntp*>;
  c-name: "newsnntp_free";
end;

define constant <logger> = <C-function-pointer>;
define C-function newsnntp-set-logger
  input parameter session_ :: <newsnntp*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "newsnntp_set_logger";
end;

define C-function newsnntp-set-timeout
  input parameter session_ :: <newsnntp*>;
  input parameter timeout_ :: <time-t>;
  c-name: "newsnntp_set_timeout";
end;

define C-function newsnntp-get-timeout
  input parameter session_ :: <newsnntp*>;
  result res :: <time-t>;
  c-name: "newsnntp_get_timeout";
end;

define C-function newsnntp-connect
  input parameter session_ :: <newsnntp*>;
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_connect";
end;

define C-function newsnntp-quit
  input parameter session_ :: <newsnntp*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_quit";
end;

define C-function newsnntp-head
  input parameter session_ :: <newsnntp*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_head";
end;

define C-function newsnntp-head-free
  input parameter str_ :: <char*>;
  c-name: "newsnntp_head_free";
end;

define C-function newsnntp-article
  input parameter session_ :: <newsnntp*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_article";
end;

define C-function newsnntp-article-by-message-id
  input parameter session_ :: <newsnntp*>;
  input parameter msg-id_ :: <char*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_article_by_message_id";
end;

define C-function newsnntp-article-free
  input parameter str_ :: <char*>;
  c-name: "newsnntp_article_free";
end;

define C-function newsnntp-body
  input parameter session_ :: <newsnntp*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_body";
end;

define C-function newsnntp-body-free
  input parameter str_ :: <char*>;
  c-name: "newsnntp_body_free";
end;

define C-function newsnntp-mode-reader
  input parameter session_ :: <newsnntp*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_mode_reader";
end;

define C-struct <tm>
  slot tm$tm-sec :: <C-signed-int>;
  slot tm$tm-min :: <C-signed-int>;
  slot tm$tm-hour :: <C-signed-int>;
  slot tm$tm-mday :: <C-signed-int>;
  slot tm$tm-mon :: <C-signed-int>;
  slot tm$tm-year :: <C-signed-int>;
  slot tm$tm-wday :: <C-signed-int>;
  slot tm$tm-yday :: <C-signed-int>;
  slot tm$tm-isdst :: <C-signed-int>;
  slot tm$tm-gmtoff :: <C-signed-long>;
  slot tm$tm-zone :: <char*>;
end;

define C-pointer-type <tm*> => <tm>;
define C-function newsnntp-date
  input parameter session_ :: <newsnntp*>;
  input parameter tm_ :: <tm*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_date";
end;

define C-function newsnntp-authinfo-username
  input parameter session_ :: <newsnntp*>;
  input parameter username_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_username";
end;

define C-function newsnntp-authinfo-password
  input parameter session_ :: <newsnntp*>;
  input parameter password_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_password";
end;

define C-function newsnntp-post
  input parameter session_ :: <newsnntp*>;
  input parameter message_ :: <char*>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_post";
end;

define C-struct <newsnntp-group-info>
  slot newsnntp_group_info$grp-name :: <char*>;
  slot newsnntp_group_info$grp-first :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-last :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-count :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-type :: <C-signed-char>;
end;

define C-pointer-type <newsnntp-group-info*> => <newsnntp-group-info>;
define C-pointer-type <newsnntp-group-info**> => <newsnntp-group-info*>;
define C-function newsnntp-group
  input parameter session_ :: <newsnntp*>;
  input parameter groupname_ :: <char*>;
  input parameter info_ :: <newsnntp-group-info**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_group";
end;

define C-function newsnntp-group-free
  input parameter info_ :: <newsnntp-group-info*>;
  c-name: "newsnntp_group_free";
end;

define C-function newsnntp-list
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list";
end;

define C-function newsnntp-list-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_free";
end;

define C-function newsnntp-list-overview-fmt
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_overview_fmt";
end;

define C-function newsnntp-list-overview-fmt-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_overview_fmt_free";
end;

define C-function newsnntp-list-active
  input parameter session_ :: <newsnntp*>;
  input parameter wildmat_ :: <char*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_active";
end;

define C-function newsnntp-list-active-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_active_free";
end;

define C-function newsnntp-list-active-times
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_active_times";
end;

define C-function newsnntp-list-active-times-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_active_times_free";
end;

define C-function newsnntp-list-distribution
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_distribution";
end;

define C-function newsnntp-list-distribution-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_distribution_free";
end;

define C-function newsnntp-list-distrib-pats
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_distrib_pats";
end;

define C-function newsnntp-list-distrib-pats-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_distrib_pats_free";
end;

define C-function newsnntp-list-newsgroups
  input parameter session_ :: <newsnntp*>;
  input parameter pattern_ :: <char*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_newsgroups";
end;

define C-function newsnntp-list-newsgroups-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_newsgroups_free";
end;

define C-function newsnntp-list-subscriptions
  input parameter session_ :: <newsnntp*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_list_subscriptions";
end;

define C-function newsnntp-list-subscriptions-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_list_subscriptions_free";
end;

define C-function newsnntp-listgroup
  input parameter session_ :: <newsnntp*>;
  input parameter group-name_ :: <char*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_listgroup";
end;

define C-function newsnntp-listgroup-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_listgroup_free";
end;

define C-function newsnntp-xhdr-single
  input parameter session_ :: <newsnntp*>;
  input parameter header_ :: <char*>;
  input parameter article_ :: <uint32-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_xhdr_single";
end;

define C-function newsnntp-xhdr-range
  input parameter session_ :: <newsnntp*>;
  input parameter header_ :: <char*>;
  input parameter rangeinf_ :: <uint32-t>;
  input parameter rangesup_ :: <uint32-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_xhdr_range";
end;

define C-function newsnntp-xhdr-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_xhdr_free";
end;

define C-struct <newsnntp-xover-resp-item>
  slot newsnntp_xover_resp_item$ovr-article :: <C-unsigned-int>;
  slot newsnntp_xover_resp_item$ovr-subject :: <char*>;
  slot newsnntp_xover_resp_item$ovr-author :: <char*>;
  slot newsnntp_xover_resp_item$ovr-date :: <char*>;
  slot newsnntp_xover_resp_item$ovr-message-id :: <char*>;
  slot newsnntp_xover_resp_item$ovr-references :: <char*>;
  slot newsnntp_xover_resp_item$ovr-size :: <C-unsigned-long>;
  slot newsnntp_xover_resp_item$ovr-line-count :: <C-unsigned-int>;
  slot newsnntp_xover_resp_item$ovr-others :: <clist*>;
end;

define C-pointer-type <newsnntp-xover-resp-item*> => <newsnntp-xover-resp-item>;
define C-pointer-type <newsnntp-xover-resp-item**> => <newsnntp-xover-resp-item*>;
define C-function newsnntp-xover-single
  input parameter session_ :: <newsnntp*>;
  input parameter article_ :: <uint32-t>;
  input parameter result_ :: <newsnntp-xover-resp-item**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_xover_single";
end;

define C-function newsnntp-xover-range
  input parameter session_ :: <newsnntp*>;
  input parameter rangeinf_ :: <uint32-t>;
  input parameter rangesup_ :: <uint32-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_xover_range";
end;

define C-function xover-resp-item-free
  input parameter n_ :: <newsnntp-xover-resp-item*>;
  c-name: "xover_resp_item_free";
end;

define C-function newsnntp-xover-resp-list-free
  input parameter l_ :: <clist*>;
  c-name: "newsnntp_xover_resp_list_free";
end;

define C-function newsnntp-authinfo-generic
  input parameter session_ :: <newsnntp*>;
  input parameter authentificator_ :: <char*>;
  input parameter arguments_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_generic";
end;

define C-function newsnntp-socket-connect
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_socket_connect";
end;

define C-function newsnntp-ssl-connect
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function newsnntp-ssl-connect-with-callback
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <char*>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_ssl_connect_with_callback";
end;

define constant $MAIL-CHARCONV-NO-ERROR = 0;
define constant $MAIL-CHARCONV-ERROR-UNKNOWN-CHARSET = 1;
define constant $MAIL-CHARCONV-ERROR-MEMORY = 2;
define constant $MAIL-CHARCONV-ERROR-CONV = 3;

define C-function extended-charconv
  input parameter tocode_ :: <char*>;
  input parameter fromcode_ :: <char*>;
  input parameter str_ :: <char*>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <char*>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "extended_charconv";
end;

define C-function charconv
  input parameter tocode_ :: <char*>;
  input parameter fromcode_ :: <char*>;
  input parameter str_ :: <char*>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "charconv";
end;

define C-function charconv-buffer
  input parameter tocode_ :: <char*>;
  input parameter fromcode_ :: <char*>;
  input parameter str_ :: <char*>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "charconv_buffer";
end;

define C-function charconv-buffer-free
  input parameter str_ :: <char*>;
  c-name: "charconv_buffer_free";
end;

define C-struct <mailsem>
  slot mailsem$sem-sem :: <C-void*>;
  slot mailsem$sem-kind :: <C-signed-int>;
end;

define C-pointer-type <mailsem*> => <mailsem>;
define C-function mailsem-new
  result res :: <mailsem*>;
  c-name: "mailsem_new";
end;

define C-function mailsem-free
  input parameter sem_ :: <mailsem*>;
  c-name: "mailsem_free";
end;

define C-function mailsem-up
  input parameter sem_ :: <mailsem*>;
  result res :: <C-signed-int>;
  c-name: "mailsem_up";
end;

define C-function mailsem-down
  input parameter sem_ :: <mailsem*>;
  result res :: <C-signed-int>;
  c-name: "mailsem_down";
end;

define C-function carray-new
  input parameter initsize_ :: <C-unsigned-int>;
  result res :: <carray*>;
  c-name: "carray_new";
end;

define C-function carray-add
  input parameter array_ :: <carray*>;
  input parameter data_ :: <C-void*>;
  input parameter indx_ :: <unsigned-int*>;
  result res :: <C-signed-int>;
  c-name: "carray_add";
end;

define C-function carray-set-size
  input parameter array_ :: <carray*>;
  input parameter new-size_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "carray_set_size";
end;

define C-function carray-delete
  input parameter array_ :: <carray*>;
  input parameter indx_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "carray_delete";
end;

define C-function carray-delete-slow
  input parameter array_ :: <carray*>;
  input parameter indx_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "carray_delete_slow";
end;

define C-function carray-delete-fast
  input parameter array_ :: <carray*>;
  input parameter indx_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "carray_delete_fast";
end;

define C-function carray-data
  input parameter array_ :: <carray*>;
  result res :: <statically-typed-pointer*>;
  c-name: "carray_data";
end;

define C-function carray-count
  input parameter array_ :: <carray*>;
  result res :: <C-unsigned-int>;
  c-name: "carray_count";
end;

define C-function carray-get
  input parameter array_ :: <carray*>;
  input parameter indx_ :: <C-unsigned-int>;
  result res :: <C-void*>;
  c-name: "carray_get";
end;

define C-function carray-set
  input parameter array_ :: <carray*>;
  input parameter indx_ :: <C-unsigned-int>;
  input parameter value_ :: <C-void*>;
  c-name: "carray_set";
end;

define C-function carray-free
  input parameter array_ :: <carray*>;
  c-name: "carray_free";
end;

define constant <chashiter> = <chashcell>;

define C-function chash-new
  input parameter size_ :: <C-unsigned-int>;
  input parameter flags_ :: <C-signed-int>;
  result res :: <chash*>;
  c-name: "chash_new";
end;

define C-function chash-free
  input parameter hash_ :: <chash*>;
  c-name: "chash_free";
end;

define C-function chash-clear
  input parameter hash_ :: <chash*>;
  c-name: "chash_clear";
end;

define C-pointer-type <chashdatum*> => <chashdatum>;
define C-function chash-set
  input parameter hash_ :: <chash*>;
  input parameter key_ :: <chashdatum*>;
  input parameter value_ :: <chashdatum*>;
  input parameter oldvalue_ :: <chashdatum*>;
  result res :: <C-signed-int>;
  c-name: "chash_set";
end;

define C-function chash-get
  input parameter hash_ :: <chash*>;
  input parameter key_ :: <chashdatum*>;
  input parameter result_ :: <chashdatum*>;
  result res :: <C-signed-int>;
  c-name: "chash_get";
end;

define C-function chash-delete
  input parameter hash_ :: <chash*>;
  input parameter key_ :: <chashdatum*>;
  input parameter oldvalue_ :: <chashdatum*>;
  result res :: <C-signed-int>;
  c-name: "chash_delete";
end;

define C-function chash-resize
  input parameter hash_ :: <chash*>;
  input parameter size_ :: <C-unsigned-int>;
  result res :: <C-signed-int>;
  c-name: "chash_resize";
end;

define C-pointer-type <chashiter*> => <chashiter>;
define C-function chash-begin
  input parameter hash_ :: <chash*>;
  result res :: <chashiter*>;
  c-name: "chash_begin";
end;

define C-function chash-next
  input parameter hash_ :: <chash*>;
  input parameter iter_ :: <chashiter*>;
  result res :: <chashiter*>;
  c-name: "chash_next";
end;

define C-function chash-size
  input parameter hash_ :: <chash*>;
  result res :: <C-unsigned-int>;
  c-name: "chash_size";
end;

define C-function chash-count
  input parameter hash_ :: <chash*>;
  result res :: <C-unsigned-int>;
  c-name: "chash_count";
end;

define C-function chash-key
  input parameter iter_ :: <chashiter*>;
  input parameter result_ :: <chashdatum*>;
  c-name: "chash_key";
end;

define C-function chash-value
  input parameter iter_ :: <chashiter*>;
  input parameter result_ :: <chashdatum*>;
  c-name: "chash_value";
end;

define constant $CHASH-COPYNONE = 0;

define constant $CHASH-COPYKEY = 1;

define constant $CHASH-COPYVALUE = 2;

define constant $CHASH-COPYALL = 3;

define constant $CHASH-DEFAULTSIZE = 13;

define C-function maillock-read-lock
  input parameter filename_ :: <char*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_read_lock";
end;

define C-function maillock-read-unlock
  input parameter filename_ :: <char*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_read_unlock";
end;

define C-function maillock-write-lock
  input parameter filename_ :: <char*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_write_lock";
end;

define C-function maillock-write-unlock
  input parameter filename_ :: <char*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_write_unlock";
end;

 /* Ignoring declaration for {<variable-declaration> #x00C5E4D0} "mbox-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D361F8} "mbox-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00DC4540} "mbox-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00EA9498} "mbox-cached-message-driver"*/
define C-function mbox-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter mb-pathname_ :: <char*>;
  input parameter mb-cached_ :: <C-signed-int>;
  input parameter mb-cache-directory_ :: <char*>;
  input parameter mb-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mbox_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00B7A508} "mh-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D89AF0} "mh-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00CA78F8} "mh-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E9A5E8} "mh-cached-message-driver"*/
define C-function mh-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter mh-pathname_ :: <char*>;
  input parameter mh-cached_ :: <C-signed-int>;
  input parameter mh-cache-directory_ :: <char*>;
  input parameter mh-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mh_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00C5E000} "imap-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D14D58} "imap-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D15930} "imap-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D36508} "imap-cached-message-driver"*/
define C-function imap-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <char*>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-command_ :: <char*>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter imap-auth-type_ :: <C-signed-int>;
  input parameter imap-login_ :: <char*>;
  input parameter imap-password_ :: <char*>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init";
end;

define C-function imap-mailstorage-init-sasl
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <char*>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-command_ :: <char*>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init_sasl";
end;

define C-function imap-mailstorage-init-sasl-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <char*>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-local-address_ :: <char*>;
  input parameter imap-local-port_ :: <uint16-t>;
  input parameter imap-command_ :: <char*>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init_sasl_with_local_address";
end;

 /* Ignoring declaration for {<variable-declaration> #x008B5380} "pop3-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00A5C1C0} "pop3-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00B85A48} "pop3-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00B86348} "pop3-cached-message-driver"*/
define C-function pop3-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <char*>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <char*>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter pop3-auth-type_ :: <C-signed-int>;
  input parameter pop3-login_ :: <char*>;
  input parameter pop3-password_ :: <char*>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <char*>;
  input parameter pop3-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init";
end;

define C-function pop3-mailstorage-init-sasl
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <char*>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <char*>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <char*>;
  input parameter pop3-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init_sasl";
end;

define C-function pop3-mailstorage-init-sasl-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <char*>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter imap-local-address_ :: <char*>;
  input parameter imap-local-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <char*>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <char*>;
  input parameter server-fqdn_ :: <char*>;
  input parameter local-ip-port_ :: <char*>;
  input parameter remote-ip-port_ :: <char*>;
  input parameter login_ :: <char*>;
  input parameter auth-name_ :: <char*>;
  input parameter password_ :: <char*>;
  input parameter realm_ :: <char*>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <char*>;
  input parameter pop3-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init_sasl_with_local_address";
end;

define C-function hotmail-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter hotmail-login_ :: <char*>;
  input parameter hotmail-password_ :: <char*>;
  input parameter hotmail-cached_ :: <C-signed-int>;
  input parameter hotmail-cache-directory_ :: <char*>;
  input parameter hotmail-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "hotmail_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D36E00} "nntp-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D896C8} "nntp-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00DA3188} "nntp-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00DC5F18} "nntp-cached-message-driver"*/
define C-function nntp-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter nntp-servername_ :: <char*>;
  input parameter nntp-port_ :: <uint16-t>;
  input parameter nntp-command_ :: <char*>;
  input parameter nntp-connection-type_ :: <C-signed-int>;
  input parameter nntp-auth-type_ :: <C-signed-int>;
  input parameter nntp-login_ :: <char*>;
  input parameter nntp-password_ :: <char*>;
  input parameter nntp-cached_ :: <C-signed-int>;
  input parameter nntp-cache-directory_ :: <char*>;
  input parameter nntp-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "nntp_mailstorage_init";
end;

define C-function nntp-mailstorage-init-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter nntp-servername_ :: <char*>;
  input parameter nntp-port_ :: <uint16-t>;
  input parameter nntp-local-servername_ :: <char*>;
  input parameter nntp-local-port_ :: <uint16-t>;
  input parameter nntp-command_ :: <char*>;
  input parameter nntp-connection-type_ :: <C-signed-int>;
  input parameter nntp-auth-type_ :: <C-signed-int>;
  input parameter nntp-login_ :: <char*>;
  input parameter nntp-password_ :: <char*>;
  input parameter nntp-cached_ :: <C-signed-int>;
  input parameter nntp-cache-directory_ :: <char*>;
  input parameter nntp-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "nntp_mailstorage_init_with_local_address";
end;

 /* Ignoring declaration for {<variable-declaration> #x00B867E0} "maildir-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00C5ED58} "maildir-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D14850} "maildir-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D36B60} "maildir-cached-message-driver"*/
define C-function maildir-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter md-pathname_ :: <char*>;
  input parameter md-cached_ :: <C-signed-int>;
  input parameter md-cache-directory_ :: <char*>;
  input parameter md-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "maildir_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00E81DC8} "db-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E80508} "db-message-driver"*/
define C-function db-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter db-pathname_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "db_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00DA17A8} "feed-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00CA79A0} "feed-message-driver"*/
define C-function feed-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter feed-url_ :: <char*>;
  input parameter feed-cached_ :: <C-signed-int>;
  input parameter feed-cache-directory_ :: <char*>;
  input parameter feed-flags-directory_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "feed_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D36428} "mime-message-driver"*/
define C-function mime-message-init
  input parameter mime_ :: <mailmime*>;
  result res :: <mailmessage*>;
  c-name: "mime_message_init";
end;

define C-function mime-message-detach-mime
  input parameter msg_ :: <mailmessage*>;
  c-name: "mime_message_detach_mime";
end;

define C-function mime-message-set-tmpdir
  input parameter msg_ :: <mailmessage*>;
  input parameter tmpdir_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mime_message_set_tmpdir";
end;

 /* Ignoring declaration for {<variable-declaration> #x00DA38F8} "data-message-driver"*/
define C-function data-message-init
  input parameter data_ :: <char*>;
  input parameter len_ :: <size-t>;
  result res :: <mailmessage*>;
  c-name: "data_message_init";
end;

define C-function data-message-detach-mime
  input parameter msg_ :: <mailmessage*>;
  c-name: "data_message_detach_mime";
end;

define C-struct <mailprivacy>
  slot mailprivacy$tmp-dir :: <char*>;
  slot mailprivacy$msg-ref :: <chash*>;
  slot mailprivacy$mmapstr :: <chash*>;
  slot mailprivacy$mime-ref :: <chash*>;
  slot mailprivacy$protocols :: <carray*>;
  slot mailprivacy$make-alternative :: <C-signed-int>;
end;

define C-pointer-type <mailprivacy*> => <mailprivacy>;
define C-function mailprivacy-new
  input parameter tmp-dir_ :: <char*>;
  input parameter make-alternative_ :: <C-signed-int>;
  result res :: <mailprivacy*>;
  c-name: "mailprivacy_new";
end;

define C-function mailprivacy-free
  input parameter privacy_ :: <mailprivacy*>;
  c-name: "mailprivacy_free";
end;

define C-function mailprivacy-msg-get-bodystructure
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_get_bodystructure";
end;

define C-function mailprivacy-msg-flush
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  c-name: "mailprivacy_msg_flush";
end;

define C-function mailprivacy-msg-fetch-section
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch_section";
end;

define C-function mailprivacy-msg-fetch-section-header
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch_section_header";
end;

define C-function mailprivacy-msg-fetch-section-mime
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch_section_mime";
end;

define C-function mailprivacy-msg-fetch-section-body
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch_section_body";
end;

define C-function mailprivacy-msg-fetch-result-free
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter msg_ :: <char*>;
  c-name: "mailprivacy_msg_fetch_result_free";
end;

define C-function mailprivacy-msg-fetch
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch";
end;

define C-function mailprivacy-msg-fetch-header
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg-info_ :: <mailmessage*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_msg_fetch_header";
end;

define constant <is-encrypted> = <C-function-pointer>;
define constant <decrypt> = <C-function-pointer>;
define constant <encrypt> = <C-function-pointer>;
define C-struct <mailprivacy-encryption>
  slot mailprivacy_encryption$name :: <char*>;
  slot mailprivacy_encryption$description :: <char*>;
  slot mailprivacy_encryption$encrypt :: <encrypt>;
end;

define C-pointer-type <mailprivacy-encryption*> => <mailprivacy-encryption>;
define C-struct <mailprivacy-protocol>
  slot mailprivacy_protocol$name :: <char*>;
  slot mailprivacy_protocol$description :: <char*>;
  slot mailprivacy_protocol$is-encrypted :: <is-encrypted>;
  slot mailprivacy_protocol$decrypt :: <decrypt>;
  slot mailprivacy_protocol$encryption-count :: <C-signed-int>;
  slot mailprivacy_protocol$encryption-tab :: <mailprivacy-encryption*>;
end;

define C-pointer-type <mailprivacy-protocol*> => <mailprivacy-protocol>;
define C-function mailprivacy-register
  input parameter privacy_ :: <mailprivacy*>;
  input parameter protocol_ :: <mailprivacy-protocol*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_register";
end;

define C-function mailprivacy-unregister
  input parameter privacy_ :: <mailprivacy*>;
  input parameter protocol_ :: <mailprivacy-protocol*>;
  c-name: "mailprivacy_unregister";
end;

define C-function mailprivacy-get-encryption-name
  input parameter privacy_ :: <mailprivacy*>;
  input parameter privacy-driver_ :: <char*>;
  input parameter privacy-encryption_ :: <char*>;
  result res :: <char*>;
  c-name: "mailprivacy_get_encryption_name";
end;

define C-function mailprivacy-encrypt
  input parameter privacy_ :: <mailprivacy*>;
  input parameter privacy-driver_ :: <char*>;
  input parameter privacy-encryption_ :: <char*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_encrypt";
end;

define C-function mailprivacy-encrypt-msg
  input parameter privacy_ :: <mailprivacy*>;
  input parameter privacy-driver_ :: <char*>;
  input parameter privacy-encryption_ :: <char*>;
  input parameter msg_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_encrypt_msg";
end;

define C-pointer-type <unsigned-char*> => <C-unsigned-char>;
define C-struct <__sbuf>
  slot __sbuf$_base :: <unsigned-char*>;
  slot __sbuf$_size :: <C-signed-int>;
end;

define constant <_close> = <C-function-pointer>;
define constant <_read> = <C-function-pointer>;
define constant <__int64-t> = <C-signed-long>;

define constant <__darwin-off-t> = <__int64-t>;

define constant <fpos-t> = <__darwin-off-t>;

define constant <_seek> = <C-function-pointer>;
define constant <_write> = <C-function-pointer>;
define C-struct <__sFILEX>
end;

define C-pointer-type <__sFILEX*> => <__sFILEX>;
define constant <unsigned-char<@3>> = <unsigned-char*>;
define constant <unsigned-char<@1>> = <unsigned-char*>;
define C-struct <__sFILE>
  slot __sFILE$_p :: <unsigned-char*>;
  slot __sFILE$_r :: <C-signed-int>;
  slot __sFILE$_w :: <C-signed-int>;
  slot __sFILE$_flags :: <C-signed-short>;
  slot __sFILE$_file :: <C-signed-short>;
  slot __sFILE$_bf :: <__sbuf>;
  slot __sFILE$_lbfsize :: <C-signed-int>;
  slot __sFILE$_cookie :: <C-void*>;
  slot __sFILE$_close :: <_close>;
  slot __sFILE$_read :: <_read>;
  slot __sFILE$_seek :: <_seek>;
  slot __sFILE$_write :: <_write>;
  slot __sFILE$_ub :: <__sbuf>;
  slot __sFILE$_extra :: <__sFILEX*>;
  slot __sFILE$_ur :: <C-signed-int>;
  array slot __sFILE$_ubuf :: <C-unsigned-char>, length: 3;
  array slot __sFILE$_nbuf :: <C-unsigned-char>, length: 1;
  slot __sFILE$_lb :: <__sbuf>;
  slot __sFILE$_blksize :: <C-signed-int>;
  slot __sFILE$_offset :: <C-signed-long>;
end;

define constant <FILE> = <__sFILE>;

define C-pointer-type <FILE*> => <FILE>;
define C-function mailprivacy-debug
  input parameter privacy_ :: <mailprivacy*>;
  input parameter f_ :: <FILE*>;
  c-name: "mailprivacy_debug";
end;

define C-function mailprivacy-get-protocols
  input parameter privacy_ :: <mailprivacy*>;
  result res :: <carray*>;
  c-name: "mailprivacy_get_protocols";
end;

define C-function mailprivacy-is-encrypted
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_is_encrypted";
end;

define C-function mailprivacy-recursive-unregister-mime
  input parameter privacy_ :: <mailprivacy*>;
  input parameter mime_ :: <mailmime*>;
  c-name: "mailprivacy_recursive_unregister_mime";
end;

define C-struct <mailengine>
end;

define C-pointer-type <mailengine*> => <mailengine>;
define C-function libetpan-engine-new
  input parameter privacy_ :: <mailprivacy*>;
  result res :: <mailengine*>;
  c-name: "libetpan_engine_new";
end;

define C-function libetpan-engine-free
  input parameter engine_ :: <mailengine*>;
  c-name: "libetpan_engine_free";
end;

define C-function libetpan-engine-get-privacy
  input parameter engine_ :: <mailengine*>;
  result res :: <mailprivacy*>;
  c-name: "libetpan_engine_get_privacy";
end;

define C-function libetpan-message-ref
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_message_ref";
end;

define C-function libetpan-message-unref
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_message_unref";
end;

define C-function libetpan-message-mime-ref
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_message_mime_ref";
end;

define C-function libetpan-message-mime-unref
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_message_mime_unref";
end;

define C-function libetpan-folder-get-msg-list
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  input parameter p-new-msg-list_ :: <mailmessage-list**>;
  input parameter p-lost-msg-list_ :: <mailmessage-list**>;
  result res :: <C-signed-int>;
  c-name: "libetpan_folder_get_msg_list";
end;

define C-function libetpan-folder-fetch-env-list
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  input parameter msg-list_ :: <mailmessage-list*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_folder_fetch_env_list";
end;

define C-function libetpan-folder-free-msg-list
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  input parameter env-list_ :: <mailmessage-list*>;
  c-name: "libetpan_folder_free_msg_list";
end;

define C-function libetpan-storage-add
  input parameter engine_ :: <mailengine*>;
  input parameter storage_ :: <mailstorage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_storage_add";
end;

define C-function libetpan-storage-remove
  input parameter engine_ :: <mailengine*>;
  input parameter storage_ :: <mailstorage*>;
  c-name: "libetpan_storage_remove";
end;

define C-function libetpan-storage-connect
  input parameter engine_ :: <mailengine*>;
  input parameter storage_ :: <mailstorage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_storage_connect";
end;

define C-function libetpan-storage-disconnect
  input parameter engine_ :: <mailengine*>;
  input parameter storage_ :: <mailstorage*>;
  c-name: "libetpan_storage_disconnect";
end;

define C-function libetpan-storage-used
  input parameter engine_ :: <mailengine*>;
  input parameter storage_ :: <mailstorage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_storage_used";
end;

define C-function libetpan-folder-connect
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_folder_connect";
end;

define C-function libetpan-folder-disconnect
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  c-name: "libetpan_folder_disconnect";
end;

define C-function libetpan-message-get-folder
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <mailfolder*>;
  c-name: "libetpan_message_get_folder";
end;

define C-function libetpan-message-get-storage
  input parameter engine_ :: <mailengine*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <mailstorage*>;
  c-name: "libetpan_message_get_storage";
end;

define C-function libetpan-message-register
  input parameter engine_ :: <mailengine*>;
  input parameter folder_ :: <mailfolder*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <C-signed-int>;
  c-name: "libetpan_message_register";
end;

define C-function libetpan-engine-debug
  input parameter engine_ :: <mailengine*>;
  input parameter f_ :: <FILE*>;
  c-name: "libetpan_engine_debug";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D9C690} "engine-app"*/
define C-function mailprivacy-gnupg-init
  input parameter privacy_ :: <mailprivacy*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_gnupg_init";
end;

define C-function mailprivacy-gnupg-done
  input parameter privacy_ :: <mailprivacy*>;
  c-name: "mailprivacy_gnupg_done";
end;

define C-function mailprivacy-gnupg-encryption-id-list
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <clist*>;
  c-name: "mailprivacy_gnupg_encryption_id_list";
end;

define C-function mailprivacy-gnupg-encryption-id-list-clear
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg_ :: <mailmessage*>;
  c-name: "mailprivacy_gnupg_encryption_id_list_clear";
end;

define C-function mailprivacy-gnupg-set-encryption-id
  input parameter privacy_ :: <mailprivacy*>;
  input parameter user-id_ :: <char*>;
  input parameter passphrase_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_gnupg_set_encryption_id";
end;

define C-function mailprivacy-smime-init
  input parameter privacy_ :: <mailprivacy*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_smime_init";
end;

define C-function mailprivacy-smime-done
  input parameter privacy_ :: <mailprivacy*>;
  c-name: "mailprivacy_smime_done";
end;

define C-function mailprivacy-smime-set-cert-dir
  input parameter privacy_ :: <mailprivacy*>;
  input parameter directory_ :: <char*>;
  c-name: "mailprivacy_smime_set_cert_dir";
end;

define C-function mailprivacy-smime-set-CA-dir
  input parameter privacy_ :: <mailprivacy*>;
  input parameter directory_ :: <char*>;
  c-name: "mailprivacy_smime_set_CA_dir";
end;

define C-function mailprivacy-smime-set-CA-check
  input parameter privacy_ :: <mailprivacy*>;
  input parameter enabled_ :: <C-signed-int>;
  c-name: "mailprivacy_smime_set_CA_check";
end;

define C-function mailprivacy-smime-set-store-cert
  input parameter privacy_ :: <mailprivacy*>;
  input parameter enabled_ :: <C-signed-int>;
  c-name: "mailprivacy_smime_set_store_cert";
end;

define C-function mailprivacy-smime-set-private-keys-dir
  input parameter privacy_ :: <mailprivacy*>;
  input parameter directory_ :: <char*>;
  c-name: "mailprivacy_smime_set_private_keys_dir";
end;

define C-function mailprivacy-smime-encryption-id-list
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg_ :: <mailmessage*>;
  result res :: <clist*>;
  c-name: "mailprivacy_smime_encryption_id_list";
end;

define C-function mailprivacy-smime-encryption-id-list-clear
  input parameter privacy_ :: <mailprivacy*>;
  input parameter msg_ :: <mailmessage*>;
  c-name: "mailprivacy_smime_encryption_id_list_clear";
end;

define C-function mailprivacy-smime-set-encryption-id
  input parameter privacy_ :: <mailprivacy*>;
  input parameter user-id_ :: <char*>;
  input parameter passphrase_ :: <char*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_smime_set_encryption_id";
end;

