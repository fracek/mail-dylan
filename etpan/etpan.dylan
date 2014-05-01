module: etpan

define C-pointer-type <C-string> => <C-signed-char>;
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
  slot _mailstream_low$identifier :: <C-string>;
  slot _mailstream_low$timeout :: <C-unsigned-long>;
  slot _mailstream_low$logger :: <logger>;
  slot _mailstream_low$logger-context :: <C-void*>;
end;

define constant <mailstream-low> = <_mailstream-low>;

define C-pointer-type <mailstream-low*> => <mailstream-low>;
define constant <logger> = <C-function-pointer>;
define C-struct <_mailstream>
  slot _mailstream$buffer-max-size :: <C-unsigned-long>;
  slot _mailstream$write-buffer :: <C-string>;
  slot _mailstream$write-buffer-len :: <C-unsigned-long>;
  slot _mailstream$read-buffer :: <C-string>;
  slot _mailstream$read-buffer-len :: <C-unsigned-long>;
  slot _mailstream$low :: <mailstream-low*>;
  slot _mailstream$idle :: <mailstream-cancel*>;
  slot _mailstream$idling :: <C-signed-int>;
  slot _mailstream$logger :: <logger>;
  slot _mailstream$logger-context :: <C-void*>;
end;

define constant <mailstream> = <_mailstream>;

define C-pointer-type <mailstream*> => <mailstream>;
define C-struct <_MMAPString>
  slot _MMAPString$str :: <C-string>;
  slot _MMAPString$len :: <C-unsigned-long>;
  slot _MMAPString$allocated-len :: <C-unsigned-long>;
  slot _MMAPString$fd :: <C-signed-int>;
  slot _MMAPString$mmapped-size :: <C-unsigned-long>;
end;

define constant <MMAPString> = <_MMAPString>;

define C-pointer-type <MMAPString*> => <MMAPString>;
define C-pointer-type <size-t*> => <size-t>;
define C-pointer-type <mailimap-extension-api*> => <mailimap-extension-api>;
define C-struct <mailimap-extension-data>
  slot mailimap_extension_data$ext-extension :: <mailimap-extension-api*>;
  slot mailimap_extension_data$ext-type :: <C-signed-int>;
  slot mailimap_extension_data$ext-data :: <C-void*>;
end;

define C-pointer-type <mailimap-extension-data*> => <mailimap-extension-data>;
define C-pointer-type <mailimap-extension-data**> => <mailimap-extension-data*>;
define constant <anonymous-91> = <C-function-pointer>;
define constant <progress-function> = <anonymous-91>;

define C-pointer-type <progress-function*> => <progress-function>;
define constant <ext-parser> = <C-function-pointer>;
define constant <ext-free> = <C-function-pointer>;
define C-struct <mailimap-extension-api>
  slot mailimap_extension_api$ext-name :: <C-string>;
  slot mailimap_extension_api$ext-id :: <C-signed-int>;
  slot mailimap_extension_api$ext-parser :: <ext-parser>;
  slot mailimap_extension_api$ext-free :: <ext-free>;
end;

 /* Ignoring declaration for {<variable-declaration> #x00BBA498} "mailimap-extension-acl"*/
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

define C-pointer-type <_clist*> => <clist>;
define C-subtype <clist*> (<_clist*>, <sequence>) end;

define C-struct <mailimap-capability-data>
  slot mailimap_capability_data$cap-list :: <clist*>;
end;

define C-pointer-type <mailimap-capability-data*> => <mailimap-capability-data>;
define C-struct <mailimap-connection-info>
  slot mailimap_connection_info$imap-capability :: <mailimap-capability-data*>;
end;

define C-pointer-type <mailimap-connection-info*> => <mailimap-connection-info>;
define constant <uint32-t> = <C-unsigned-int>;

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
  slot mailimap_mailbox_data_status$st-mailbox :: <C-string>;
  slot mailimap_mailbox_data_status$st-info-list :: <clist*>;
end;

define C-pointer-type <mailimap-mailbox-data-status*> => <mailimap-mailbox-data-status>;
define C-struct <mailimap-response-info>
  slot mailimap_response_info$rsp-alert :: <C-string>;
  slot mailimap_response_info$rsp-parse :: <C-string>;
  slot mailimap_response_info$rsp-badcharset :: <clist*>;
  slot mailimap_response_info$rsp-trycreate :: <C-signed-int>;
  slot mailimap_response_info$rsp-mailbox-list :: <clist*>;
  slot mailimap_response_info$rsp-mailbox-lsub :: <clist*>;
  slot mailimap_response_info$rsp-search-result :: <clist*>;
  slot mailimap_response_info$rsp-status :: <mailimap-mailbox-data-status*>;
  slot mailimap_response_info$rsp-expunged :: <clist*>;
  slot mailimap_response_info$rsp-fetch-list :: <clist*>;
  slot mailimap_response_info$rsp-extension-list :: <clist*>;
  slot mailimap_response_info$rsp-atom :: <C-string>;
  slot mailimap_response_info$rsp-value :: <C-string>;
end;

define C-pointer-type <mailimap-response-info*> => <mailimap-response-info>;
define C-struct <anonymous-456>
  slot anonymous-456$sasl-conn :: <C-void*>;
  slot anonymous-456$sasl-server-fqdn :: <C-string>;
  slot anonymous-456$sasl-login :: <C-string>;
  slot anonymous-456$sasl-auth-name :: <C-string>;
  slot anonymous-456$sasl-password :: <C-string>;
  slot anonymous-456$sasl-realm :: <C-string>;
  slot anonymous-456$sasl-secret :: <C-void*>;
end;

define constant <__darwin-time-t> = <C-signed-long>;

define constant <time-t> = <__darwin-time-t>;

define constant <anonymous-92> = <C-function-pointer>;
define constant <mailprogress-function> = <anonymous-92>;

define C-pointer-type <mailprogress-function*> => <mailprogress-function>;
define C-struct <mailimap-msg-att>
  slot mailimap_msg_att$att-list :: <clist*>;
  slot mailimap_msg_att$att-number :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-msg-att*> => <mailimap-msg-att>;
define constant <anonymous-455> = <C-function-pointer>;
define constant <mailimap-msg-att-handler> = <anonymous-455>;

define C-pointer-type <mailimap-msg-att-handler*> => <mailimap-msg-att-handler>;
define constant <imap-logger> = <C-function-pointer>;
define C-struct <mailimap>
  slot mailimap$imap-response :: <C-string>;
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
  slot mailimap$imap-sasl :: <anonymous-456>;
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
define C-function mailimap-acl-setacl
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter identifier_ :: <C-string>;
  input parameter mod-rights_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_acl_setacl";
end;

define C-function mailimap-acl-deleteacl
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter identifier_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_acl_deleteacl";
end;

define C-pointer-type <clist**> => <clist*>;
define C-function mailimap-acl-getacl
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_acl_getacl";
end;

define C-struct <mailimap-acl-listrights-data>
  slot mailimap_acl_listrights_data$mailbox :: <C-string>;
  slot mailimap_acl_listrights_data$identifier :: <C-string>;
  slot mailimap_acl_listrights_data$rights-list :: <clist*>;
end;

define C-pointer-type <mailimap-acl-listrights-data*> => <mailimap-acl-listrights-data>;
define C-pointer-type <mailimap-acl-listrights-data**> => <mailimap-acl-listrights-data*>;
define C-function mailimap-acl-listrights
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter identifier_ :: <C-string>;
  input parameter result_ :: <mailimap-acl-listrights-data**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_acl_listrights";
end;

define C-struct <mailimap-acl-myrights-data>
  slot mailimap_acl_myrights_data$mailbox :: <C-string>;
  slot mailimap_acl_myrights_data$rights :: <C-string>;
end;

define C-pointer-type <mailimap-acl-myrights-data*> => <mailimap-acl-myrights-data>;
define C-pointer-type <mailimap-acl-myrights-data**> => <mailimap-acl-myrights-data*>;
define C-function mailimap-acl-myrights
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter result_ :: <mailimap-acl-myrights-data**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_acl_myrights";
end;

define C-function mailimap-has-acl
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_acl";
end;

define constant $MAILIMAP-ACL-TYPE-ACL-DATA = 0;
define constant $MAILIMAP-ACL-TYPE-LISTRIGHTS-DATA = 1;
define constant $MAILIMAP-ACL-TYPE-MYRIGHTS-DATA = 2;

define C-function mailimap-acl-identifier-free
  input parameter identifier_ :: <C-string>;
  c-name: "mailimap_acl_identifier_free";
end;

define C-function mailimap-acl-rights-free
  input parameter rights_ :: <C-string>;
  c-name: "mailimap_acl_rights_free";
end;

define C-struct <mailimap-acl-identifier-rights>
  slot mailimap_acl_identifier_rights$identifer :: <C-string>;
  slot mailimap_acl_identifier_rights$rights :: <C-string>;
end;

define C-pointer-type <mailimap-acl-identifier-rights*> => <mailimap-acl-identifier-rights>;
define C-function mailimap-acl-identifier-rights-new
  input parameter identifier_ :: <C-string>;
  input parameter rights_ :: <C-string>;
  result res :: <mailimap-acl-identifier-rights*>;
  c-name: "mailimap_acl_identifier_rights_new";
end;

define C-function mailimap-acl-identifier-rights-free
  input parameter id-rights_ :: <mailimap-acl-identifier-rights*>;
  c-name: "mailimap_acl_identifier_rights_free";
end;

define C-struct <mailimap-acl-acl-data>
  slot mailimap_acl_acl_data$mailbox :: <C-string>;
  slot mailimap_acl_acl_data$idrights-list :: <clist*>;
end;

define C-pointer-type <mailimap-acl-acl-data*> => <mailimap-acl-acl-data>;
define C-function mailimap-acl-acl-data-new
  input parameter mailbox_ :: <C-string>;
  input parameter idrights-list_ :: <clist*>;
  result res :: <mailimap-acl-acl-data*>;
  c-name: "mailimap_acl_acl_data_new";
end;

define C-function mailimap-acl-acl-data-free
  input parameter acl-data_ :: <mailimap-acl-acl-data*>;
  c-name: "mailimap_acl_acl_data_free";
end;

define C-function mailimap-acl-listrights-data-new
  input parameter mailbox_ :: <C-string>;
  input parameter identifier_ :: <C-string>;
  input parameter rights-list_ :: <clist*>;
  result res :: <mailimap-acl-listrights-data*>;
  c-name: "mailimap_acl_listrights_data_new";
end;

define C-function mailimap-acl-listrights-data-free
  input parameter listrights-data_ :: <mailimap-acl-listrights-data*>;
  c-name: "mailimap_acl_listrights_data_free";
end;

define C-function mailimap-acl-myrights-data-new
  input parameter mailbox_ :: <C-string>;
  input parameter rights_ :: <C-string>;
  result res :: <mailimap-acl-myrights-data*>;
  c-name: "mailimap_acl_myrights_data_new";
end;

define C-function mailimap-acl-myrights-data-free
  input parameter myrights-data_ :: <mailimap-acl-myrights-data*>;
  c-name: "mailimap_acl_myrights_data_free";
end;

define C-function mailimap-acl-free
  input parameter ext-data_ :: <mailimap-extension-data*>;
  c-name: "mailimap_acl_free";
end;

 /* Ignoring declaration for {<variable-declaration> #x00BF8930} "mailimap-extension-annotatemore"*/
define C-struct <mailimap-annotatemore-entry-match-list>
  slot mailimap_annotatemore_entry_match_list$entry-match-list :: <clist*>;
end;

define C-pointer-type <mailimap-annotatemore-entry-match-list*> => <mailimap-annotatemore-entry-match-list>;
define C-struct <mailimap-annotatemore-attrib-match-list>
  slot mailimap_annotatemore_attrib_match_list$attrib-match-list :: <clist*>;
end;

define C-pointer-type <mailimap-annotatemore-attrib-match-list*> => <mailimap-annotatemore-attrib-match-list>;
define C-function mailimap-annotatemore-getannotation
  input parameter session_ :: <mailimap*>;
  input parameter list-mb_ :: <C-string>;
  input parameter entries_ :: <mailimap-annotatemore-entry-match-list*>;
  input parameter attribs_ :: <mailimap-annotatemore-attrib-match-list*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_getannotation";
end;

define C-struct <mailimap-annotatemore-entry-att-list>
  slot mailimap_annotatemore_entry_att_list$entry-att-list :: <clist*>;
end;

define C-pointer-type <mailimap-annotatemore-entry-att-list*> => <mailimap-annotatemore-entry-att-list>;
define C-pointer-type <int*> => <C-signed-int>;
define C-function mailimap-annotatemore-setannotation
  input parameter session_ :: <mailimap*>;
  input parameter list-mb_ :: <C-string>;
  input parameter en-att_ :: <mailimap-annotatemore-entry-att-list*>;
  input parameter result_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_setannotation";
end;

define C-function mailimap-has-annotatemore
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_annotatemore";
end;

define constant $MAILIMAP-ANNOTATEMORE-TYPE-ANNOTATE-DATA = 0;
define constant $MAILIMAP-ANNOTATEMORE-TYPE-RESP-TEXT-CODE = 1;

define constant $MAILIMAP-ANNOTATEMORE-RESP-TEXT-CODE-UNSPECIFIED = 0;
define constant $MAILIMAP-ANNOTATEMORE-RESP-TEXT-CODE-TOOBIG = 1;
define constant $MAILIMAP-ANNOTATEMORE-RESP-TEXT-CODE-TOOMANY = 2;

define C-function mailimap-annotatemore-attrib-free
  input parameter attrib_ :: <C-string>;
  c-name: "mailimap_annotatemore_attrib_free";
end;

define C-function mailimap-annotatemore-value-free
  input parameter value_ :: <C-string>;
  c-name: "mailimap_annotatemore_value_free";
end;

define C-function mailimap-annotatemore-entry-free
  input parameter entry_ :: <C-string>;
  c-name: "mailimap_annotatemore_entry_free";
end;

define C-struct <mailimap-annotatemore-att-value>
  slot mailimap_annotatemore_att_value$attrib :: <C-string>;
  slot mailimap_annotatemore_att_value$value :: <C-string>;
end;

define C-pointer-type <mailimap-annotatemore-att-value*> => <mailimap-annotatemore-att-value>;
define C-function mailimap-annotatemore-att-value-new
  input parameter attrib_ :: <C-string>;
  input parameter value_ :: <C-string>;
  result res :: <mailimap-annotatemore-att-value*>;
  c-name: "mailimap_annotatemore_att_value_new";
end;

define C-function mailimap-annotatemore-att-value-free
  input parameter att-value_ :: <mailimap-annotatemore-att-value*>;
  c-name: "mailimap_annotatemore_att_value_free";
end;

define C-struct <mailimap-annotatemore-entry-att>
  slot mailimap_annotatemore_entry_att$entry :: <C-string>;
  slot mailimap_annotatemore_entry_att$att-value-list :: <clist*>;
end;

define C-pointer-type <mailimap-annotatemore-entry-att*> => <mailimap-annotatemore-entry-att>;
define C-function mailimap-annotatemore-entry-att-new
  input parameter entry_ :: <C-string>;
  input parameter list_ :: <clist*>;
  result res :: <mailimap-annotatemore-entry-att*>;
  c-name: "mailimap_annotatemore_entry_att_new";
end;

define C-function mailimap-annotatemore-entry-att-free
  input parameter en-att_ :: <mailimap-annotatemore-entry-att*>;
  c-name: "mailimap_annotatemore_entry_att_free";
end;

define C-function mailimap-annotatemore-entry-att-new-empty
  input parameter entry_ :: <C-string>;
  result res :: <mailimap-annotatemore-entry-att*>;
  c-name: "mailimap_annotatemore_entry_att_new_empty";
end;

define C-function mailimap-annotatemore-entry-att-add
  input parameter en-att_ :: <mailimap-annotatemore-entry-att*>;
  input parameter at-value_ :: <mailimap-annotatemore-att-value*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_entry_att_add";
end;

define constant $MAILIMAP-ANNOTATEMORE-ENTRY-LIST-TYPE-ERROR = 0;
define constant $MAILIMAP-ANNOTATEMORE-ENTRY-LIST-TYPE-ENTRY-ATT-LIST = 1;
define constant $MAILIMAP-ANNOTATEMORE-ENTRY-LIST-TYPE-ENTRY-LIST = 2;

define C-struct <mailimap-annotatemore-entry-list>
  slot mailimap_annotatemore_entry_list$en-list-type :: <C-signed-int>;
  slot mailimap_annotatemore_entry_list$en-list-data :: <clist*>;
end;

define C-pointer-type <mailimap-annotatemore-entry-list*> => <mailimap-annotatemore-entry-list>;
define C-function mailimap-annotatemore-entry-list-new
  input parameter type_ :: <C-signed-int>;
  input parameter en-att-list_ :: <clist*>;
  input parameter en-list_ :: <clist*>;
  result res :: <mailimap-annotatemore-entry-list*>;
  c-name: "mailimap_annotatemore_entry_list_new";
end;

define C-function mailimap-annotatemore-entry-list-free
  input parameter en-list_ :: <mailimap-annotatemore-entry-list*>;
  c-name: "mailimap_annotatemore_entry_list_free";
end;

define C-struct <mailimap-annotatemore-annotate-data>
  slot mailimap_annotatemore_annotate_data$mailbox :: <C-string>;
  slot mailimap_annotatemore_annotate_data$entry-list :: <mailimap-annotatemore-entry-list*>;
end;

define C-pointer-type <mailimap-annotatemore-annotate-data*> => <mailimap-annotatemore-annotate-data>;
define C-function mailimap-annotatemore-annotate-data-new
  input parameter mb_ :: <C-string>;
  input parameter en-list_ :: <mailimap-annotatemore-entry-list*>;
  result res :: <mailimap-annotatemore-annotate-data*>;
  c-name: "mailimap_annotatemore_annotate_data_new";
end;

define C-function mailimap-annotatemore-annotate-data-free
  input parameter an-data_ :: <mailimap-annotatemore-annotate-data*>;
  c-name: "mailimap_annotatemore_annotate_data_free";
end;

define C-function mailimap-annotatemore-entry-match-list-new
  input parameter en-list_ :: <clist*>;
  result res :: <mailimap-annotatemore-entry-match-list*>;
  c-name: "mailimap_annotatemore_entry_match_list_new";
end;

define C-function mailimap-annotatemore-entry-match-list-free
  input parameter en-list_ :: <mailimap-annotatemore-entry-match-list*>;
  c-name: "mailimap_annotatemore_entry_match_list_free";
end;

define C-function mailimap-annotatemore-attrib-match-list-new
  input parameter at-list_ :: <clist*>;
  result res :: <mailimap-annotatemore-attrib-match-list*>;
  c-name: "mailimap_annotatemore_attrib_match_list_new";
end;

define C-function mailimap-annotatemore-attrib-match-list-free
  input parameter at-list_ :: <mailimap-annotatemore-attrib-match-list*>;
  c-name: "mailimap_annotatemore_attrib_match_list_free";
end;

define C-function mailimap-annotatemore-entry-match-list-new-empty
  result res :: <mailimap-annotatemore-entry-match-list*>;
  c-name: "mailimap_annotatemore_entry_match_list_new_empty";
end;

define C-function mailimap-annotatemore-entry-match-list-add
  input parameter en-list_ :: <mailimap-annotatemore-entry-match-list*>;
  input parameter entry_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_entry_match_list_add";
end;

define C-function mailimap-annotatemore-attrib-match-list-new-empty
  result res :: <mailimap-annotatemore-attrib-match-list*>;
  c-name: "mailimap_annotatemore_attrib_match_list_new_empty";
end;

define C-function mailimap-annotatemore-attrib-match-list-add
  input parameter at-list_ :: <mailimap-annotatemore-attrib-match-list*>;
  input parameter attrib_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_attrib_match_list_add";
end;

define C-function mailimap-annotatemore-entry-att-list-new
  input parameter en-list_ :: <clist*>;
  result res :: <mailimap-annotatemore-entry-att-list*>;
  c-name: "mailimap_annotatemore_entry_att_list_new";
end;

define C-function mailimap-annotatemore-entry-att-list-free
  input parameter en-list_ :: <mailimap-annotatemore-entry-att-list*>;
  c-name: "mailimap_annotatemore_entry_att_list_free";
end;

define C-function mailimap-annotatemore-entry-att-list-new-empty
  result res :: <mailimap-annotatemore-entry-att-list*>;
  c-name: "mailimap_annotatemore_entry_att_list_new_empty";
end;

define C-function mailimap-annotatemore-entry-att-list-add
  input parameter en-list_ :: <mailimap-annotatemore-entry-att-list*>;
  input parameter en-att_ :: <mailimap-annotatemore-entry-att*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_annotatemore_entry_att_list_add";
end;

define C-function mailimap-annotatemore-free
  input parameter ext-data_ :: <mailimap-extension-data*>;
  c-name: "mailimap_annotatemore_free";
end;

define C-function carray-new
  input parameter initsize_ :: <C-unsigned-int>;
  result res :: <carray*>;
  c-name: "carray_new";
end;

define C-pointer-type <unsigned-int*> => <C-unsigned-int>;
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

define C-function carray-free
  input parameter array_ :: <carray*>;
  c-name: "carray_free";
end;

define constant $MAIL-CHARCONV-NO-ERROR = 0;
define constant $MAIL-CHARCONV-ERROR-UNKNOWN-CHARSET = 1;
define constant $MAIL-CHARCONV-ERROR-MEMORY = 2;
define constant $MAIL-CHARCONV-ERROR-CONV = 3;

define C-function extended-charconv
  input parameter tocode_ :: <C-string>;
  input parameter fromcode_ :: <C-string>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <C-string>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "extended_charconv";
end;

define C-pointer-type <char**> => <C-string>;
define C-function charconv
  input parameter tocode_ :: <C-string>;
  input parameter fromcode_ :: <C-string>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "charconv";
end;

define C-function charconv-buffer
  input parameter tocode_ :: <C-string>;
  input parameter fromcode_ :: <C-string>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "charconv_buffer";
end;

define C-function charconv-buffer-free
  input parameter str_ :: <C-string>;
  c-name: "charconv_buffer_free";
end;

define C-struct <chashdatum>
  slot chashdatum$data :: <C-void*>;
  slot chashdatum$len :: <C-unsigned-int>;
end;

define C-pointer-type <chashcell*> => <chashcell>;
define C-struct <chashcell>
  slot chashcell$func :: <C-unsigned-int>;
  slot chashcell$key :: <chashdatum>;
  slot chashcell$value :: <chashdatum>;
  slot chashcell$next :: <chashcell*>;
end;

define C-pointer-type <chashcell**> => <chashcell*>;
define C-struct <chash>
  slot chash$size :: <C-unsigned-int>;
  slot chash$count :: <C-unsigned-int>;
  slot chash$copyvalue :: <C-signed-int>;
  slot chash$copykey :: <C-signed-int>;
  slot chash$cells :: <chashcell**>;
end;

define constant <chashiter> = <chashcell>;

define C-pointer-type <chash*> => <chash>;
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

define constant $CHASH-COPYNONE = 0;

define constant $CHASH-COPYKEY = 1;

define constant $CHASH-COPYVALUE = 2;

define constant $CHASH-COPYALL = 3;

define constant $CHASH-DEFAULTSIZE = 13;

define constant <clistiter> = <clistcell>;

define C-function clist-new
  result res :: <clist*>;
  c-name: "clist_new";
end;

define C-function clist-free
  input parameter arg1_ :: <clist*>;
  c-name: "clist_free";
end;

define C-pointer-type <clistiter*> => <clistiter>;
define C-function clist-insert-before
  input parameter arg1_ :: <clist*>;
  input parameter arg2_ :: <clistiter*>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "clist_insert_before";
end;

define C-function clist-insert-after
  input parameter arg1_ :: <clist*>;
  input parameter arg2_ :: <clistiter*>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "clist_insert_after";
end;

define C-function clist-delete
  input parameter arg1_ :: <clist*>;
  input parameter arg2_ :: <clistiter*>;
  result res :: <clistiter*>;
  c-name: "clist_delete";
end;

define constant <clist-func> = <C-function-pointer>;
define C-function clist-foreach
  input parameter lst_ :: <clist*>;
  input parameter func_ :: <clist-func>;
  input parameter data_ :: <C-void*>;
  c-name: "clist_foreach";
end;

define C-function clist-concat
  input parameter dest_ :: <clist*>;
  input parameter src_ :: <clist*>;
  c-name: "clist_concat";
end;

define C-function clist-nth-data
  input parameter lst_ :: <clist*>;
  input parameter indx_ :: <C-signed-int>;
  result res :: <C-void*>;
  c-name: "clist_nth_data";
end;

define C-function clist-nth
  input parameter lst_ :: <clist*>;
  input parameter indx_ :: <C-signed-int>;
  result res :: <clistiter*>;
  c-name: "clist_nth";
end;

 /* Ignoring declaration for {<variable-declaration> #x00AA82D8} "mailimap-extension-condstore"*/
define C-struct <mailimap-set>
  slot mailimap_set$set-list :: <clist*>;
end;

define C-pointer-type <mailimap-set*> => <mailimap-set>;
define constant <uint64-t> = <C-unsigned-long>;

define C-struct <mailimap-store-att-flags>
  slot mailimap_store_att_flags$fl-sign :: <C-signed-int>;
  slot mailimap_store_att_flags$fl-silent :: <C-signed-int>;
  slot mailimap_store_att_flags$fl-flag-list :: <mailimap-flag-list*>;
end;

define C-pointer-type <mailimap-store-att-flags*> => <mailimap-store-att-flags>;
define C-function mailimap-store-unchangedsince
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mod-sequence-valzer_ :: <uint64-t>;
  input parameter store-att-flags_ :: <mailimap-store-att-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_store_unchangedsince";
end;

define C-function mailimap-uid-store-unchangedsince
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mod-sequence-valzer_ :: <uint64-t>;
  input parameter store-att-flags_ :: <mailimap-store-att-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_store_unchangedsince";
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
define C-union <anonymous-383>
  slot anonymous-383$sec-msgtext :: <mailimap-section-msgtext*>;
  slot anonymous-383$sec-part :: <mailimap-section-part*>;
end;

define C-struct <mailimap-section-text>
  slot mailimap_section_text$sec-type :: <C-signed-int>;
  slot mailimap_section_text$sec-msgtext :: <mailimap-section-msgtext*>;
end;

define C-pointer-type <mailimap-section-text*> => <mailimap-section-text>;
define C-struct <mailimap-section-spec>
  slot mailimap_section_spec$sec-type :: <C-signed-int>;
  slot mailimap_section_spec$sec-data :: <anonymous-383>;
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
  slot mailimap_fetch_att$att-extension :: <C-string>;
end;

define C-pointer-type <mailimap-fetch-att*> => <mailimap-fetch-att>;
define C-union <anonymous-399>
  slot anonymous-399$ft-fetch-att :: <mailimap-fetch-att*>;
  slot anonymous-399$ft-fetch-att-list :: <clist*>;
end;

define C-struct <mailimap-fetch-type>
  slot mailimap_fetch_type$ft-type :: <C-signed-int>;
  slot mailimap_fetch_type$ft-data :: <anonymous-399>;
end;

define C-pointer-type <mailimap-fetch-type*> => <mailimap-fetch-type>;
define C-function mailimap-fetch-changedsince
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter mod-sequence-value_ :: <uint64-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_changedsince";
end;

define C-function mailimap-uid-fetch-changedsince
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter mod-sequence-value_ :: <uint64-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_fetch_changedsince";
end;

define C-function mailimap-fetch-att-new-modseq
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_modseq";
end;

define C-struct <mailimap-date>
  slot mailimap_date$dt-day :: <C-signed-int>;
  slot mailimap_date$dt-month :: <C-signed-int>;
  slot mailimap_date$dt-year :: <C-signed-int>;
end;

define C-pointer-type <mailimap-date*> => <mailimap-date>;
define C-struct <anonymous-406>
  slot anonymous-406$sk-header-name :: <C-string>;
  slot anonymous-406$sk-header-value :: <C-string>;
end;

define C-struct <anonymous-407>
  slot anonymous-407$sk-or1 :: <mailimap-search-key*>;
  slot anonymous-407$sk-or2 :: <mailimap-search-key*>;
end;

define C-union <anonymous-284>
  slot anonymous-284$fl-keyword :: <C-string>;
  slot anonymous-284$fl-extension :: <C-string>;
end;

define C-struct <mailimap-flag>
  slot mailimap_flag$fl-type :: <C-signed-int>;
  slot mailimap_flag$fl-data :: <anonymous-284>;
end;

define C-pointer-type <mailimap-flag*> => <mailimap-flag>;
define C-struct <anonymous-408>
  slot anonymous-408$sk-entry-name :: <mailimap-flag*>;
  slot anonymous-408$sk-entry-type-req :: <C-signed-int>;
  slot anonymous-408$sk-modseq-valzer :: <C-unsigned-long>;
end;

define C-union <anonymous-409>
  slot anonymous-409$sk-bcc :: <C-string>;
  slot anonymous-409$sk-before :: <mailimap-date*>;
  slot anonymous-409$sk-body :: <C-string>;
  slot anonymous-409$sk-cc :: <C-string>;
  slot anonymous-409$sk-from :: <C-string>;
  slot anonymous-409$sk-keyword :: <C-string>;
  slot anonymous-409$sk-on :: <mailimap-date*>;
  slot anonymous-409$sk-since :: <mailimap-date*>;
  slot anonymous-409$sk-subject :: <C-string>;
  slot anonymous-409$sk-text :: <C-string>;
  slot anonymous-409$sk-to :: <C-string>;
  slot anonymous-409$sk-unkeyword :: <C-string>;
  slot anonymous-409$sk-header :: <anonymous-406>;
  slot anonymous-409$sk-larger :: <C-unsigned-int>;
  slot anonymous-409$sk-not :: <mailimap-search-key*>;
  slot anonymous-409$sk-or :: <anonymous-407>;
  slot anonymous-409$sk-sentbefore :: <mailimap-date*>;
  slot anonymous-409$sk-senton :: <mailimap-date*>;
  slot anonymous-409$sk-sentsince :: <mailimap-date*>;
  slot anonymous-409$sk-smaller :: <C-unsigned-int>;
  slot anonymous-409$sk-uid :: <mailimap-set*>;
  slot anonymous-409$sk-set :: <mailimap-set*>;
  slot anonymous-409$sk-xgmthrid :: <C-unsigned-long>;
  slot anonymous-409$sk-xgmmsgid :: <C-unsigned-long>;
  slot anonymous-409$sk-xgmraw :: <C-string>;
  slot anonymous-409$sk-multiple :: <clist*>;
  slot anonymous-409$sk-modseq :: <anonymous-408>;
end;

define C-struct <mailimap-search-key>
  slot mailimap_search_key$sk-type :: <C-signed-int>;
  slot mailimap_search_key$sk-data :: <anonymous-409>;
end;

define C-pointer-type <mailimap-search-key*> => <mailimap-search-key>;
define C-pointer-type <uint64-t*> => <uint64-t>;
define C-function mailimap-search-modseq
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
  input parameter key_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  input parameter p-mod-sequence-value_ :: <uint64-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_search_modseq";
end;

define C-function mailimap-uid-search-modseq
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
  input parameter key_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  input parameter p-mod-sequence-value_ :: <uint64-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_search_modseq";
end;

define C-function mailimap-select-condstore
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  input parameter p-mod-sequence-value_ :: <uint64-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_select_condstore";
end;

define C-function mailimap-examine-condstore
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  input parameter p-mod-sequence-value_ :: <uint64-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_examine_condstore";
end;

define C-function mailimap-has-condstore
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_condstore";
end;

define constant $MAILIMAP-CONDSTORE-TYPE-FETCH-DATA = 0;
define constant $MAILIMAP-CONDSTORE-TYPE-RESP-TEXT-CODE = 1;
define constant $MAILIMAP-CONDSTORE-TYPE-SEARCH-DATA = 2;
define constant $MAILIMAP-CONDSTORE-TYPE-STATUS-INFO = 3;

define C-struct <mailimap-condstore-fetch-mod-resp>
  slot mailimap_condstore_fetch_mod_resp$cs-modseq-value :: <C-unsigned-long>;
end;

define constant $MAILIMAP-CONDSTORE-RESPTEXTCODE-HIGHESTMODSEQ = 0;
define constant $MAILIMAP-CONDSTORE-RESPTEXTCODE-NOMODSEQ = 1;
define constant $MAILIMAP-CONDSTORE-RESPTEXTCODE-MODIFIED = 2;

define C-union <anonymous-547>
  slot anonymous-547$cs-modseq-value :: <C-unsigned-long>;
  slot anonymous-547$cs-modified-set :: <mailimap-set*>;
end;

define C-struct <mailimap-condstore-resptextcode>
  slot mailimap_condstore_resptextcode$cs-type :: <C-signed-int>;
  slot mailimap_condstore_resptextcode$cs-data :: <anonymous-547>;
end;

define C-struct <mailimap-condstore-search>
  slot mailimap_condstore_search$cs-search-result :: <clist*>;
  slot mailimap_condstore_search$cs-modseq-value :: <C-unsigned-long>;
end;

define C-struct <mailimap-condstore-status-info>
  slot mailimap_condstore_status_info$cs-highestmodseq-value :: <C-unsigned-long>;
end;

define C-pointer-type <mailimap-condstore-fetch-mod-resp*> => <mailimap-condstore-fetch-mod-resp>;
define C-function mailimap-condstore-fetch-mod-resp-new
  input parameter cs-modseq-value_ :: <uint64-t>;
  result res :: <mailimap-condstore-fetch-mod-resp*>;
  c-name: "mailimap_condstore_fetch_mod_resp_new";
end;

define C-function mailimap-condstore-fetch-mod-resp-free
  input parameter fetch-data_ :: <mailimap-condstore-fetch-mod-resp*>;
  c-name: "mailimap_condstore_fetch_mod_resp_free";
end;

define C-pointer-type <mailimap-condstore-resptextcode*> => <mailimap-condstore-resptextcode>;
define C-function mailimap-condstore-resptextcode-new
  input parameter cs-type_ :: <C-signed-int>;
  input parameter cs-modseq-value_ :: <uint64-t>;
  input parameter cs-modified-set_ :: <mailimap-set*>;
  result res :: <mailimap-condstore-resptextcode*>;
  c-name: "mailimap_condstore_resptextcode_new";
end;

define C-function mailimap-condstore-resptextcode-free
  input parameter resptextcode_ :: <mailimap-condstore-resptextcode*>;
  c-name: "mailimap_condstore_resptextcode_free";
end;

define C-pointer-type <mailimap-condstore-search*> => <mailimap-condstore-search>;
define C-function mailimap-condstore-search-new
  input parameter cs-search-result_ :: <clist*>;
  input parameter cs-modseq-value_ :: <uint64-t>;
  result res :: <mailimap-condstore-search*>;
  c-name: "mailimap_condstore_search_new";
end;

define C-function mailimap-condstore-search-free
  input parameter search-data_ :: <mailimap-condstore-search*>;
  c-name: "mailimap_condstore_search_free";
end;

define C-pointer-type <mailimap-condstore-status-info*> => <mailimap-condstore-status-info>;
define C-function mailimap-condstore-status-info-new
  input parameter cs-highestmodseq-value_ :: <uint64-t>;
  result res :: <mailimap-condstore-status-info*>;
  c-name: "mailimap_condstore_status_info_new";
end;

define C-function mailimap-condstore-status-info-free
  input parameter status-info_ :: <mailimap-condstore-status-info*>;
  c-name: "mailimap_condstore_status_info_free";
end;

define constant <sess-initialize> = <C-function-pointer>;
define constant <sess-uninitialize> = <C-function-pointer>;
define constant <sess-parameters> = <C-function-pointer>;
define constant <sess-connect-stream> = <C-function-pointer>;
define constant <sess-connect-path> = <C-function-pointer>;
define constant <sess-starttls> = <C-function-pointer>;
define constant <sess-login> = <C-function-pointer>;
define constant <sess-logout> = <C-function-pointer>;
define constant <sess-noop> = <C-function-pointer>;
define constant <sess-build-folder-name> = <C-function-pointer>;
define constant <sess-create-folder> = <C-function-pointer>;
define constant <sess-delete-folder> = <C-function-pointer>;
define constant <sess-rename-folder> = <C-function-pointer>;
define constant <sess-check-folder> = <C-function-pointer>;
define constant <sess-examine-folder> = <C-function-pointer>;
define constant <sess-select-folder> = <C-function-pointer>;
define constant <sess-expunge-folder> = <C-function-pointer>;
define C-pointer-type <uint32-t*> => <uint32-t>;
define constant <sess-status-folder> = <C-function-pointer>;
define constant <sess-messages-number> = <C-function-pointer>;
define constant <sess-recent-number> = <C-function-pointer>;
define constant <sess-unseen-number> = <C-function-pointer>;
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
  slot mailsession_driver$sess-name :: <C-string>;
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
define C-struct <mailimf-fields>
  slot mailimf_fields$fld-list :: <clist*>;
end;

define C-pointer-type <mailimf-fields*> => <mailimf-fields>;
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
  slot mailimf_mailbox$mb-display-name :: <C-string>;
  slot mailimf_mailbox$mb-addr-spec :: <C-string>;
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
  slot mailimf_message_id$mid-value :: <C-string>;
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
  slot mailimf_subject$sbj-value :: <C-string>;
end;

define C-pointer-type <mailimf-subject*> => <mailimf-subject>;
define C-struct <mailimf-comments>
  slot mailimf_comments$cm-value :: <C-string>;
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

define C-struct <mailmime-fields>
  slot mailmime_fields$fld-list :: <clist*>;
end;

define C-pointer-type <mailmime-fields*> => <mailmime-fields>;
define C-struct <mailmime-discrete-type>
  slot mailmime_discrete_type$dt-type :: <C-signed-int>;
  slot mailmime_discrete_type$dt-extension :: <C-string>;
end;

define C-pointer-type <mailmime-discrete-type*> => <mailmime-discrete-type>;
define C-struct <mailmime-composite-type>
  slot mailmime_composite_type$ct-type :: <C-signed-int>;
  slot mailmime_composite_type$ct-token :: <C-string>;
end;

define C-pointer-type <mailmime-composite-type*> => <mailmime-composite-type>;
define C-union <anonymous-821>
  slot anonymous-821$tp-discrete-type :: <mailmime-discrete-type*>;
  slot anonymous-821$tp-composite-type :: <mailmime-composite-type*>;
end;

define C-struct <mailmime-type>
  slot mailmime_type$tp-type :: <C-signed-int>;
  slot mailmime_type$tp-data :: <anonymous-821>;
end;

define C-pointer-type <mailmime-type*> => <mailmime-type>;
define C-struct <mailmime-content>
  slot mailmime_content$ct-type :: <mailmime-type*>;
  slot mailmime_content$ct-subtype :: <C-string>;
  slot mailmime_content$ct-parameters :: <clist*>;
end;

define C-pointer-type <mailmime-content*> => <mailmime-content>;
define C-struct <anonymous-852>
  slot anonymous-852$dt-data :: <C-string>;
  slot anonymous-852$dt-length :: <C-unsigned-long>;
end;

define C-union <anonymous-853>
  slot anonymous-853$dt-text :: <anonymous-852>;
  slot anonymous-853$dt-filename :: <C-string>;
end;

define C-struct <mailmime-data>
  slot mailmime_data$dt-type :: <C-signed-int>;
  slot mailmime_data$dt-encoding :: <C-signed-int>;
  slot mailmime_data$dt-encoded :: <C-signed-int>;
  slot mailmime_data$dt-data :: <anonymous-853>;
end;

define C-pointer-type <mailmime-data*> => <mailmime-data>;
define C-struct <anonymous-857>
  slot anonymous-857$mm-preamble :: <mailmime-data*>;
  slot anonymous-857$mm-epilogue :: <mailmime-data*>;
  slot anonymous-857$mm-mp-list :: <clist*>;
end;

define C-struct <anonymous-858>
  slot anonymous-858$mm-fields :: <mailimf-fields*>;
  slot anonymous-858$mm-msg-mime :: <mailmime*>;
end;

define C-union <anonymous-859>
  slot anonymous-859$mm-single :: <mailmime-data*>;
  slot anonymous-859$mm-multipart :: <anonymous-857>;
  slot anonymous-859$mm-message :: <anonymous-858>;
end;

define C-struct <mailmime>
  slot mailmime$mm-parent-type :: <C-signed-int>;
  slot mailmime$mm-parent :: <mailmime*>;
  slot mailmime$mm-multipart-pos :: <clistiter*>;
  slot mailmime$mm-type :: <C-signed-int>;
  slot mailmime$mm-mime-start :: <C-string>;
  slot mailmime$mm-length :: <C-unsigned-long>;
  slot mailmime$mm-mime-fields :: <mailmime-fields*>;
  slot mailmime$mm-content-type :: <mailmime-content*>;
  slot mailmime$mm-body :: <mailmime-data*>;
  slot mailmime$mm-data :: <anonymous-859>;
end;

define C-pointer-type <mailmime*> => <mailmime>;
define C-struct <mailmessage>
  slot mailmessage$msg-session :: <mailsession*>;
  slot mailmessage$msg-driver :: <mailmessage-driver*>;
  slot mailmessage$msg-index :: <C-unsigned-int>;
  slot mailmessage$msg-uid :: <C-string>;
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
define constant <msg-initialize> = <C-function-pointer>;
define constant <msg-uninitialize> = <C-function-pointer>;
define constant <msg-flush> = <C-function-pointer>;
define constant <msg-check> = <C-function-pointer>;
define constant <msg-fetch-result-free> = <C-function-pointer>;
define constant <msg-fetch> = <C-function-pointer>;
define constant <msg-fetch-header> = <C-function-pointer>;
define constant <msg-fetch-body> = <C-function-pointer>;
define constant <msg-fetch-size> = <C-function-pointer>;
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
  slot mailmessage_driver$msg-name :: <C-string>;
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
 /* Ignoring declaration for {<variable-declaration> #x00D59850} "data-message-driver"*/
define C-function data-message-init
  input parameter data_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <mailmessage*>;
  c-name: "data_message_init";
end;

define C-function data-message-detach-mime
  input parameter msg_ :: <mailmessage*>;
  c-name: "data_message_detach_mime";
end;

 /* Ignoring declaration for {<variable-declaration> #x00E5D428} "db-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E5DAF0} "db-message-driver"*/
define constant <char<@1024>> = <C-string>;
define C-struct <mail-flags-store>
  slot mail_flags_store$fls-tab :: <carray*>;
  slot mail_flags_store$fls-hash :: <chash*>;
end;

define C-pointer-type <mail-flags-store*> => <mail-flags-store>;
define C-struct <db-session-state-data>
  array slot db_session_state_data$db-filename :: <C-signed-char>, length: 1024;
  slot db_session_state_data$db-flags-store :: <mail-flags-store*>;
end;

define C-struct <db-mailstorage>
  slot db_mailstorage$db-pathname :: <C-string>;
end;

define constant <sto-connect> = <C-function-pointer>;
define C-pointer-type <mailsession**> => <mailsession*>;
define constant <sto-get-folder-session> = <C-function-pointer>;
define constant <sto-uninitialize> = <C-function-pointer>;
define C-struct <mailstorage-driver>
  slot mailstorage_driver$sto-name :: <C-string>;
  slot mailstorage_driver$sto-connect :: <sto-connect>;
  slot mailstorage_driver$sto-get-folder-session :: <sto-get-folder-session>;
  slot mailstorage_driver$sto-uninitialize :: <sto-uninitialize>;
end;

define C-pointer-type <mailstorage-driver*> => <mailstorage-driver>;
define C-struct <mailstorage>
  slot mailstorage$sto-id :: <C-string>;
  slot mailstorage$sto-data :: <C-void*>;
  slot mailstorage$sto-session :: <mailsession*>;
  slot mailstorage$sto-driver :: <mailstorage-driver*>;
  slot mailstorage$sto-shared-folders :: <clist*>;
  slot mailstorage$sto-user-data :: <C-void*>;
end;

define C-pointer-type <mailstorage*> => <mailstorage>;
define C-function db-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter db-pathname_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "db_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D9BD90} "mailimap-extension-enable"*/
define C-pointer-type <mailimap-capability-data**> => <mailimap-capability-data*>;
define C-function mailimap-enable
  input parameter session_ :: <mailimap*>;
  input parameter capabilities_ :: <mailimap-capability-data*>;
  input parameter result_ :: <mailimap-capability-data**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_enable";
end;

define C-function mailimap-has-enable
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_enable";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D2F070} "feed-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00D59428} "feed-message-driver"*/
define C-struct <newsfeed>
  slot newsfeed$feed-url :: <C-string>;
  slot newsfeed$feed-title :: <C-string>;
  slot newsfeed$feed-description :: <C-string>;
  slot newsfeed$feed-language :: <C-string>;
  slot newsfeed$feed-author :: <C-string>;
  slot newsfeed$feed-generator :: <C-string>;
  slot newsfeed$feed-date :: <C-signed-long>;
  slot newsfeed$feed-item-list :: <carray*>;
  slot newsfeed$feed-response-code :: <C-signed-int>;
  slot newsfeed$feed-timeout :: <C-unsigned-int>;
end;

define C-pointer-type <newsfeed*> => <newsfeed>;
define C-struct <feed-session-state-data>
  slot feed_session_state_data$feed-last-update :: <C-signed-long>;
  slot feed_session_state_data$feed-session :: <newsfeed*>;
  slot feed_session_state_data$feed-error :: <C-signed-int>;
end;

define C-struct <feed-mailstorage>
  slot feed_mailstorage$feed-url :: <C-string>;
  slot feed_mailstorage$feed-cached :: <C-signed-int>;
  slot feed_mailstorage$feed-cache-directory :: <C-string>;
  slot feed_mailstorage$feed-flags-directory :: <C-string>;
end;

define C-function feed-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter feed-url_ :: <C-string>;
  input parameter feed-cached_ :: <C-signed-int>;
  input parameter feed-cache-directory_ :: <C-string>;
  input parameter feed-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "feed_mailstorage_init";
end;

define C-function hotmail-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter hotmail-login_ :: <C-string>;
  input parameter hotmail-password_ :: <C-string>;
  input parameter hotmail-cached_ :: <C-signed-int>;
  input parameter hotmail-cache-directory_ :: <C-string>;
  input parameter hotmail-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "hotmail_mailstorage_init";
end;

define C-function mailimap-idle
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_idle";
end;

define C-function mailimap-idle-done
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_idle_done";
end;

define C-function mailimap-idle-get-fd
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_idle_get_fd";
end;

define C-function mailimap-idle-set-delay
  input parameter session_ :: <mailimap*>;
  input parameter delay_ :: <C-signed-long>;
  c-name: "mailimap_idle_set_delay";
end;

define C-function mailimap-idle-get-done-delay
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-long>;
  c-name: "mailimap_idle_get_done_delay";
end;

define C-function mailimap-has-idle
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_idle";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D96230} "imap-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00DBC930} "imap-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E0D1C0} "imap-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E14E70} "imap-message-driver"*/
define C-function imap-list-to-list
  input parameter imap-list_ :: <clist*>;
  input parameter result_ :: <mail-list**>;
  result res :: <C-signed-int>;
  c-name: "imap_list_to_list";
end;

define C-struct <mailmime-section>
  slot mailmime_section$sec-list :: <clist*>;
end;

define C-pointer-type <mailmime-section*> => <mailmime-section>;
define C-pointer-type <mailimap-section**> => <mailimap-section*>;
define C-function imap-section-to-imap-section
  input parameter section_ :: <mailmime-section*>;
  input parameter type_ :: <C-signed-int>;
  input parameter result_ :: <mailimap-section**>;
  result res :: <C-signed-int>;
  c-name: "imap_section_to_imap_section";
end;

define C-struct <mailimap-env-from>
  slot mailimap_env_from$frm-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-from*> => <mailimap-env-from>;
define C-struct <mailimap-env-sender>
  slot mailimap_env_sender$snd-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-sender*> => <mailimap-env-sender>;
define C-struct <mailimap-env-reply-to>
  slot mailimap_env_reply_to$rt-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-reply-to*> => <mailimap-env-reply-to>;
define C-struct <mailimap-env-to>
  slot mailimap_env_to$to-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-to*> => <mailimap-env-to>;
define C-struct <mailimap-env-cc>
  slot mailimap_env_cc$cc-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-cc*> => <mailimap-env-cc>;
define C-struct <mailimap-env-bcc>
  slot mailimap_env_bcc$bcc-list :: <clist*>;
end;

define C-pointer-type <mailimap-env-bcc*> => <mailimap-env-bcc>;
define C-struct <mailimap-envelope>
  slot mailimap_envelope$env-date :: <C-string>;
  slot mailimap_envelope$env-subject :: <C-string>;
  slot mailimap_envelope$env-from :: <mailimap-env-from*>;
  slot mailimap_envelope$env-sender :: <mailimap-env-sender*>;
  slot mailimap_envelope$env-reply-to :: <mailimap-env-reply-to*>;
  slot mailimap_envelope$env-to :: <mailimap-env-to*>;
  slot mailimap_envelope$env-cc :: <mailimap-env-cc*>;
  slot mailimap_envelope$env-bcc :: <mailimap-env-bcc*>;
  slot mailimap_envelope$env-in-reply-to :: <C-string>;
  slot mailimap_envelope$env-message-id :: <C-string>;
end;

define C-pointer-type <mailimap-envelope*> => <mailimap-envelope>;
define C-pointer-type <mailimap-envelope**> => <mailimap-envelope*>;
define C-struct <mailimap-msg-att-dynamic>
  slot mailimap_msg_att_dynamic$att-list :: <clist*>;
end;

define C-pointer-type <mailimap-msg-att-dynamic*> => <mailimap-msg-att-dynamic>;
define C-pointer-type <mailimap-msg-att-dynamic**> => <mailimap-msg-att-dynamic*>;
define C-struct <mailimap-media-basic>
  slot mailimap_media_basic$med-type :: <C-signed-int>;
  slot mailimap_media_basic$med-basic-type :: <C-string>;
  slot mailimap_media_basic$med-subtype :: <C-string>;
end;

define C-pointer-type <mailimap-media-basic*> => <mailimap-media-basic>;
define C-struct <mailimap-body-fld-param>
  slot mailimap_body_fld_param$pa-list :: <clist*>;
end;

define C-pointer-type <mailimap-body-fld-param*> => <mailimap-body-fld-param>;
define C-struct <mailimap-body-fld-enc>
  slot mailimap_body_fld_enc$enc-type :: <C-signed-int>;
  slot mailimap_body_fld_enc$enc-value :: <C-string>;
end;

define C-pointer-type <mailimap-body-fld-enc*> => <mailimap-body-fld-enc>;
define C-struct <mailimap-body-fields>
  slot mailimap_body_fields$bd-parameter :: <mailimap-body-fld-param*>;
  slot mailimap_body_fields$bd-id :: <C-string>;
  slot mailimap_body_fields$bd-description :: <C-string>;
  slot mailimap_body_fields$bd-encoding :: <mailimap-body-fld-enc*>;
  slot mailimap_body_fields$bd-size :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-body-fields*> => <mailimap-body-fields>;
define C-struct <mailimap-body-type-basic>
  slot mailimap_body_type_basic$bd-media-basic :: <mailimap-media-basic*>;
  slot mailimap_body_type_basic$bd-fields :: <mailimap-body-fields*>;
end;

define C-pointer-type <mailimap-body-type-basic*> => <mailimap-body-type-basic>;
define C-struct <mailimap-body-type-msg>
  slot mailimap_body_type_msg$bd-fields :: <mailimap-body-fields*>;
  slot mailimap_body_type_msg$bd-envelope :: <mailimap-envelope*>;
  slot mailimap_body_type_msg$bd-body :: <mailimap-body*>;
  slot mailimap_body_type_msg$bd-lines :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-body-type-msg*> => <mailimap-body-type-msg>;
define C-struct <mailimap-body-type-text>
  slot mailimap_body_type_text$bd-media-text :: <C-string>;
  slot mailimap_body_type_text$bd-fields :: <mailimap-body-fields*>;
  slot mailimap_body_type_text$bd-lines :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-body-type-text*> => <mailimap-body-type-text>;
define C-union <anonymous-246>
  slot anonymous-246$bd-type-basic :: <mailimap-body-type-basic*>;
  slot anonymous-246$bd-type-msg :: <mailimap-body-type-msg*>;
  slot anonymous-246$bd-type-text :: <mailimap-body-type-text*>;
end;

define C-struct <mailimap-body-fld-dsp>
  slot mailimap_body_fld_dsp$dsp-type :: <C-string>;
  slot mailimap_body_fld_dsp$dsp-attributes :: <mailimap-body-fld-param*>;
end;

define C-pointer-type <mailimap-body-fld-dsp*> => <mailimap-body-fld-dsp>;
define C-union <anonymous-238>
  slot anonymous-238$lg-single :: <C-string>;
  slot anonymous-238$lg-list :: <clist*>;
end;

define C-struct <mailimap-body-fld-lang>
  slot mailimap_body_fld_lang$lg-type :: <C-signed-int>;
  slot mailimap_body_fld_lang$lg-data :: <anonymous-238>;
end;

define C-pointer-type <mailimap-body-fld-lang*> => <mailimap-body-fld-lang>;
define C-struct <mailimap-body-ext-1part>
  slot mailimap_body_ext_1part$bd-md5 :: <C-string>;
  slot mailimap_body_ext_1part$bd-disposition :: <mailimap-body-fld-dsp*>;
  slot mailimap_body_ext_1part$bd-language :: <mailimap-body-fld-lang*>;
  slot mailimap_body_ext_1part$bd-loc :: <C-string>;
  slot mailimap_body_ext_1part$bd-extension-list :: <clist*>;
end;

define C-pointer-type <mailimap-body-ext-1part*> => <mailimap-body-ext-1part>;
define C-struct <mailimap-body-type-1part>
  slot mailimap_body_type_1part$bd-type :: <C-signed-int>;
  slot mailimap_body_type_1part$bd-data :: <anonymous-246>;
  slot mailimap_body_type_1part$bd-ext-1part :: <mailimap-body-ext-1part*>;
end;

define C-pointer-type <mailimap-body-type-1part*> => <mailimap-body-type-1part>;
define C-struct <mailimap-body-ext-mpart>
  slot mailimap_body_ext_mpart$bd-parameter :: <mailimap-body-fld-param*>;
  slot mailimap_body_ext_mpart$bd-disposition :: <mailimap-body-fld-dsp*>;
  slot mailimap_body_ext_mpart$bd-language :: <mailimap-body-fld-lang*>;
  slot mailimap_body_ext_mpart$bd-loc :: <C-string>;
  slot mailimap_body_ext_mpart$bd-extension-list :: <clist*>;
end;

define C-pointer-type <mailimap-body-ext-mpart*> => <mailimap-body-ext-mpart>;
define C-struct <mailimap-body-type-mpart>
  slot mailimap_body_type_mpart$bd-list :: <clist*>;
  slot mailimap_body_type_mpart$bd-media-subtype :: <C-string>;
  slot mailimap_body_type_mpart$bd-ext-mpart :: <mailimap-body-ext-mpart*>;
end;

define C-pointer-type <mailimap-body-type-mpart*> => <mailimap-body-type-mpart>;
define C-union <anonymous-219>
  slot anonymous-219$bd-body-1part :: <mailimap-body-type-1part*>;
  slot anonymous-219$bd-body-mpart :: <mailimap-body-type-mpart*>;
end;

define C-struct <mailimap-body>
  slot mailimap_body$bd-type :: <C-signed-int>;
  slot mailimap_body$bd-data :: <anonymous-219>;
end;

define C-pointer-type <mailimap-body*> => <mailimap-body>;
define C-pointer-type <mailimap-body**> => <mailimap-body*>;
define C-function imap-get-msg-att-info
  input parameter msg-att_ :: <mailimap-msg-att*>;
  input parameter puid_ :: <uint32-t*>;
  input parameter pimap-envelope_ :: <mailimap-envelope**>;
  input parameter preferences_ :: <char**>;
  input parameter pref-size_ :: <size-t*>;
  input parameter patt-dyn_ :: <mailimap-msg-att-dynamic**>;
  input parameter pimap-body_ :: <mailimap-body**>;
  result res :: <C-signed-int>;
  c-name: "imap_get_msg_att_info";
end;

define C-function imap-add-envelope-fetch-att
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  result res :: <C-signed-int>;
  c-name: "imap_add_envelope_fetch_att";
end;

define C-function imap-env-to-fields
  input parameter env_ :: <mailimap-envelope*>;
  input parameter ref-str_ :: <C-string>;
  input parameter ref-size_ :: <size-t>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "imap_env_to_fields";
end;

define C-function imap-fetch-result-to-envelop-list
  input parameter fetch-result_ :: <clist*>;
  input parameter env-list_ :: <mailmessage-list*>;
  result res :: <C-signed-int>;
  c-name: "imap_fetch_result_to_envelop_list";
end;

define C-function imap-body-to-body
  input parameter imap-body_ :: <mailimap-body*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "imap_body_to_body";
end;

define C-pointer-type <mailimap-set**> => <mailimap-set*>;
define C-function imap-msg-list-to-imap-set
  input parameter msg-list_ :: <clist*>;
  input parameter result_ :: <mailimap-set**>;
  result res :: <C-signed-int>;
  c-name: "imap_msg_list_to_imap_set";
end;

define C-pointer-type <mailimap-flag-list**> => <mailimap-flag-list*>;
define C-function imap-flags-to-imap-flags
  input parameter flags_ :: <mail-flags*>;
  input parameter result_ :: <mailimap-flag-list**>;
  result res :: <C-signed-int>;
  c-name: "imap_flags_to_imap_flags";
end;

define C-function imap-flags-to-flags
  input parameter att-dyn_ :: <mailimap-msg-att-dynamic*>;
  input parameter result_ :: <mail-flags**>;
  result res :: <C-signed-int>;
  c-name: "imap_flags_to_flags";
end;

define C-struct <mailstream-ssl-context>
end;

define C-pointer-type <mailstream-ssl-context*> => <mailstream-ssl-context>;
define constant <imap-ssl-callback> = <C-function-pointer>;
define C-struct <imap-session-state-data>
  slot imap_session_state_data$imap-session :: <mailimap*>;
  slot imap_session_state_data$imap-mailbox :: <C-string>;
  slot imap_session_state_data$imap-flags-store :: <mail-flags-store*>;
  slot imap_session_state_data$imap-ssl-callback :: <imap-ssl-callback>;
  slot imap_session_state_data$imap-ssl-cb-data :: <C-void*>;
end;

define constant $IMAP-SECTION-MESSAGE = 0;
define constant $IMAP-SECTION-HEADER = 1;
define constant $IMAP-SECTION-MIME = 2;
define constant $IMAP-SECTION-BODY = 3;

define constant $IMAPDRIVER-CACHED-SET-SSL-CALLBACK = 1;
define constant $IMAPDRIVER-CACHED-SET-SSL-CALLBACK-DATA = 2;
define constant $IMAPDRIVER-CACHED-SET-CACHE-DIRECTORY = 1001;

define C-struct <imap-cached-session-state-data>
  slot imap_cached_session_state_data$imap-ancestor :: <mailsession*>;
  slot imap_cached_session_state_data$imap-quoted-mb :: <C-string>;
  array slot imap_cached_session_state_data$imap-cache-directory :: <C-signed-char>, length: 1024;
  slot imap_cached_session_state_data$imap-uid-list :: <carray*>;
  slot imap_cached_session_state_data$imap-uidvalidity :: <C-unsigned-int>;
end;

define C-struct <anonymous-1309>
  slot anonymous-1309$sasl-enabled :: <C-signed-int>;
  slot anonymous-1309$sasl-auth-type :: <C-string>;
  slot anonymous-1309$sasl-server-fqdn :: <C-string>;
  slot anonymous-1309$sasl-local-ip-port :: <C-string>;
  slot anonymous-1309$sasl-remote-ip-port :: <C-string>;
  slot anonymous-1309$sasl-login :: <C-string>;
  slot anonymous-1309$sasl-auth-name :: <C-string>;
  slot anonymous-1309$sasl-password :: <C-string>;
  slot anonymous-1309$sasl-realm :: <C-string>;
end;

define constant <uint16-t> = <C-unsigned-short>;

define C-struct <imap-mailstorage>
  slot imap_mailstorage$imap-servername :: <C-string>;
  slot imap_mailstorage$imap-port :: <C-unsigned-short>;
  slot imap_mailstorage$imap-command :: <C-string>;
  slot imap_mailstorage$imap-connection-type :: <C-signed-int>;
  slot imap_mailstorage$imap-auth-type :: <C-signed-int>;
  slot imap_mailstorage$imap-login :: <C-string>;
  slot imap_mailstorage$imap-password :: <C-string>;
  slot imap_mailstorage$imap-cached :: <C-signed-int>;
  slot imap_mailstorage$imap-cache-directory :: <C-string>;
  slot imap_mailstorage$imap-sasl :: <anonymous-1309>;
  slot imap_mailstorage$imap-local-address :: <C-string>;
  slot imap_mailstorage$imap-local-port :: <C-unsigned-short>;
end;

define constant $IMAP-AUTH-TYPE-PLAIN = 0;
define constant $IMAP-AUTH-TYPE-SASL-ANONYMOUS = 1;
define constant $IMAP-AUTH-TYPE-SASL-CRAM-MD5 = 2;
define constant $IMAP-AUTH-TYPE-SASL-KERBEROS-V4 = 3;
define constant $IMAP-AUTH-TYPE-SASL-PLAIN = 4;
define constant $IMAP-AUTH-TYPE-SASL-SCRAM-MD5 = 5;
define constant $IMAP-AUTH-TYPE-SASL-GSSAPI = 6;
define constant $IMAP-AUTH-TYPE-SASL-DIGEST-MD5 = 7;

define C-function imap-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <C-string>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-command_ :: <C-string>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter imap-auth-type_ :: <C-signed-int>;
  input parameter imap-login_ :: <C-string>;
  input parameter imap-password_ :: <C-string>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init";
end;

define C-function imap-mailstorage-init-sasl
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <C-string>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-command_ :: <C-string>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init_sasl";
end;

define C-function imap-mailstorage-init-sasl-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter imap-servername_ :: <C-string>;
  input parameter imap-port_ :: <uint16-t>;
  input parameter imap-local-address_ :: <C-string>;
  input parameter imap-local-port_ :: <uint16-t>;
  input parameter imap-command_ :: <C-string>;
  input parameter imap-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  input parameter imap-cached_ :: <C-signed-int>;
  input parameter imap-cache-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "imap_mailstorage_init_sasl_with_local_address";
end;

define constant $MAIL-DIR-SEPARATOR = 1;

define constant $MAIL-DIR-SEPARATOR-S = "/";

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

define constant $TRUE = 1;

define constant $FALSE = 0;

define constant <__int32-t> = <C-signed-int>;

define constant <__darwin-pid-t> = <__int32-t>;

define constant <pid-t> = <__darwin-pid-t>;

define constant <char<@255>> = <C-string>;
define C-struct <maildir>
  slot maildir$mdir-pid :: <C-signed-int>;
  array slot maildir$mdir-hostname :: <C-signed-char>, length: 255;
  array slot maildir$mdir-path :: <C-signed-char>, length: 1024;
  slot maildir$mdir-counter :: <C-unsigned-int>;
  slot maildir$mdir-mtime-new :: <C-signed-long>;
  slot maildir$mdir-mtime-cur :: <C-signed-long>;
  slot maildir$mdir-msg-list :: <carray*>;
  slot maildir$mdir-msg-hash :: <chash*>;
end;

define C-pointer-type <maildir*> => <maildir>;
define C-function maildir-new
  input parameter path_ :: <C-string>;
  result res :: <maildir*>;
  c-name: "maildir_new";
end;

define C-function maildir-free
  input parameter md_ :: <maildir*>;
  c-name: "maildir_free";
end;

define C-function maildir-update
  input parameter md_ :: <maildir*>;
  result res :: <C-signed-int>;
  c-name: "maildir_update";
end;

define C-function maildir-message-add-uid
  input parameter md_ :: <maildir*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter uid_ :: <C-string>;
  input parameter max-uid-len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_add_uid";
end;

define C-function maildir-message-add
  input parameter md_ :: <maildir*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_add";
end;

define C-function maildir-message-add-file-uid
  input parameter md_ :: <maildir*>;
  input parameter fd_ :: <C-signed-int>;
  input parameter uid_ :: <C-string>;
  input parameter max-uid-len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_add_file_uid";
end;

define C-function maildir-message-add-file
  input parameter md_ :: <maildir*>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_add_file";
end;

define C-function maildir-message-get
  input parameter md_ :: <maildir*>;
  input parameter uid_ :: <C-string>;
  result res :: <C-string>;
  c-name: "maildir_message_get";
end;

define C-function maildir-message-remove
  input parameter md_ :: <maildir*>;
  input parameter uid_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_remove";
end;

define C-function maildir-message-change-flags
  input parameter md_ :: <maildir*>;
  input parameter uid_ :: <C-string>;
  input parameter new-flags_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maildir_message_change_flags";
end;

define constant $MAILDIR-NO-ERROR = 0;
define constant $MAILDIR-ERROR-CREATE = 1;
define constant $MAILDIR-ERROR-DIRECTORY = 2;
define constant $MAILDIR-ERROR-MEMORY = 3;
define constant $MAILDIR-ERROR-FILE = 4;
define constant $MAILDIR-ERROR-NOT-FOUND = 5;
define constant $MAILDIR-ERROR-FOLDER = 6;

define C-struct <maildir-msg>
  slot maildir_msg$msg-uid :: <C-string>;
  slot maildir_msg$msg-filename :: <C-string>;
  slot maildir_msg$msg-flags :: <C-signed-int>;
end;

define constant $MAILDIR-FLAG-NEW = 1;

define constant $MAILDIR-FLAG-SEEN = 2;

define constant $MAILDIR-FLAG-REPLIED = 4;

define constant $MAILDIR-FLAG-FLAGGED = 8;

define constant $MAILDIR-FLAG-TRASHED = 16;

define constant $HOST-NAME-MAX = 255;

 /* Ignoring declaration for {<variable-declaration> #x00E14188} "maildir-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00EBE888} "maildir-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F226C8} "maildir-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00E95508} "maildir-message-driver"*/
define C-struct <maildir-session-state-data>
  slot maildir_session_state_data$md-session :: <maildir*>;
  slot maildir_session_state_data$md-flags-store :: <mail-flags-store*>;
end;

define constant $MAILDIRDRIVER-CACHED-SET-CACHE-DIRECTORY = 1;
define constant $MAILDIRDRIVER-CACHED-SET-FLAGS-DIRECTORY = 2;

define C-struct <maildir-cached-session-state-data>
  slot maildir_cached_session_state_data$md-ancestor :: <mailsession*>;
  slot maildir_cached_session_state_data$md-quoted-mb :: <C-string>;
  slot maildir_cached_session_state_data$md-flags-store :: <mail-flags-store*>;
  array slot maildir_cached_session_state_data$md-cache-directory :: <C-signed-char>, length: 1024;
  array slot maildir_cached_session_state_data$md-flags-directory :: <C-signed-char>, length: 1024;
end;

define C-struct <maildir-mailstorage>
  slot maildir_mailstorage$md-pathname :: <C-string>;
  slot maildir_mailstorage$md-cached :: <C-signed-int>;
  slot maildir_mailstorage$md-cache-directory :: <C-string>;
  slot maildir_mailstorage$md-flags-directory :: <C-string>;
end;

define C-function maildir-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter md-pathname_ :: <C-string>;
  input parameter md-cached_ :: <C-signed-int>;
  input parameter md-cache-directory_ :: <C-string>;
  input parameter md-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "maildir_mailstorage_init";
end;

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
  input parameter path_ :: <C-string>;
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
  input parameter userid_ :: <C-string>;
  input parameter password_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
  input parameter name_ :: <C-string>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_build_folder_name";
end;

define C-function mailsession-create-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_create_folder";
end;

define C-function mailsession-delete-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_delete_folder";
end;

define C-function mailsession-rename-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter new-name_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_examine_folder";
end;

define C-function mailsession-select-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
  input parameter result-messages_ :: <uint32-t*>;
  input parameter result-recent_ :: <uint32-t*>;
  input parameter result-unseen_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_status_folder";
end;

define C-function mailsession-messages-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_messages_number";
end;

define C-function mailsession-recent-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_recent_number";
end;

define C-function mailsession-unseen-number
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_unseen_number";
end;

define C-function mailsession-list-folders
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter result_ :: <mail-list**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_list_folders";
end;

define C-function mailsession-lsub-folders
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  input parameter result_ :: <mail-list**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_lsub_folders";
end;

define C-function mailsession-subscribe-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_subscribe_folder";
end;

define C-function mailsession-unsubscribe-folder
  input parameter session_ :: <mailsession*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_unsubscribe_folder";
end;

define C-function mailsession-append-message
  input parameter session_ :: <mailsession*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsession_append_message";
end;

define C-function mailsession-append-message-flags
  input parameter session_ :: <mailsession*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter flags_ :: <mail-flags*>;
  result res :: <C-signed-int>;
  c-name: "mailsession_append_message_flags";
end;

define C-function mailsession-copy-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_copy_message";
end;

define C-function mailsession-move-message
  input parameter session_ :: <mailsession*>;
  input parameter num_ :: <uint32-t>;
  input parameter mb_ :: <C-string>;
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
  input parameter uid_ :: <C-string>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailsession_get_message_by_uid";
end;

define C-function mailsession-login-sasl
  input parameter session_ :: <mailsession*>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsession_login_sasl";
end;

define constant $MAIL-NO-ERROR = 0;
define constant $MAIL-NO-ERROR-AUTHENTICATED = 1;
define constant $MAIL-NO-ERROR-NON-AUTHENTICATED = 2;
define constant $MAIL-ERROR-NOT-IMPLEMENTED = 3;
define constant $MAIL-ERROR-UNKNOWN = 4;
define constant $MAIL-ERROR-CONNECT = 5;
define constant $MAIL-ERROR-BAD-STATE = 6;
define constant $MAIL-ERROR-FILE = 7;
define constant $MAIL-ERROR-STREAM = 8;
define constant $MAIL-ERROR-LOGIN = 9;
define constant $MAIL-ERROR-CREATE = 10;
define constant $MAIL-ERROR-DELETE = 11;
define constant $MAIL-ERROR-LOGOUT = 12;
define constant $MAIL-ERROR-NOOP = 13;
define constant $MAIL-ERROR-RENAME = 14;
define constant $MAIL-ERROR-CHECK = 15;
define constant $MAIL-ERROR-EXAMINE = 16;
define constant $MAIL-ERROR-SELECT = 17;
define constant $MAIL-ERROR-MEMORY = 18;
define constant $MAIL-ERROR-STATUS = 19;
define constant $MAIL-ERROR-SUBSCRIBE = 20;
define constant $MAIL-ERROR-UNSUBSCRIBE = 21;
define constant $MAIL-ERROR-LIST = 22;
define constant $MAIL-ERROR-LSUB = 23;
define constant $MAIL-ERROR-APPEND = 24;
define constant $MAIL-ERROR-COPY = 25;
define constant $MAIL-ERROR-FETCH = 26;
define constant $MAIL-ERROR-STORE = 27;
define constant $MAIL-ERROR-SEARCH = 28;
define constant $MAIL-ERROR-DISKSPACE = 29;
define constant $MAIL-ERROR-MSG-NOT-FOUND = 30;
define constant $MAIL-ERROR-PARSE = 31;
define constant $MAIL-ERROR-INVAL = 32;
define constant $MAIL-ERROR-PART-NOT-FOUND = 33;
define constant $MAIL-ERROR-REMOVE = 34;
define constant $MAIL-ERROR-FOLDER-NOT-FOUND = 35;
define constant $MAIL-ERROR-MOVE = 36;
define constant $MAIL-ERROR-STARTTLS = 37;
define constant $MAIL-ERROR-CACHE-MISS = 38;
define constant $MAIL-ERROR-NO-TLS = 39;
define constant $MAIL-ERROR-EXPUNGE = 40;
define constant $MAIL-ERROR-MISC = 41;
define constant $MAIL-ERROR-PROTOCOL = 42;
define constant $MAIL-ERROR-CAPABILITY = 43;
define constant $MAIL-ERROR-CLOSE = 44;
define constant $MAIL-ERROR-FATAL = 45;
define constant $MAIL-ERROR-READONLY = 46;
define constant $MAIL-ERROR-NO-APOP = 47;
define constant $MAIL-ERROR-COMMAND-NOT-SUPPORTED = 48;
define constant $MAIL-ERROR-NO-PERMISSION = 49;
define constant $MAIL-ERROR-PROGRAM-ERROR = 50;
define constant $MAIL-ERROR-SUBJECT-NOT-FOUND = 51;
define constant $MAIL-ERROR-CHAR-ENCODING-FAILED = 52;
define constant $MAIL-ERROR-SEND = 53;
define constant $MAIL-ERROR-COMMAND = 54;
define constant $MAIL-ERROR-SYSTEM = 55;
define constant $MAIL-ERROR-UNABLE = 56;
define constant $MAIL-ERROR-FOLDER = 57;
define constant $MAIL-ERROR-SSL = 58;

define C-function mailmessage-list-new
  input parameter msg-tab_ :: <carray*>;
  result res :: <mailmessage-list*>;
  c-name: "mailmessage_list_new";
end;

define C-function mailmessage-list-free
  input parameter env-list_ :: <mailmessage-list*>;
  c-name: "mailmessage_list_free";
end;

define C-function mail-list-new
  input parameter mb-list_ :: <clist*>;
  result res :: <mail-list*>;
  c-name: "mail_list_new";
end;

define C-function mail-list-free
  input parameter resp_ :: <mail-list*>;
  c-name: "mail_list_free";
end;

define constant $MAIL-FLAG-NEW = 1;
define constant $MAIL-FLAG-SEEN = 2;
define constant $MAIL-FLAG-FLAGGED = 4;
define constant $MAIL-FLAG-DELETED = 8;
define constant $MAIL-FLAG-ANSWERED = 16;
define constant $MAIL-FLAG-FORWARDED = 32;
define constant $MAIL-FLAG-CANCELLED = 64;

define C-function mail-flags-new
  input parameter fl-flags_ :: <uint32-t>;
  input parameter fl-ext_ :: <clist*>;
  result res :: <mail-flags*>;
  c-name: "mail_flags_new";
end;

define C-function mail-flags-free
  input parameter flags_ :: <mail-flags*>;
  c-name: "mail_flags_free";
end;

define C-function mail-flags-new-empty
  result res :: <mail-flags*>;
  c-name: "mail_flags_new_empty";
end;

define constant <int32-t> = <C-signed-int>;

define C-function mailimf-date-time-comp
  input parameter date1_ :: <mailimf-date-time*>;
  input parameter date2_ :: <mailimf-date-time*>;
  result res :: <int32-t>;
  c-name: "mailimf_date_time_comp";
end;

define constant $MAIL-SEARCH-KEY-ALL = 0;
define constant $MAIL-SEARCH-KEY-ANSWERED = 1;
define constant $MAIL-SEARCH-KEY-BCC = 2;
define constant $MAIL-SEARCH-KEY-BEFORE = 3;
define constant $MAIL-SEARCH-KEY-BODY = 4;
define constant $MAIL-SEARCH-KEY-CC = 5;
define constant $MAIL-SEARCH-KEY-DELETED = 6;
define constant $MAIL-SEARCH-KEY-FLAGGED = 7;
define constant $MAIL-SEARCH-KEY-FROM = 8;
define constant $MAIL-SEARCH-KEY-NEW = 9;
define constant $MAIL-SEARCH-KEY-OLD = 10;
define constant $MAIL-SEARCH-KEY-ON = 11;
define constant $MAIL-SEARCH-KEY-RECENT = 12;
define constant $MAIL-SEARCH-KEY-SEEN = 13;
define constant $MAIL-SEARCH-KEY-SINCE = 14;
define constant $MAIL-SEARCH-KEY-SUBJECT = 15;
define constant $MAIL-SEARCH-KEY-TEXT = 16;
define constant $MAIL-SEARCH-KEY-TO = 17;
define constant $MAIL-SEARCH-KEY-UNANSWERED = 18;
define constant $MAIL-SEARCH-KEY-UNDELETED = 19;
define constant $MAIL-SEARCH-KEY-UNFLAGGED = 20;
define constant $MAIL-SEARCH-KEY-UNSEEN = 21;
define constant $MAIL-SEARCH-KEY-HEADER = 22;
define constant $MAIL-SEARCH-KEY-LARGER = 23;
define constant $MAIL-SEARCH-KEY-NOT = 24;
define constant $MAIL-SEARCH-KEY-OR = 25;
define constant $MAIL-SEARCH-KEY-SMALLER = 26;
define constant $MAIL-SEARCH-KEY-MULTIPLE = 27;

define C-pointer-type <mailmessage-tree*> => <mailmessage-tree>;
define C-struct <mailmessage-tree>
  slot mailmessage_tree$node-parent :: <mailmessage-tree*>;
  slot mailmessage_tree$node-msgid :: <C-string>;
  slot mailmessage_tree$node-date :: <C-signed-long>;
  slot mailmessage_tree$node-msg :: <mailmessage*>;
  slot mailmessage_tree$node-children :: <carray*>;
  slot mailmessage_tree$node-is-reply :: <C-signed-int>;
  slot mailmessage_tree$node-base-subject :: <C-string>;
end;

define C-function mailmessage-tree-new
  input parameter node-msgid_ :: <C-string>;
  input parameter node-date_ :: <time-t>;
  input parameter node-msg_ :: <mailmessage*>;
  result res :: <mailmessage-tree*>;
  c-name: "mailmessage_tree_new";
end;

define C-function mailmessage-tree-free
  input parameter tree_ :: <mailmessage-tree*>;
  c-name: "mailmessage_tree_free";
end;

define C-function mailmessage-tree-free-recursive
  input parameter tree_ :: <mailmessage-tree*>;
  c-name: "mailmessage_tree_free_recursive";
end;

define constant <msg-prefetch> = <C-function-pointer>;
define C-pointer-type <generic-message-t*> => <generic-message-t>;
define constant <msg-prefetch-free> = <C-function-pointer>;
define C-struct <generic-message-t>
  slot generic_message_t$msg-prefetch :: <msg-prefetch>;
  slot generic_message_t$msg-prefetch-free :: <msg-prefetch-free>;
  slot generic_message_t$msg-fetched :: <C-signed-int>;
  slot generic_message_t$msg-message :: <C-string>;
  slot generic_message_t$msg-length :: <C-unsigned-long>;
  slot generic_message_t$msg-data :: <C-void*>;
end;

define C-function maildriver-strerror
  input parameter err_ :: <C-signed-int>;
  result res :: <C-string>;
  c-name: "maildriver_strerror";
end;

define C-function libetpan-malloc
  input parameter length_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "libetpan_malloc";
end;

define C-function libetpan-free
  input parameter data_ :: <C-void*>;
  c-name: "libetpan_free";
end;

define C-function mail-flags-add-extension
  input parameter flags_ :: <mail-flags*>;
  input parameter ext-flag_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mail_flags_add_extension";
end;

define C-function mail-flags-remove-extension
  input parameter flags_ :: <mail-flags*>;
  input parameter ext-flag_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mail_flags_remove_extension";
end;

define C-function mail-flags-has-extension
  input parameter flags_ :: <mail-flags*>;
  input parameter ext-flag_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mail_flags_has_extension";
end;

define C-struct <mailengine>
end;

define C-pointer-type <mailengine*> => <mailengine>;
define C-struct <mailprivacy>
  slot mailprivacy$tmp-dir :: <C-string>;
  slot mailprivacy$msg-ref :: <chash*>;
  slot mailprivacy$mmapstr :: <chash*>;
  slot mailprivacy$mime-ref :: <chash*>;
  slot mailprivacy$protocols :: <carray*>;
  slot mailprivacy$make-alternative :: <C-signed-int>;
end;

define C-pointer-type <mailprivacy*> => <mailprivacy>;
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

define C-struct <mailfolder>
  slot mailfolder$fld-pathname :: <C-string>;
  slot mailfolder$fld-virtual-name :: <C-string>;
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
define C-function libetpan-engine-debug
  input parameter engine_ :: <mailengine*>;
  input parameter f_ :: <FILE*>;
  c-name: "libetpan_engine_debug";
end;

 /* Ignoring declaration for {<variable-declaration> #x010AFC08} "engine-app"*/
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
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_append_message";
end;

define C-function mailfolder-append-message-flags
  input parameter folder_ :: <mailfolder*>;
  input parameter message_ :: <C-string>;
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
  input parameter uid_ :: <C-string>;
  input parameter result_ :: <mailmessage**>;
  result res :: <C-signed-int>;
  c-name: "mailfolder_get_message_by_uid";
end;

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
  input parameter mailbox_ :: <C-string>;
  input parameter flag-list_ :: <mailimap-flag-list*>;
  input parameter date-time_ :: <mailimap-date-time*>;
  input parameter literal_ :: <C-string>;
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

define C-function mailimap-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_copy";
end;

define C-function mailimap-uid-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_copy";
end;

define C-function mailimap-create
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_create";
end;

define C-function mailimap-delete
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_delete";
end;

define C-function mailimap-examine
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_examine";
end;

define C-function mailimap-fetch
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  output parameter result_ :: <clist**>;
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
  input parameter mb_ :: <C-string>;
  input parameter list-mb_ :: <C-string>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_list";
end;

define C-function mailimap-login
  input parameter session_ :: <mailimap*>;
  input parameter userid_ :: <C-string>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_login";
end;

define C-function mailimap-authenticate
  input parameter session_ :: <mailimap*>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_authenticate";
end;

define C-function mailimap-lsub
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  input parameter list-mb_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
  input parameter new-name_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_rename";
end;

define C-function mailimap-search
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
  input parameter key_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_search";
end;

define C-function mailimap-uid-search
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
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
  input parameter mb_ :: <C-string>;
  input parameter status-att-list_ :: <mailimap-status-att-list*>;
  input parameter result_ :: <mailimap-mailbox-data-status**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_status";
end;

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
  input parameter mb_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_subscribe";
end;

define C-function mailimap-unsubscribe
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
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
  result res :: <C-string>;
  c-name: "mailimap_read_line";
end;

define C-struct <anonymous-371>
  slot anonymous-371$atom-name :: <C-string>;
  slot anonymous-371$atom-value :: <C-string>;
end;

define C-union <anonymous-372>
  slot anonymous-372$rc-badcharset :: <clist*>;
  slot anonymous-372$rc-cap-data :: <mailimap-capability-data*>;
  slot anonymous-372$rc-perm-flags :: <clist*>;
  slot anonymous-372$rc-uidnext :: <C-unsigned-int>;
  slot anonymous-372$rc-uidvalidity :: <C-unsigned-int>;
  slot anonymous-372$rc-first-unseen :: <C-unsigned-int>;
  slot anonymous-372$rc-atom :: <anonymous-371>;
  slot anonymous-372$rc-ext-data :: <mailimap-extension-data*>;
end;

define C-struct <mailimap-resp-text-code>
  slot mailimap_resp_text_code$rc-type :: <C-signed-int>;
  slot mailimap_resp_text_code$rc-data :: <anonymous-372>;
end;

define C-pointer-type <mailimap-resp-text-code*> => <mailimap-resp-text-code>;
define C-struct <mailimap-resp-text>
  slot mailimap_resp_text$rsp-code :: <mailimap-resp-text-code*>;
  slot mailimap_resp_text$rsp-text :: <C-string>;
end;

define C-pointer-type <mailimap-resp-text*> => <mailimap-resp-text>;
define C-struct <mailimap-resp-cond-state>
  slot mailimap_resp_cond_state$rsp-type :: <C-signed-int>;
  slot mailimap_resp_cond_state$rsp-text :: <mailimap-resp-text*>;
end;

define C-pointer-type <mailimap-resp-cond-state*> => <mailimap-resp-cond-state>;
define C-struct <mailimap-response-tagged>
  slot mailimap_response_tagged$rsp-tag :: <C-string>;
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
define C-union <anonymous-353>
  slot anonymous-353$rsp-tagged :: <mailimap-response-tagged*>;
  slot anonymous-353$rsp-fatal :: <mailimap-response-fatal*>;
end;

define C-struct <mailimap-response-done>
  slot mailimap_response_done$rsp-type :: <C-signed-int>;
  slot mailimap_response_done$rsp-data :: <anonymous-353>;
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

define C-function mailimap-compress
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_compress";
end;

define C-function mailimap-has-compress-deflate
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_compress_deflate";
end;

define C-function mailimap-extension-register
  input parameter extension_ :: <mailimap-extension-api*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_extension_register";
end;

define C-function mailimap-extension-unregister-all
  c-name: "mailimap_extension_unregister_all";
end;

define C-function mailimap-extension-data-parse
  input parameter calling-parser_ :: <C-signed-int>;
  input parameter fd_ :: <mailstream*>;
  input parameter buffer_ :: <MMAPString*>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimap-extension-data**>;
  input parameter progr-rate_ :: <size-t>;
  input parameter progr-fun_ :: <progress-function*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_extension_data_parse";
end;

define C-function mailimap-extension-data-new
  input parameter extension_ :: <mailimap-extension-api*>;
  input parameter type_ :: <C-signed-int>;
  input parameter data_ :: <C-void*>;
  result res :: <mailimap-extension-data*>;
  c-name: "mailimap_extension_data_new";
end;

define C-function mailimap-extension-data-free
  input parameter data_ :: <mailimap-extension-data*>;
  c-name: "mailimap_extension_data_free";
end;

define C-function mailimap-extension-data-store
  input parameter session_ :: <mailimap*>;
  input parameter ext-data_ :: <mailimap-extension-data**>;
  c-name: "mailimap_extension_data_store";
end;

define C-function mailimap-has-extension
  input parameter session_ :: <mailimap*>;
  input parameter extension-name_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_extension";
end;

define C-function mailimap-has-authentication
  input parameter session_ :: <mailimap*>;
  input parameter authentication-name_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_authentication";
end;

define constant $MAILIMAP-EXTENSION-ANNOTATEMORE = 0;
define constant $MAILIMAP-EXTENSION-ACL = 1;
define constant $MAILIMAP-EXTENSION-UIDPLUS = 2;
define constant $MAILIMAP-EXTENSION-QUOTA = 3;
define constant $MAILIMAP-EXTENSION-NAMESPACE = 4;
define constant $MAILIMAP-EXTENSION-XLIST = 5;
define constant $MAILIMAP-EXTENSION-XGMLABELS = 6;
define constant $MAILIMAP-EXTENSION-XGMMSGID = 7;
define constant $MAILIMAP-EXTENSION-XGMTHRID = 8;
define constant $MAILIMAP-EXTENSION-ID = 9;
define constant $MAILIMAP-EXTENSION-ENABLE = 10;
define constant $MAILIMAP-EXTENSION-CONDSTORE = 11;
define constant $MAILIMAP-EXTENSION-QRESYNC = 12;
define constant $MAILIMAP-EXTENSION-SORT = 13;

define constant $MAILIMAP-EXTENDED-PARSER-RESPONSE-DATA = 0;
define constant $MAILIMAP-EXTENDED-PARSER-RESP-TEXT-CODE = 1;
define constant $MAILIMAP-EXTENDED-PARSER-MAILBOX-DATA = 2;
define constant $MAILIMAP-EXTENDED-PARSER-FETCH-DATA = 3;
define constant $MAILIMAP-EXTENDED-PARSER-STATUS-ATT = 4;

define C-function mailimap-fetch-rfc822
  input parameter session_ :: <mailimap*>;
  input parameter msgid_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_rfc822";
end;

define C-function mailimap-fetch-rfc822-header
  input parameter session_ :: <mailimap*>;
  input parameter msgid_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_rfc822_header";
end;

define C-function mailimap-fetch-envelope
  input parameter session_ :: <mailimap*>;
  input parameter first_ :: <uint32-t>;
  input parameter last_ :: <uint32-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_envelope";
end;

define C-function mailimap-append-simple
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter content_ :: <C-string>;
  input parameter size_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_append_simple";
end;

define C-function mailimap-login-simple
  input parameter session_ :: <mailimap*>;
  input parameter userid_ :: <C-string>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_login_simple";
end;

 /* Ignoring declaration for {<variable-declaration> #x00846E00} "mailimap-extension-id"*/
define C-function mailimap-has-id
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_id";
end;

define C-struct <mailimap-id-params-list>
  slot mailimap_id_params_list$idpa-list :: <clist*>;
end;

define C-pointer-type <mailimap-id-params-list*> => <mailimap-id-params-list>;
define C-pointer-type <mailimap-id-params-list**> => <mailimap-id-params-list*>;
define C-function mailimap-id
  input parameter session_ :: <mailimap*>;
  input parameter client-identification_ :: <mailimap-id-params-list*>;
  input parameter result_ :: <mailimap-id-params-list**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_id";
end;

define C-function mailimap-id-basic
  input parameter session_ :: <mailimap*>;
  input parameter name_ :: <C-string>;
  input parameter version_ :: <C-string>;
  input parameter p-server-name_ :: <char**>;
  input parameter p-server-version_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_id_basic";
end;

define C-function mailimap-id-params-list-new
  input parameter items_ :: <clist*>;
  result res :: <mailimap-id-params-list*>;
  c-name: "mailimap_id_params_list_new";
end;

define C-function mailimap-id-params-list-free
  input parameter list_ :: <mailimap-id-params-list*>;
  c-name: "mailimap_id_params_list_free";
end;

define C-struct <mailimap-id-param>
  slot mailimap_id_param$idpa-name :: <C-string>;
  slot mailimap_id_param$idpa-value :: <C-string>;
end;

define C-pointer-type <mailimap-id-param*> => <mailimap-id-param>;
define C-function mailimap-id-param-new
  input parameter name_ :: <C-string>;
  input parameter value_ :: <C-string>;
  result res :: <mailimap-id-param*>;
  c-name: "mailimap_id_param_new";
end;

define C-function mailimap-id-param-free
  input parameter param_ :: <mailimap-id-param*>;
  c-name: "mailimap_id_param_free";
end;

define C-function mailimap-id-params-list-new-empty
  result res :: <mailimap-id-params-list*>;
  c-name: "mailimap_id_params_list_new_empty";
end;

define C-function mailimap-id-params-list-add-name-value
  input parameter list_ :: <mailimap-id-params-list*>;
  input parameter name_ :: <C-string>;
  input parameter value_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_id_params_list_add_name_value";
end;

define C-function mailimap-oauth2-authenticate
  input parameter session_ :: <mailimap*>;
  input parameter auth-user_ :: <C-string>;
  input parameter access-token_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_oauth2_authenticate";
end;

define C-function mailimap-has-xoauth2
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_xoauth2";
end;

define C-function mailimap-socket-connect-voip
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailimap_socket_connect_voip";
end;

define C-function mailimap-socket-connect
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
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

 /* Ignoring declaration for {<variable-declaration> #x01076930} "mailimap-extension-sort"*/
define C-struct <mailimap-sort-key>
  slot mailimap_sort_key$sortk-type :: <C-signed-int>;
  slot mailimap_sort_key$sortk-is-reverse :: <C-signed-int>;
  slot mailimap_sort_key$sortk-multiple :: <clist*>;
end;

define C-pointer-type <mailimap-sort-key*> => <mailimap-sort-key>;
define C-function mailimap-sort
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
  input parameter key_ :: <mailimap-sort-key*>;
  input parameter searchkey_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_sort";
end;

define C-function mailimap-uid-sort
  input parameter session_ :: <mailimap*>;
  input parameter charset_ :: <C-string>;
  input parameter key_ :: <mailimap-sort-key*>;
  input parameter searchkey_ :: <mailimap-search-key*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_sort";
end;

define C-function mailimap-sort-result-free
  input parameter search-result_ :: <clist*>;
  c-name: "mailimap_sort_result_free";
end;

define constant $MAILIMAP-SORT-KEY-ARRIVAL = 0;
define constant $MAILIMAP-SORT-KEY-CC = 1;
define constant $MAILIMAP-SORT-KEY-DATE = 2;
define constant $MAILIMAP-SORT-KEY-FROM = 3;
define constant $MAILIMAP-SORT-KEY-SIZE = 4;
define constant $MAILIMAP-SORT-KEY-SUBJECT = 5;
define constant $MAILIMAP-SORT-KEY-TO = 6;
define constant $MAILIMAP-SORT-KEY-MULTIPLE = 7;

define C-function mailimap-sort-key-new
  input parameter sortk-type_ :: <C-signed-int>;
  input parameter is-reverse_ :: <C-signed-int>;
  input parameter sortk-multiple_ :: <clist*>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new";
end;

define C-function mailimap-sort-key-free
  input parameter key_ :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_free";
end;

define C-function mailimap-ssl-connect
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect";
end;

define C-function mailimap-ssl-connect-voip
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_voip";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailimap-ssl-connect-with-callback
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_with_callback";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailimap-ssl-connect-voip-with-callback
  input parameter f_ :: <mailimap*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_ssl_connect_voip_with_callback";
end;

define C-struct <mailimap-address>
  slot mailimap_address$ad-personal-name :: <C-string>;
  slot mailimap_address$ad-source-route :: <C-string>;
  slot mailimap_address$ad-mailbox-name :: <C-string>;
  slot mailimap_address$ad-host-name :: <C-string>;
end;

define C-pointer-type <mailimap-address*> => <mailimap-address>;
define C-function mailimap-address-new
  input parameter ad-personal-name_ :: <C-string>;
  input parameter ad-source-route_ :: <C-string>;
  input parameter ad-mailbox-name_ :: <C-string>;
  input parameter ad-host-name_ :: <C-string>;
  result res :: <mailimap-address*>;
  c-name: "mailimap_address_new";
end;

define C-function mailimap-address-free
  input parameter addr_ :: <mailimap-address*>;
  c-name: "mailimap_address_free";
end;

define constant $MAILIMAP-BODY-ERROR = 0;
define constant $MAILIMAP-BODY-1PART = 1;
define constant $MAILIMAP-BODY-MPART = 2;

define C-function mailimap-body-new
  input parameter bd-type_ :: <C-signed-int>;
  input parameter bd-body-1part_ :: <mailimap-body-type-1part*>;
  input parameter bd-body-mpart_ :: <mailimap-body-type-mpart*>;
  result res :: <mailimap-body*>;
  c-name: "mailimap_body_new";
end;

define C-function mailimap-body-free
  input parameter body_ :: <mailimap-body*>;
  c-name: "mailimap_body_free";
end;

define constant $MAILIMAP-BODY-EXTENSION-ERROR = 0;
define constant $MAILIMAP-BODY-EXTENSION-NSTRING = 1;
define constant $MAILIMAP-BODY-EXTENSION-NUMBER = 2;
define constant $MAILIMAP-BODY-EXTENSION-LIST = 3;

define C-union <anonymous-223>
  slot anonymous-223$ext-nstring :: <C-string>;
  slot anonymous-223$ext-number :: <C-unsigned-int>;
  slot anonymous-223$ext-body-extension-list :: <clist*>;
end;

define C-struct <mailimap-body-extension>
  slot mailimap_body_extension$ext-type :: <C-signed-int>;
  slot mailimap_body_extension$ext-data :: <anonymous-223>;
end;

define C-pointer-type <mailimap-body-extension*> => <mailimap-body-extension>;
define C-function mailimap-body-extension-new
  input parameter ext-type_ :: <C-signed-int>;
  input parameter ext-nstring_ :: <C-string>;
  input parameter ext-number_ :: <uint32-t>;
  input parameter ext-body-extension-list_ :: <clist*>;
  result res :: <mailimap-body-extension*>;
  c-name: "mailimap_body_extension_new";
end;

define C-function mailimap-body-extension-free
  input parameter be_ :: <mailimap-body-extension*>;
  c-name: "mailimap_body_extension_free";
end;

define C-function mailimap-body-ext-1part-new
  input parameter bd-md5_ :: <C-string>;
  input parameter bd-disposition_ :: <mailimap-body-fld-dsp*>;
  input parameter bd-language_ :: <mailimap-body-fld-lang*>;
  input parameter bd-loc_ :: <C-string>;
  input parameter bd-extension-list_ :: <clist*>;
  result res :: <mailimap-body-ext-1part*>;
  c-name: "mailimap_body_ext_1part_new";
end;

define C-function mailimap-body-ext-1part-free
  input parameter body-ext-1part_ :: <mailimap-body-ext-1part*>;
  c-name: "mailimap_body_ext_1part_free";
end;

define C-function mailimap-body-ext-mpart-new
  input parameter bd-parameter_ :: <mailimap-body-fld-param*>;
  input parameter bd-disposition_ :: <mailimap-body-fld-dsp*>;
  input parameter bd-language_ :: <mailimap-body-fld-lang*>;
  input parameter bd-loc_ :: <C-string>;
  input parameter bd-extension-list_ :: <clist*>;
  result res :: <mailimap-body-ext-mpart*>;
  c-name: "mailimap_body_ext_mpart_new";
end;

define C-function mailimap-body-ext-mpart-free
  input parameter body-ext-mpart_ :: <mailimap-body-ext-mpart*>;
  c-name: "mailimap_body_ext_mpart_free";
end;

define C-function mailimap-body-fields-new
  input parameter bd-parameter_ :: <mailimap-body-fld-param*>;
  input parameter bd-id_ :: <C-string>;
  input parameter bd-description_ :: <C-string>;
  input parameter bd-encoding_ :: <mailimap-body-fld-enc*>;
  input parameter bd-size_ :: <uint32-t>;
  result res :: <mailimap-body-fields*>;
  c-name: "mailimap_body_fields_new";
end;

define C-function mailimap-body-fields-free
  input parameter body-fields_ :: <mailimap-body-fields*>;
  c-name: "mailimap_body_fields_free";
end;

define C-function mailimap-body-fld-dsp-new
  input parameter dsp-type_ :: <C-string>;
  input parameter dsp-attributes_ :: <mailimap-body-fld-param*>;
  result res :: <mailimap-body-fld-dsp*>;
  c-name: "mailimap_body_fld_dsp_new";
end;

define C-function mailimap-body-fld-dsp-free
  input parameter bfd_ :: <mailimap-body-fld-dsp*>;
  c-name: "mailimap_body_fld_dsp_free";
end;

define constant $MAILIMAP-BODY-FLD-ENC-7BIT = 0;
define constant $MAILIMAP-BODY-FLD-ENC-8BIT = 1;
define constant $MAILIMAP-BODY-FLD-ENC-BINARY = 2;
define constant $MAILIMAP-BODY-FLD-ENC-BASE64 = 3;
define constant $MAILIMAP-BODY-FLD-ENC-QUOTED-PRINTABLE = 4;
define constant $MAILIMAP-BODY-FLD-ENC-OTHER = 5;

define C-function mailimap-body-fld-enc-new
  input parameter enc-type_ :: <C-signed-int>;
  input parameter enc-value_ :: <C-string>;
  result res :: <mailimap-body-fld-enc*>;
  c-name: "mailimap_body_fld_enc_new";
end;

define C-function mailimap-body-fld-enc-free
  input parameter bfe_ :: <mailimap-body-fld-enc*>;
  c-name: "mailimap_body_fld_enc_free";
end;

define constant $MAILIMAP-BODY-FLD-LANG-ERROR = 0;
define constant $MAILIMAP-BODY-FLD-LANG-SINGLE = 1;
define constant $MAILIMAP-BODY-FLD-LANG-LIST = 2;

define C-function mailimap-body-fld-lang-new
  input parameter lg-type_ :: <C-signed-int>;
  input parameter lg-single_ :: <C-string>;
  input parameter lg-list_ :: <clist*>;
  result res :: <mailimap-body-fld-lang*>;
  c-name: "mailimap_body_fld_lang_new";
end;

define C-function mailimap-body-fld-lang-free
  input parameter fld-lang_ :: <mailimap-body-fld-lang*>;
  c-name: "mailimap_body_fld_lang_free";
end;

define C-struct <mailimap-single-body-fld-param>
  slot mailimap_single_body_fld_param$pa-name :: <C-string>;
  slot mailimap_single_body_fld_param$pa-value :: <C-string>;
end;

define C-pointer-type <mailimap-single-body-fld-param*> => <mailimap-single-body-fld-param>;
define C-function mailimap-single-body-fld-param-new
  input parameter pa-name_ :: <C-string>;
  input parameter pa-value_ :: <C-string>;
  result res :: <mailimap-single-body-fld-param*>;
  c-name: "mailimap_single_body_fld_param_new";
end;

define C-function mailimap-single-body-fld-param-free
  input parameter p_ :: <mailimap-single-body-fld-param*>;
  c-name: "mailimap_single_body_fld_param_free";
end;

define C-function mailimap-body-fld-param-new
  input parameter pa-list_ :: <clist*>;
  result res :: <mailimap-body-fld-param*>;
  c-name: "mailimap_body_fld_param_new";
end;

define C-function mailimap-body-fld-param-free
  input parameter fld-param_ :: <mailimap-body-fld-param*>;
  c-name: "mailimap_body_fld_param_free";
end;

define constant $MAILIMAP-BODY-TYPE-1PART-ERROR = 0;
define constant $MAILIMAP-BODY-TYPE-1PART-BASIC = 1;
define constant $MAILIMAP-BODY-TYPE-1PART-MSG = 2;
define constant $MAILIMAP-BODY-TYPE-1PART-TEXT = 3;

define C-function mailimap-body-type-1part-new
  input parameter bd-type_ :: <C-signed-int>;
  input parameter bd-type-basic_ :: <mailimap-body-type-basic*>;
  input parameter bd-type-msg_ :: <mailimap-body-type-msg*>;
  input parameter bd-type-text_ :: <mailimap-body-type-text*>;
  input parameter bd-ext-1part_ :: <mailimap-body-ext-1part*>;
  result res :: <mailimap-body-type-1part*>;
  c-name: "mailimap_body_type_1part_new";
end;

define C-function mailimap-body-type-1part-free
  input parameter bt1p_ :: <mailimap-body-type-1part*>;
  c-name: "mailimap_body_type_1part_free";
end;

define C-function mailimap-body-type-basic-new
  input parameter bd-media-basic_ :: <mailimap-media-basic*>;
  input parameter bd-fields_ :: <mailimap-body-fields*>;
  result res :: <mailimap-body-type-basic*>;
  c-name: "mailimap_body_type_basic_new";
end;

define C-function mailimap-body-type-basic-free
  input parameter body-type-basic_ :: <mailimap-body-type-basic*>;
  c-name: "mailimap_body_type_basic_free";
end;

define C-function mailimap-body-type-mpart-new
  input parameter bd-list_ :: <clist*>;
  input parameter bd-media-subtype_ :: <C-string>;
  input parameter bd-ext-mpart_ :: <mailimap-body-ext-mpart*>;
  result res :: <mailimap-body-type-mpart*>;
  c-name: "mailimap_body_type_mpart_new";
end;

define C-function mailimap-body-type-mpart-free
  input parameter body-type-mpart_ :: <mailimap-body-type-mpart*>;
  c-name: "mailimap_body_type_mpart_free";
end;

define C-function mailimap-body-type-msg-new
  input parameter bd-fields_ :: <mailimap-body-fields*>;
  input parameter bd-envelope_ :: <mailimap-envelope*>;
  input parameter bd-body_ :: <mailimap-body*>;
  input parameter bd-lines_ :: <uint32-t>;
  result res :: <mailimap-body-type-msg*>;
  c-name: "mailimap_body_type_msg_new";
end;

define C-function mailimap-body-type-msg-free
  input parameter body-type-msg_ :: <mailimap-body-type-msg*>;
  c-name: "mailimap_body_type_msg_free";
end;

define C-function mailimap-body-type-text-new
  input parameter bd-media-text_ :: <C-string>;
  input parameter bd-fields_ :: <mailimap-body-fields*>;
  input parameter bd-lines_ :: <uint32-t>;
  result res :: <mailimap-body-type-text*>;
  c-name: "mailimap_body_type_text_new";
end;

define C-function mailimap-body-type-text-free
  input parameter body-type-text_ :: <mailimap-body-type-text*>;
  c-name: "mailimap_body_type_text_free";
end;

define constant $MAILIMAP-CAPABILITY-AUTH-TYPE = 0;
define constant $MAILIMAP-CAPABILITY-NAME = 1;

define C-union <anonymous-258>
  slot anonymous-258$cap-auth-type :: <C-string>;
  slot anonymous-258$cap-name :: <C-string>;
end;

define C-struct <mailimap-capability>
  slot mailimap_capability$cap-type :: <C-signed-int>;
  slot mailimap_capability$cap-data :: <anonymous-258>;
end;

define C-pointer-type <mailimap-capability*> => <mailimap-capability>;
define C-function mailimap-capability-new
  input parameter cap-type_ :: <C-signed-int>;
  input parameter cap-auth-type_ :: <C-string>;
  input parameter cap-name_ :: <C-string>;
  result res :: <mailimap-capability*>;
  c-name: "mailimap_capability_new";
end;

define C-function mailimap-capability-free
  input parameter c_ :: <mailimap-capability*>;
  c-name: "mailimap_capability_free";
end;

define C-function mailimap-capability-data-new
  input parameter cap-list_ :: <clist*>;
  result res :: <mailimap-capability-data*>;
  c-name: "mailimap_capability_data_new";
end;

define C-function mailimap-capability-data-free
  input parameter cap-data_ :: <mailimap-capability-data*>;
  c-name: "mailimap_capability_data_free";
end;

define constant $MAILIMAP-CONTINUE-REQ-ERROR = 0;
define constant $MAILIMAP-CONTINUE-REQ-TEXT = 1;
define constant $MAILIMAP-CONTINUE-REQ-BASE64 = 2;

define C-union <anonymous-264>
  slot anonymous-264$cr-text :: <mailimap-resp-text*>;
  slot anonymous-264$cr-base64 :: <C-string>;
end;

define C-struct <mailimap-continue-req>
  slot mailimap_continue_req$cr-type :: <C-signed-int>;
  slot mailimap_continue_req$cr-data :: <anonymous-264>;
end;

define C-pointer-type <mailimap-continue-req*> => <mailimap-continue-req>;
define C-function mailimap-continue-req-new
  input parameter cr-type_ :: <C-signed-int>;
  input parameter cr-text_ :: <mailimap-resp-text*>;
  input parameter cr-base64_ :: <C-string>;
  result res :: <mailimap-continue-req*>;
  c-name: "mailimap_continue_req_new";
end;

define C-function mailimap-continue-req-free
  input parameter cont-req_ :: <mailimap-continue-req*>;
  c-name: "mailimap_continue_req_free";
end;

define C-function mailimap-date-time-new
  input parameter dt-day_ :: <C-signed-int>;
  input parameter dt-month_ :: <C-signed-int>;
  input parameter dt-year_ :: <C-signed-int>;
  input parameter dt-hour_ :: <C-signed-int>;
  input parameter dt-min_ :: <C-signed-int>;
  input parameter dt-sec_ :: <C-signed-int>;
  input parameter dt-zone_ :: <C-signed-int>;
  result res :: <mailimap-date-time*>;
  c-name: "mailimap_date_time_new";
end;

define C-function mailimap-date-time-free
  input parameter date-time_ :: <mailimap-date-time*>;
  c-name: "mailimap_date_time_free";
end;

define C-function mailimap-envelope-new
  input parameter env-date_ :: <C-string>;
  input parameter env-subject_ :: <C-string>;
  input parameter env-from_ :: <mailimap-env-from*>;
  input parameter env-sender_ :: <mailimap-env-sender*>;
  input parameter env-reply-to_ :: <mailimap-env-reply-to*>;
  input parameter env-to_ :: <mailimap-env-to*>;
  input parameter env-cc_ :: <mailimap-env-cc*>;
  input parameter env-bcc_ :: <mailimap-env-bcc*>;
  input parameter env-in-reply-to_ :: <C-string>;
  input parameter env-message-id_ :: <C-string>;
  result res :: <mailimap-envelope*>;
  c-name: "mailimap_envelope_new";
end;

define C-function mailimap-envelope-free
  input parameter env_ :: <mailimap-envelope*>;
  c-name: "mailimap_envelope_free";
end;

define C-function mailimap-env-bcc-new
  input parameter bcc-list_ :: <clist*>;
  result res :: <mailimap-env-bcc*>;
  c-name: "mailimap_env_bcc_new";
end;

define C-function mailimap-env-bcc-free
  input parameter env-bcc_ :: <mailimap-env-bcc*>;
  c-name: "mailimap_env_bcc_free";
end;

define C-function mailimap-env-cc-new
  input parameter cc-list_ :: <clist*>;
  result res :: <mailimap-env-cc*>;
  c-name: "mailimap_env_cc_new";
end;

define C-function mailimap-env-cc-free
  input parameter env-cc_ :: <mailimap-env-cc*>;
  c-name: "mailimap_env_cc_free";
end;

define C-function mailimap-env-from-new
  input parameter frm-list_ :: <clist*>;
  result res :: <mailimap-env-from*>;
  c-name: "mailimap_env_from_new";
end;

define C-function mailimap-env-from-free
  input parameter env-from_ :: <mailimap-env-from*>;
  c-name: "mailimap_env_from_free";
end;

define C-function mailimap-env-reply-to-new
  input parameter rt-list_ :: <clist*>;
  result res :: <mailimap-env-reply-to*>;
  c-name: "mailimap_env_reply_to_new";
end;

define C-function mailimap-env-reply-to-free
  input parameter env-reply-to_ :: <mailimap-env-reply-to*>;
  c-name: "mailimap_env_reply_to_free";
end;

define C-function mailimap-env-sender-new
  input parameter snd-list_ :: <clist*>;
  result res :: <mailimap-env-sender*>;
  c-name: "mailimap_env_sender_new";
end;

define C-function mailimap-env-sender-free
  input parameter env-sender_ :: <mailimap-env-sender*>;
  c-name: "mailimap_env_sender_free";
end;

define C-function mailimap-env-to-new
  input parameter to-list_ :: <clist*>;
  result res :: <mailimap-env-to*>;
  c-name: "mailimap_env_to_new";
end;

define C-function mailimap-env-to-free
  input parameter env-to_ :: <mailimap-env-to*>;
  c-name: "mailimap_env_to_free";
end;

define constant $MAILIMAP-FLAG-ANSWERED = 0;
define constant $MAILIMAP-FLAG-FLAGGED = 1;
define constant $MAILIMAP-FLAG-DELETED = 2;
define constant $MAILIMAP-FLAG-SEEN = 3;
define constant $MAILIMAP-FLAG-DRAFT = 4;
define constant $MAILIMAP-FLAG-KEYWORD = 5;
define constant $MAILIMAP-FLAG-EXTENSION = 6;

define C-function mailimap-flag-new
  input parameter fl-type_ :: <C-signed-int>;
  input parameter fl-keyword_ :: <C-string>;
  input parameter fl-extension_ :: <C-string>;
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new";
end;

define C-function mailimap-flag-free
  input parameter f_ :: <mailimap-flag*>;
  c-name: "mailimap_flag_free";
end;

define constant $MAILIMAP-FLAG-FETCH-ERROR = 0;
define constant $MAILIMAP-FLAG-FETCH-RECENT = 1;
define constant $MAILIMAP-FLAG-FETCH-OTHER = 2;

define C-struct <mailimap-flag-fetch>
  slot mailimap_flag_fetch$fl-type :: <C-signed-int>;
  slot mailimap_flag_fetch$fl-flag :: <mailimap-flag*>;
end;

define C-pointer-type <mailimap-flag-fetch*> => <mailimap-flag-fetch>;
define C-function mailimap-flag-fetch-new
  input parameter fl-type_ :: <C-signed-int>;
  input parameter fl-flag_ :: <mailimap-flag*>;
  result res :: <mailimap-flag-fetch*>;
  c-name: "mailimap_flag_fetch_new";
end;

define C-function mailimap-flag-fetch-free
  input parameter flag-fetch_ :: <mailimap-flag-fetch*>;
  c-name: "mailimap_flag_fetch_free";
end;

define constant $MAILIMAP-FLAG-PERM-ERROR = 0;
define constant $MAILIMAP-FLAG-PERM-FLAG = 1;
define constant $MAILIMAP-FLAG-PERM-ALL = 2;

define C-struct <mailimap-flag-perm>
  slot mailimap_flag_perm$fl-type :: <C-signed-int>;
  slot mailimap_flag_perm$fl-flag :: <mailimap-flag*>;
end;

define C-pointer-type <mailimap-flag-perm*> => <mailimap-flag-perm>;
define C-function mailimap-flag-perm-new
  input parameter fl-type_ :: <C-signed-int>;
  input parameter fl-flag_ :: <mailimap-flag*>;
  result res :: <mailimap-flag-perm*>;
  c-name: "mailimap_flag_perm_new";
end;

define C-function mailimap-flag-perm-free
  input parameter flag-perm_ :: <mailimap-flag-perm*>;
  c-name: "mailimap_flag_perm_free";
end;

define C-function mailimap-flag-list-new
  input parameter fl-list_ :: <clist*>;
  result res :: <mailimap-flag-list*>;
  c-name: "mailimap_flag_list_new";
end;

define C-function mailimap-flag-list-free
  input parameter flag-list_ :: <mailimap-flag-list*>;
  c-name: "mailimap_flag_list_free";
end;

define constant $MAILIMAP-GREETING-RESP-COND-ERROR = 0;
define constant $MAILIMAP-GREETING-RESP-COND-AUTH = 1;
define constant $MAILIMAP-GREETING-RESP-COND-BYE = 2;

define C-struct <mailimap-resp-cond-auth>
  slot mailimap_resp_cond_auth$rsp-type :: <C-signed-int>;
  slot mailimap_resp_cond_auth$rsp-text :: <mailimap-resp-text*>;
end;

define C-pointer-type <mailimap-resp-cond-auth*> => <mailimap-resp-cond-auth>;
define C-union <anonymous-296>
  slot anonymous-296$gr-auth :: <mailimap-resp-cond-auth*>;
  slot anonymous-296$gr-bye :: <mailimap-resp-cond-bye*>;
end;

define C-struct <mailimap-greeting>
  slot mailimap_greeting$gr-type :: <C-signed-int>;
  slot mailimap_greeting$gr-data :: <anonymous-296>;
end;

define C-pointer-type <mailimap-greeting*> => <mailimap-greeting>;
define C-function mailimap-greeting-new
  input parameter gr-type_ :: <C-signed-int>;
  input parameter gr-auth_ :: <mailimap-resp-cond-auth*>;
  input parameter gr-bye_ :: <mailimap-resp-cond-bye*>;
  result res :: <mailimap-greeting*>;
  c-name: "mailimap_greeting_new";
end;

define C-function mailimap-greeting-free
  input parameter greeting_ :: <mailimap-greeting*>;
  c-name: "mailimap_greeting_free";
end;

define C-function mailimap-header-list-new
  input parameter hdr-list_ :: <clist*>;
  result res :: <mailimap-header-list*>;
  c-name: "mailimap_header_list_new";
end;

define C-function mailimap-header-list-free
  input parameter header-list_ :: <mailimap-header-list*>;
  c-name: "mailimap_header_list_free";
end;

define constant $MAILIMAP-STATUS-ATT-MESSAGES = 0;
define constant $MAILIMAP-STATUS-ATT-RECENT = 1;
define constant $MAILIMAP-STATUS-ATT-UIDNEXT = 2;
define constant $MAILIMAP-STATUS-ATT-UIDVALIDITY = 3;
define constant $MAILIMAP-STATUS-ATT-UNSEEN = 4;
define constant $MAILIMAP-STATUS-ATT-HIGHESTMODSEQ = 5;
define constant $MAILIMAP-STATUS-ATT-EXTENSION = 6;

define C-struct <mailimap-status-info>
  slot mailimap_status_info$st-att :: <C-signed-int>;
  slot mailimap_status_info$st-value :: <C-unsigned-int>;
  slot mailimap_status_info$st-ext-data :: <mailimap-extension-data*>;
end;

define C-pointer-type <mailimap-status-info*> => <mailimap-status-info>;
define C-function mailimap-status-info-new
  input parameter st-att_ :: <C-signed-int>;
  input parameter st-value_ :: <uint32-t>;
  input parameter st-ext-data_ :: <mailimap-extension-data*>;
  result res :: <mailimap-status-info*>;
  c-name: "mailimap_status_info_new";
end;

define C-function mailimap-status-info-free
  input parameter info_ :: <mailimap-status-info*>;
  c-name: "mailimap_status_info_free";
end;

define C-function mailimap-mailbox-data-status-new
  input parameter st-mailbox_ :: <C-string>;
  input parameter st-info-list_ :: <clist*>;
  result res :: <mailimap-mailbox-data-status*>;
  c-name: "mailimap_mailbox_data_status_new";
end;

define C-function mailimap-mailbox-data-status-free
  input parameter info_ :: <mailimap-mailbox-data-status*>;
  c-name: "mailimap_mailbox_data_status_free";
end;

define constant $MAILIMAP-MAILBOX-DATA-ERROR = 0;
define constant $MAILIMAP-MAILBOX-DATA-FLAGS = 1;
define constant $MAILIMAP-MAILBOX-DATA-LIST = 2;
define constant $MAILIMAP-MAILBOX-DATA-LSUB = 3;
define constant $MAILIMAP-MAILBOX-DATA-SEARCH = 4;
define constant $MAILIMAP-MAILBOX-DATA-STATUS = 5;
define constant $MAILIMAP-MAILBOX-DATA-EXISTS = 6;
define constant $MAILIMAP-MAILBOX-DATA-RECENT = 7;
define constant $MAILIMAP-MAILBOX-DATA-EXTENSION-DATA = 8;

define C-struct <mailimap-mbx-list-flags>
  slot mailimap_mbx_list_flags$mbf-type :: <C-signed-int>;
  slot mailimap_mbx_list_flags$mbf-oflags :: <clist*>;
  slot mailimap_mbx_list_flags$mbf-sflag :: <C-signed-int>;
end;

define C-pointer-type <mailimap-mbx-list-flags*> => <mailimap-mbx-list-flags>;
define C-struct <mailimap-mailbox-list>
  slot mailimap_mailbox_list$mb-flag :: <mailimap-mbx-list-flags*>;
  slot mailimap_mailbox_list$mb-delimiter :: <C-signed-char>;
  slot mailimap_mailbox_list$mb-name :: <C-string>;
end;

define C-pointer-type <mailimap-mailbox-list*> => <mailimap-mailbox-list>;
define C-union <anonymous-307>
  slot anonymous-307$mbd-flags :: <mailimap-flag-list*>;
  slot anonymous-307$mbd-list :: <mailimap-mailbox-list*>;
  slot anonymous-307$mbd-lsub :: <mailimap-mailbox-list*>;
  slot anonymous-307$mbd-search :: <clist*>;
  slot anonymous-307$mbd-status :: <mailimap-mailbox-data-status*>;
  slot anonymous-307$mbd-exists :: <C-unsigned-int>;
  slot anonymous-307$mbd-recent :: <C-unsigned-int>;
  slot anonymous-307$mbd-extension :: <mailimap-extension-data*>;
end;

define C-struct <mailimap-mailbox-data>
  slot mailimap_mailbox_data$mbd-type :: <C-signed-int>;
  slot mailimap_mailbox_data$mbd-data :: <anonymous-307>;
end;

define C-pointer-type <mailimap-mailbox-data*> => <mailimap-mailbox-data>;
define C-function mailimap-mailbox-data-new
  input parameter mbd-type_ :: <C-signed-int>;
  input parameter mbd-flags_ :: <mailimap-flag-list*>;
  input parameter mbd-list_ :: <mailimap-mailbox-list*>;
  input parameter mbd-lsub_ :: <mailimap-mailbox-list*>;
  input parameter mbd-search_ :: <clist*>;
  input parameter mbd-status_ :: <mailimap-mailbox-data-status*>;
  input parameter mbd-exists_ :: <uint32-t>;
  input parameter mbd-recent_ :: <uint32-t>;
  input parameter mbd-extension_ :: <mailimap-extension-data*>;
  result res :: <mailimap-mailbox-data*>;
  c-name: "mailimap_mailbox_data_new";
end;

define C-function mailimap-mailbox-data-free
  input parameter mb-data_ :: <mailimap-mailbox-data*>;
  c-name: "mailimap_mailbox_data_free";
end;

define constant $MAILIMAP-MBX-LIST-FLAGS-SFLAG = 0;
define constant $MAILIMAP-MBX-LIST-FLAGS-NO-SFLAG = 1;

define constant $MAILIMAP-MBX-LIST-SFLAG-ERROR = 0;
define constant $MAILIMAP-MBX-LIST-SFLAG-MARKED = 1;
define constant $MAILIMAP-MBX-LIST-SFLAG-NOSELECT = 2;
define constant $MAILIMAP-MBX-LIST-SFLAG-UNMARKED = 3;

define C-function mailimap-mbx-list-flags-new
  input parameter mbf-type_ :: <C-signed-int>;
  input parameter mbf-oflags_ :: <clist*>;
  input parameter mbf-sflag_ :: <C-signed-int>;
  result res :: <mailimap-mbx-list-flags*>;
  c-name: "mailimap_mbx_list_flags_new";
end;

define C-function mailimap-mbx-list-flags-free
  input parameter mbx-list-flags_ :: <mailimap-mbx-list-flags*>;
  c-name: "mailimap_mbx_list_flags_free";
end;

define constant $MAILIMAP-MBX-LIST-OFLAG-ERROR = 0;
define constant $MAILIMAP-MBX-LIST-OFLAG-NOINFERIORS = 1;
define constant $MAILIMAP-MBX-LIST-OFLAG-FLAG-EXT = 2;

define C-struct <mailimap-mbx-list-oflag>
  slot mailimap_mbx_list_oflag$of-type :: <C-signed-int>;
  slot mailimap_mbx_list_oflag$of-flag-ext :: <C-string>;
end;

define C-pointer-type <mailimap-mbx-list-oflag*> => <mailimap-mbx-list-oflag>;
define C-function mailimap-mbx-list-oflag-new
  input parameter of-type_ :: <C-signed-int>;
  input parameter of-flag-ext_ :: <C-string>;
  result res :: <mailimap-mbx-list-oflag*>;
  c-name: "mailimap_mbx_list_oflag_new";
end;

define C-function mailimap-mbx-list-oflag-free
  input parameter oflag_ :: <mailimap-mbx-list-oflag*>;
  c-name: "mailimap_mbx_list_oflag_free";
end;

define C-function mailimap-mailbox-list-new
  input parameter mbx-flags_ :: <mailimap-mbx-list-flags*>;
  input parameter mb-delimiter_ :: <C-signed-char>;
  input parameter mb-name_ :: <C-string>;
  result res :: <mailimap-mailbox-list*>;
  c-name: "mailimap_mailbox_list_new";
end;

define C-function mailimap-mailbox-list-free
  input parameter mb-list_ :: <mailimap-mailbox-list*>;
  c-name: "mailimap_mailbox_list_free";
end;

define constant $MAILIMAP-MEDIA-BASIC-APPLICATION = 0;
define constant $MAILIMAP-MEDIA-BASIC-AUDIO = 1;
define constant $MAILIMAP-MEDIA-BASIC-IMAGE = 2;
define constant $MAILIMAP-MEDIA-BASIC-MESSAGE = 3;
define constant $MAILIMAP-MEDIA-BASIC-VIDEO = 4;
define constant $MAILIMAP-MEDIA-BASIC-OTHER = 5;

define C-function mailimap-media-basic-new
  input parameter med-type_ :: <C-signed-int>;
  input parameter med-basic-type_ :: <C-string>;
  input parameter med-subtype_ :: <C-string>;
  result res :: <mailimap-media-basic*>;
  c-name: "mailimap_media_basic_new";
end;

define C-function mailimap-media-basic-free
  input parameter media-basic_ :: <mailimap-media-basic*>;
  c-name: "mailimap_media_basic_free";
end;

define constant $MAILIMAP-MESSAGE-DATA-ERROR = 0;
define constant $MAILIMAP-MESSAGE-DATA-EXPUNGE = 1;
define constant $MAILIMAP-MESSAGE-DATA-FETCH = 2;

define C-struct <mailimap-message-data>
  slot mailimap_message_data$mdt-number :: <C-unsigned-int>;
  slot mailimap_message_data$mdt-type :: <C-signed-int>;
  slot mailimap_message_data$mdt-msg-att :: <mailimap-msg-att*>;
end;

define C-pointer-type <mailimap-message-data*> => <mailimap-message-data>;
define C-function mailimap-message-data-new
  input parameter mdt-number_ :: <uint32-t>;
  input parameter mdt-type_ :: <C-signed-int>;
  input parameter mdt-msg-att_ :: <mailimap-msg-att*>;
  result res :: <mailimap-message-data*>;
  c-name: "mailimap_message_data_new";
end;

define C-function mailimap-message-data-free
  input parameter msg-data_ :: <mailimap-message-data*>;
  c-name: "mailimap_message_data_free";
end;

define constant $MAILIMAP-MSG-ATT-ITEM-ERROR = 0;
define constant $MAILIMAP-MSG-ATT-ITEM-DYNAMIC = 1;
define constant $MAILIMAP-MSG-ATT-ITEM-STATIC = 2;
define constant $MAILIMAP-MSG-ATT-ITEM-EXTENSION = 3;

define C-struct <anonymous-336>
  slot anonymous-336$att-content :: <C-string>;
  slot anonymous-336$att-length :: <C-unsigned-long>;
end;

define C-struct <anonymous-337>
  slot anonymous-337$att-content :: <C-string>;
  slot anonymous-337$att-length :: <C-unsigned-long>;
end;

define C-struct <anonymous-338>
  slot anonymous-338$att-content :: <C-string>;
  slot anonymous-338$att-length :: <C-unsigned-long>;
end;

define C-struct <mailimap-msg-att-body-section>
  slot mailimap_msg_att_body_section$sec-section :: <mailimap-section*>;
  slot mailimap_msg_att_body_section$sec-origin-octet :: <C-unsigned-int>;
  slot mailimap_msg_att_body_section$sec-body-part :: <C-string>;
  slot mailimap_msg_att_body_section$sec-length :: <C-unsigned-long>;
end;

define C-pointer-type <mailimap-msg-att-body-section*> => <mailimap-msg-att-body-section>;
define C-union <anonymous-339>
  slot anonymous-339$att-env :: <mailimap-envelope*>;
  slot anonymous-339$att-internal-date :: <mailimap-date-time*>;
  slot anonymous-339$att-rfc822 :: <anonymous-336>;
  slot anonymous-339$att-rfc822-header :: <anonymous-337>;
  slot anonymous-339$att-rfc822-text :: <anonymous-338>;
  slot anonymous-339$att-rfc822-size :: <C-unsigned-int>;
  slot anonymous-339$att-bodystructure :: <mailimap-body*>;
  slot anonymous-339$att-body :: <mailimap-body*>;
  slot anonymous-339$att-body-section :: <mailimap-msg-att-body-section*>;
  slot anonymous-339$att-uid :: <C-unsigned-int>;
end;

define C-struct <mailimap-msg-att-static>
  slot mailimap_msg_att_static$att-type :: <C-signed-int>;
  slot mailimap_msg_att_static$att-data :: <anonymous-339>;
end;

define C-pointer-type <mailimap-msg-att-static*> => <mailimap-msg-att-static>;
define C-union <anonymous-326>
  slot anonymous-326$att-dyn :: <mailimap-msg-att-dynamic*>;
  slot anonymous-326$att-static :: <mailimap-msg-att-static*>;
  slot anonymous-326$att-extension-data :: <mailimap-extension-data*>;
end;

define C-struct <mailimap-msg-att-item>
  slot mailimap_msg_att_item$att-type :: <C-signed-int>;
  slot mailimap_msg_att_item$att-data :: <anonymous-326>;
end;

define C-pointer-type <mailimap-msg-att-item*> => <mailimap-msg-att-item>;
define C-function mailimap-msg-att-item-new
  input parameter att-type_ :: <C-signed-int>;
  input parameter att-dyn_ :: <mailimap-msg-att-dynamic*>;
  input parameter att-static_ :: <mailimap-msg-att-static*>;
  input parameter att-extension-data_ :: <mailimap-extension-data*>;
  result res :: <mailimap-msg-att-item*>;
  c-name: "mailimap_msg_att_item_new";
end;

define C-function mailimap-msg-att-item-free
  input parameter item_ :: <mailimap-msg-att-item*>;
  c-name: "mailimap_msg_att_item_free";
end;

define C-function mailimap-msg-att-new
  input parameter att-list_ :: <clist*>;
  result res :: <mailimap-msg-att*>;
  c-name: "mailimap_msg_att_new";
end;

define C-function mailimap-msg-att-free
  input parameter msg-att_ :: <mailimap-msg-att*>;
  c-name: "mailimap_msg_att_free";
end;

define C-function mailimap-msg-att-dynamic-new
  input parameter att-list_ :: <clist*>;
  result res :: <mailimap-msg-att-dynamic*>;
  c-name: "mailimap_msg_att_dynamic_new";
end;

define C-function mailimap-msg-att-dynamic-free
  input parameter msg-att-dyn_ :: <mailimap-msg-att-dynamic*>;
  c-name: "mailimap_msg_att_dynamic_free";
end;

define C-function mailimap-msg-att-body-section-new
  input parameter section_ :: <mailimap-section*>;
  input parameter sec-origin-octet_ :: <uint32-t>;
  input parameter sec-body-part_ :: <C-string>;
  input parameter sec-length_ :: <size-t>;
  result res :: <mailimap-msg-att-body-section*>;
  c-name: "mailimap_msg_att_body_section_new";
end;

define C-function mailimap-msg-att-body-section-free
  input parameter msg-att-body-section_ :: <mailimap-msg-att-body-section*>;
  c-name: "mailimap_msg_att_body_section_free";
end;

define constant $MAILIMAP-MSG-ATT-ERROR = 0;
define constant $MAILIMAP-MSG-ATT-ENVELOPE = 1;
define constant $MAILIMAP-MSG-ATT-INTERNALDATE = 2;
define constant $MAILIMAP-MSG-ATT-RFC822 = 3;
define constant $MAILIMAP-MSG-ATT-RFC822-HEADER = 4;
define constant $MAILIMAP-MSG-ATT-RFC822-TEXT = 5;
define constant $MAILIMAP-MSG-ATT-RFC822-SIZE = 6;
define constant $MAILIMAP-MSG-ATT-BODY = 7;
define constant $MAILIMAP-MSG-ATT-BODYSTRUCTURE = 8;
define constant $MAILIMAP-MSG-ATT-BODY-SECTION = 9;
define constant $MAILIMAP-MSG-ATT-UID = 10;

define C-function mailimap-msg-att-static-new
  input parameter att-type_ :: <C-signed-int>;
  input parameter att-env_ :: <mailimap-envelope*>;
  input parameter att-internal-date_ :: <mailimap-date-time*>;
  input parameter att-rfc822_ :: <C-string>;
  input parameter att-rfc822-header_ :: <C-string>;
  input parameter att-rfc822-text_ :: <C-string>;
  input parameter att-length_ :: <size-t>;
  input parameter att-rfc822-size_ :: <uint32-t>;
  input parameter att-bodystructure_ :: <mailimap-body*>;
  input parameter att-body_ :: <mailimap-body*>;
  input parameter att-body-section_ :: <mailimap-msg-att-body-section*>;
  input parameter att-uid_ :: <uint32-t>;
  result res :: <mailimap-msg-att-static*>;
  c-name: "mailimap_msg_att_static_new";
end;

define C-function mailimap-msg-att-static-free
  input parameter item_ :: <mailimap-msg-att-static*>;
  c-name: "mailimap_msg_att_static_free";
end;

define constant $MAILIMAP-RESP-ERROR = 0;
define constant $MAILIMAP-RESP-CONT-REQ = 1;
define constant $MAILIMAP-RESP-RESP-DATA = 2;

define C-union <anonymous-349>
  slot anonymous-349$rsp-cond-state :: <mailimap-resp-cond-state*>;
  slot anonymous-349$rsp-bye :: <mailimap-resp-cond-bye*>;
  slot anonymous-349$rsp-mailbox-data :: <mailimap-mailbox-data*>;
  slot anonymous-349$rsp-message-data :: <mailimap-message-data*>;
  slot anonymous-349$rsp-capability-data :: <mailimap-capability-data*>;
  slot anonymous-349$rsp-extension-data :: <mailimap-extension-data*>;
end;

define C-struct <mailimap-response-data>
  slot mailimap_response_data$rsp-type :: <C-signed-int>;
  slot mailimap_response_data$rsp-data :: <anonymous-349>;
end;

define C-pointer-type <mailimap-response-data*> => <mailimap-response-data>;
define C-union <anonymous-343>
  slot anonymous-343$rsp-cont-req :: <mailimap-continue-req*>;
  slot anonymous-343$rsp-resp-data :: <mailimap-response-data*>;
end;

define C-struct <mailimap-cont-req-or-resp-data>
  slot mailimap_cont_req_or_resp_data$rsp-type :: <C-signed-int>;
  slot mailimap_cont_req_or_resp_data$rsp-data :: <anonymous-343>;
end;

define C-pointer-type <mailimap-cont-req-or-resp-data*> => <mailimap-cont-req-or-resp-data>;
define C-function mailimap-cont-req-or-resp-data-new
  input parameter rsp-type_ :: <C-signed-int>;
  input parameter rsp-cont-req_ :: <mailimap-continue-req*>;
  input parameter rsp-resp-data_ :: <mailimap-response-data*>;
  result res :: <mailimap-cont-req-or-resp-data*>;
  c-name: "mailimap_cont_req_or_resp_data_new";
end;

define C-function mailimap-cont-req-or-resp-data-free
  input parameter cont-req-or-resp-data_ :: <mailimap-cont-req-or-resp-data*>;
  c-name: "mailimap_cont_req_or_resp_data_free";
end;

define C-function mailimap-response-new
  input parameter rsp-cont-req-or-resp-data-list_ :: <clist*>;
  input parameter rsp-resp-done_ :: <mailimap-response-done*>;
  result res :: <mailimap-response*>;
  c-name: "mailimap_response_new";
end;

define C-function mailimap-response-free
  input parameter resp_ :: <mailimap-response*>;
  c-name: "mailimap_response_free";
end;

define constant $MAILIMAP-RESP-DATA-TYPE-ERROR = 0;
define constant $MAILIMAP-RESP-DATA-TYPE-COND-STATE = 1;
define constant $MAILIMAP-RESP-DATA-TYPE-COND-BYE = 2;
define constant $MAILIMAP-RESP-DATA-TYPE-MAILBOX-DATA = 3;
define constant $MAILIMAP-RESP-DATA-TYPE-MESSAGE-DATA = 4;
define constant $MAILIMAP-RESP-DATA-TYPE-CAPABILITY-DATA = 5;
define constant $MAILIMAP-RESP-DATA-TYPE-EXTENSION-DATA = 6;

define C-function mailimap-response-data-new
  input parameter rsp-type_ :: <C-signed-int>;
  input parameter rsp-cond-state_ :: <mailimap-resp-cond-state*>;
  input parameter rsp-bye_ :: <mailimap-resp-cond-bye*>;
  input parameter rsp-mailbox-data_ :: <mailimap-mailbox-data*>;
  input parameter rsp-message-data_ :: <mailimap-message-data*>;
  input parameter rsp-capability-data_ :: <mailimap-capability-data*>;
  input parameter rsp-extension-data_ :: <mailimap-extension-data*>;
  result res :: <mailimap-response-data*>;
  c-name: "mailimap_response_data_new";
end;

define C-function mailimap-response-data-free
  input parameter resp-data_ :: <mailimap-response-data*>;
  c-name: "mailimap_response_data_free";
end;

define constant $MAILIMAP-RESP-DONE-TYPE-ERROR = 0;
define constant $MAILIMAP-RESP-DONE-TYPE-TAGGED = 1;
define constant $MAILIMAP-RESP-DONE-TYPE-FATAL = 2;

define C-function mailimap-response-done-new
  input parameter rsp-type_ :: <C-signed-int>;
  input parameter rsp-tagged_ :: <mailimap-response-tagged*>;
  input parameter rsp-fatal_ :: <mailimap-response-fatal*>;
  result res :: <mailimap-response-done*>;
  c-name: "mailimap_response_done_new";
end;

define C-function mailimap-response-done-free
  input parameter resp-done_ :: <mailimap-response-done*>;
  c-name: "mailimap_response_done_free";
end;

define C-function mailimap-response-fatal-new
  input parameter rsp-bye_ :: <mailimap-resp-cond-bye*>;
  result res :: <mailimap-response-fatal*>;
  c-name: "mailimap_response_fatal_new";
end;

define C-function mailimap-response-fatal-free
  input parameter resp-fatal_ :: <mailimap-response-fatal*>;
  c-name: "mailimap_response_fatal_free";
end;

define C-function mailimap-response-tagged-new
  input parameter rsp-tag_ :: <C-string>;
  input parameter rsp-cond-state_ :: <mailimap-resp-cond-state*>;
  result res :: <mailimap-response-tagged*>;
  c-name: "mailimap_response_tagged_new";
end;

define C-function mailimap-response-tagged-free
  input parameter tagged_ :: <mailimap-response-tagged*>;
  c-name: "mailimap_response_tagged_free";
end;

define constant $MAILIMAP-RESP-COND-AUTH-ERROR = 0;
define constant $MAILIMAP-RESP-COND-AUTH-OK = 1;
define constant $MAILIMAP-RESP-COND-AUTH-PREAUTH = 2;

define C-function mailimap-resp-cond-auth-new
  input parameter rsp-type_ :: <C-signed-int>;
  input parameter rsp-text_ :: <mailimap-resp-text*>;
  result res :: <mailimap-resp-cond-auth*>;
  c-name: "mailimap_resp_cond_auth_new";
end;

define C-function mailimap-resp-cond-auth-free
  input parameter cond-auth_ :: <mailimap-resp-cond-auth*>;
  c-name: "mailimap_resp_cond_auth_free";
end;

define C-function mailimap-resp-cond-bye-new
  input parameter rsp-text_ :: <mailimap-resp-text*>;
  result res :: <mailimap-resp-cond-bye*>;
  c-name: "mailimap_resp_cond_bye_new";
end;

define C-function mailimap-resp-cond-bye-free
  input parameter cond-bye_ :: <mailimap-resp-cond-bye*>;
  c-name: "mailimap_resp_cond_bye_free";
end;

define constant $MAILIMAP-RESP-COND-STATE-OK = 0;
define constant $MAILIMAP-RESP-COND-STATE-NO = 1;
define constant $MAILIMAP-RESP-COND-STATE-BAD = 2;

define C-function mailimap-resp-cond-state-new
  input parameter rsp-type_ :: <C-signed-int>;
  input parameter rsp-text_ :: <mailimap-resp-text*>;
  result res :: <mailimap-resp-cond-state*>;
  c-name: "mailimap_resp_cond_state_new";
end;

define C-function mailimap-resp-cond-state-free
  input parameter cond-state_ :: <mailimap-resp-cond-state*>;
  c-name: "mailimap_resp_cond_state_free";
end;

define C-function mailimap-resp-text-new
  input parameter resp-code_ :: <mailimap-resp-text-code*>;
  input parameter rsp-text_ :: <C-string>;
  result res :: <mailimap-resp-text*>;
  c-name: "mailimap_resp_text_new";
end;

define C-function mailimap-resp-text-free
  input parameter resp-text_ :: <mailimap-resp-text*>;
  c-name: "mailimap_resp_text_free";
end;

define constant $MAILIMAP-RESP-TEXT-CODE-ALERT = 0;
define constant $MAILIMAP-RESP-TEXT-CODE-BADCHARSET = 1;
define constant $MAILIMAP-RESP-TEXT-CODE-CAPABILITY-DATA = 2;
define constant $MAILIMAP-RESP-TEXT-CODE-PARSE = 3;
define constant $MAILIMAP-RESP-TEXT-CODE-PERMANENTFLAGS = 4;
define constant $MAILIMAP-RESP-TEXT-CODE-READ-ONLY = 5;
define constant $MAILIMAP-RESP-TEXT-CODE-READ-WRITE = 6;
define constant $MAILIMAP-RESP-TEXT-CODE-TRY-CREATE = 7;
define constant $MAILIMAP-RESP-TEXT-CODE-UIDNEXT = 8;
define constant $MAILIMAP-RESP-TEXT-CODE-UIDVALIDITY = 9;
define constant $MAILIMAP-RESP-TEXT-CODE-UNSEEN = 10;
define constant $MAILIMAP-RESP-TEXT-CODE-OTHER = 11;
define constant $MAILIMAP-RESP-TEXT-CODE-EXTENSION = 12;

define C-function mailimap-resp-text-code-new
  input parameter rc-type_ :: <C-signed-int>;
  input parameter rc-badcharset_ :: <clist*>;
  input parameter rc-cap-data_ :: <mailimap-capability-data*>;
  input parameter rc-perm-flags_ :: <clist*>;
  input parameter rc-uidnext_ :: <uint32-t>;
  input parameter rc-uidvalidity_ :: <uint32-t>;
  input parameter rc-first-unseen_ :: <uint32-t>;
  input parameter rc-atom_ :: <C-string>;
  input parameter rc-atom-value_ :: <C-string>;
  input parameter rc-ext-data_ :: <mailimap-extension-data*>;
  result res :: <mailimap-resp-text-code*>;
  c-name: "mailimap_resp_text_code_new";
end;

define C-function mailimap-resp-text-code-free
  input parameter resp-text-code_ :: <mailimap-resp-text-code*>;
  c-name: "mailimap_resp_text_code_free";
end;

define C-function mailimap-section-new
  input parameter sec-spec_ :: <mailimap-section-spec*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new";
end;

define C-function mailimap-section-free
  input parameter section_ :: <mailimap-section*>;
  c-name: "mailimap_section_free";
end;

define constant $MAILIMAP-SECTION-MSGTEXT-HEADER = 0;
define constant $MAILIMAP-SECTION-MSGTEXT-HEADER-FIELDS = 1;
define constant $MAILIMAP-SECTION-MSGTEXT-HEADER-FIELDS-NOT = 2;
define constant $MAILIMAP-SECTION-MSGTEXT-TEXT = 3;

define C-function mailimap-section-msgtext-new
  input parameter sec-type_ :: <C-signed-int>;
  input parameter sec-header-list_ :: <mailimap-header-list*>;
  result res :: <mailimap-section-msgtext*>;
  c-name: "mailimap_section_msgtext_new";
end;

define C-function mailimap-section-msgtext-free
  input parameter msgtext_ :: <mailimap-section-msgtext*>;
  c-name: "mailimap_section_msgtext_free";
end;

define C-function mailimap-section-part-new
  input parameter sec-id_ :: <clist*>;
  result res :: <mailimap-section-part*>;
  c-name: "mailimap_section_part_new";
end;

define C-function mailimap-section-part-free
  input parameter section-part_ :: <mailimap-section-part*>;
  c-name: "mailimap_section_part_free";
end;

define constant $MAILIMAP-SECTION-SPEC-SECTION-MSGTEXT = 0;
define constant $MAILIMAP-SECTION-SPEC-SECTION-PART = 1;

define C-function mailimap-section-spec-new
  input parameter sec-type_ :: <C-signed-int>;
  input parameter sec-msgtext_ :: <mailimap-section-msgtext*>;
  input parameter sec-part_ :: <mailimap-section-part*>;
  input parameter sec-text_ :: <mailimap-section-text*>;
  result res :: <mailimap-section-spec*>;
  c-name: "mailimap_section_spec_new";
end;

define C-function mailimap-section-spec-free
  input parameter section-spec_ :: <mailimap-section-spec*>;
  c-name: "mailimap_section_spec_free";
end;

define constant $MAILIMAP-SECTION-TEXT-ERROR = 0;
define constant $MAILIMAP-SECTION-TEXT-SECTION-MSGTEXT = 1;
define constant $MAILIMAP-SECTION-TEXT-MIME = 2;

define C-function mailimap-section-text-new
  input parameter sec-type_ :: <C-signed-int>;
  input parameter sec-msgtext_ :: <mailimap-section-msgtext*>;
  result res :: <mailimap-section-text*>;
  c-name: "mailimap_section_text_new";
end;

define C-function mailimap-section-text-free
  input parameter section-text_ :: <mailimap-section-text*>;
  c-name: "mailimap_section_text_free";
end;

define C-struct <mailimap-set-item>
  slot mailimap_set_item$set-first :: <C-unsigned-int>;
  slot mailimap_set_item$set-last :: <C-unsigned-int>;
end;

define C-pointer-type <mailimap-set-item*> => <mailimap-set-item>;
define C-function mailimap-set-item-new
  input parameter set-first_ :: <uint32-t>;
  input parameter set-last_ :: <uint32-t>;
  result res :: <mailimap-set-item*>;
  c-name: "mailimap_set_item_new";
end;

define C-function mailimap-set-item-free
  input parameter set-item_ :: <mailimap-set-item*>;
  c-name: "mailimap_set_item_free";
end;

define C-function mailimap-set-new
  input parameter list_ :: <clist*>;
  result res :: <mailimap-set*>;
  c-name: "mailimap_set_new";
end;

define C-function mailimap-set-free
  input parameter set_ :: <mailimap-set*>;
  c-name: "mailimap_set_free";
end;

define C-function mailimap-date-new
  input parameter dt-day_ :: <C-signed-int>;
  input parameter dt-month_ :: <C-signed-int>;
  input parameter dt-year_ :: <C-signed-int>;
  result res :: <mailimap-date*>;
  c-name: "mailimap_date_new";
end;

define C-function mailimap-date-free
  input parameter date_ :: <mailimap-date*>;
  c-name: "mailimap_date_free";
end;

define constant $MAILIMAP-FETCH-ATT-ENVELOPE = 0;
define constant $MAILIMAP-FETCH-ATT-FLAGS = 1;
define constant $MAILIMAP-FETCH-ATT-INTERNALDATE = 2;
define constant $MAILIMAP-FETCH-ATT-RFC822 = 3;
define constant $MAILIMAP-FETCH-ATT-RFC822-HEADER = 4;
define constant $MAILIMAP-FETCH-ATT-RFC822-SIZE = 5;
define constant $MAILIMAP-FETCH-ATT-RFC822-TEXT = 6;
define constant $MAILIMAP-FETCH-ATT-BODY = 7;
define constant $MAILIMAP-FETCH-ATT-BODYSTRUCTURE = 8;
define constant $MAILIMAP-FETCH-ATT-UID = 9;
define constant $MAILIMAP-FETCH-ATT-BODY-SECTION = 10;
define constant $MAILIMAP-FETCH-ATT-BODY-PEEK-SECTION = 11;
define constant $MAILIMAP-FETCH-ATT-EXTENSION = 12;

define C-function mailimap-fetch-att-new
  input parameter att-type_ :: <C-signed-int>;
  input parameter att-section_ :: <mailimap-section*>;
  input parameter att-offset_ :: <uint32-t>;
  input parameter att-size_ :: <uint32-t>;
  input parameter att-extension_ :: <C-string>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new";
end;

define C-function mailimap-fetch-att-free
  input parameter fetch-att_ :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_free";
end;

define constant $MAILIMAP-FETCH-TYPE-ALL = 0;
define constant $MAILIMAP-FETCH-TYPE-FULL = 1;
define constant $MAILIMAP-FETCH-TYPE-FAST = 2;
define constant $MAILIMAP-FETCH-TYPE-FETCH-ATT = 3;
define constant $MAILIMAP-FETCH-TYPE-FETCH-ATT-LIST = 4;

define C-function mailimap-fetch-type-new
  input parameter ft-type_ :: <C-signed-int>;
  input parameter ft-fetch-att_ :: <mailimap-fetch-att*>;
  input parameter ft-fetch-att-list_ :: <clist*>;
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new";
end;

define C-function mailimap-fetch-type-free
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_free";
end;

define C-function mailimap-store-att-flags-new
  input parameter fl-sign_ :: <C-signed-int>;
  input parameter fl-silent_ :: <C-signed-int>;
  input parameter fl-flag-list_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new";
end;

define C-function mailimap-store-att-flags-free
  input parameter store-att-flags_ :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_free";
end;

define constant $MAILIMAP-SEARCH-KEY-ALL = 0;
define constant $MAILIMAP-SEARCH-KEY-ANSWERED = 1;
define constant $MAILIMAP-SEARCH-KEY-BCC = 2;
define constant $MAILIMAP-SEARCH-KEY-BEFORE = 3;
define constant $MAILIMAP-SEARCH-KEY-BODY = 4;
define constant $MAILIMAP-SEARCH-KEY-CC = 5;
define constant $MAILIMAP-SEARCH-KEY-DELETED = 6;
define constant $MAILIMAP-SEARCH-KEY-FLAGGED = 7;
define constant $MAILIMAP-SEARCH-KEY-FROM = 8;
define constant $MAILIMAP-SEARCH-KEY-KEYWORD = 9;
define constant $MAILIMAP-SEARCH-KEY-NEW = 10;
define constant $MAILIMAP-SEARCH-KEY-OLD = 11;
define constant $MAILIMAP-SEARCH-KEY-ON = 12;
define constant $MAILIMAP-SEARCH-KEY-RECENT = 13;
define constant $MAILIMAP-SEARCH-KEY-SEEN = 14;
define constant $MAILIMAP-SEARCH-KEY-SINCE = 15;
define constant $MAILIMAP-SEARCH-KEY-SUBJECT = 16;
define constant $MAILIMAP-SEARCH-KEY-TEXT = 17;
define constant $MAILIMAP-SEARCH-KEY-TO = 18;
define constant $MAILIMAP-SEARCH-KEY-UNANSWERED = 19;
define constant $MAILIMAP-SEARCH-KEY-UNDELETED = 20;
define constant $MAILIMAP-SEARCH-KEY-UNFLAGGED = 21;
define constant $MAILIMAP-SEARCH-KEY-UNKEYWORD = 22;
define constant $MAILIMAP-SEARCH-KEY-UNSEEN = 23;
define constant $MAILIMAP-SEARCH-KEY-DRAFT = 24;
define constant $MAILIMAP-SEARCH-KEY-HEADER = 25;
define constant $MAILIMAP-SEARCH-KEY-LARGER = 26;
define constant $MAILIMAP-SEARCH-KEY-NOT = 27;
define constant $MAILIMAP-SEARCH-KEY-OR = 28;
define constant $MAILIMAP-SEARCH-KEY-SENTBEFORE = 29;
define constant $MAILIMAP-SEARCH-KEY-SENTON = 30;
define constant $MAILIMAP-SEARCH-KEY-SENTSINCE = 31;
define constant $MAILIMAP-SEARCH-KEY-SMALLER = 32;
define constant $MAILIMAP-SEARCH-KEY-UID = 33;
define constant $MAILIMAP-SEARCH-KEY-UNDRAFT = 34;
define constant $MAILIMAP-SEARCH-KEY-SET = 35;
define constant $MAILIMAP-SEARCH-KEY-MULTIPLE = 36;
define constant $MAILIMAP-SEARCH-KEY-MODSEQ = 37;
define constant $MAILIMAP-SEARCH-KEY-XGMTHRID = 38;
define constant $MAILIMAP-SEARCH-KEY-XGMMSGID = 39;
define constant $MAILIMAP-SEARCH-KEY-XGMRAW = 40;

define constant $MAILIMAP-SEARCH-KEY-MODSEQ-ENTRY-TYPE-REQ-PRIV = 0;
define constant $MAILIMAP-SEARCH-KEY-MODSEQ-ENTRY-TYPE-REQ-SHARED = 1;
define constant $MAILIMAP-SEARCH-KEY-MODSEQ-ENTRY-TYPE-REQ-ALL = 2;

define C-function mailimap-search-key-new
  input parameter sk-type_ :: <C-signed-int>;
  input parameter sk-bcc_ :: <C-string>;
  input parameter sk-before_ :: <mailimap-date*>;
  input parameter sk-body_ :: <C-string>;
  input parameter sk-cc_ :: <C-string>;
  input parameter sk-from_ :: <C-string>;
  input parameter sk-keyword_ :: <C-string>;
  input parameter sk-on_ :: <mailimap-date*>;
  input parameter sk-since_ :: <mailimap-date*>;
  input parameter sk-subject_ :: <C-string>;
  input parameter sk-text_ :: <C-string>;
  input parameter sk-to_ :: <C-string>;
  input parameter sk-unkeyword_ :: <C-string>;
  input parameter sk-header-name_ :: <C-string>;
  input parameter sk-header-value_ :: <C-string>;
  input parameter sk-larger_ :: <uint32-t>;
  input parameter sk-not_ :: <mailimap-search-key*>;
  input parameter sk-or1_ :: <mailimap-search-key*>;
  input parameter sk-or2_ :: <mailimap-search-key*>;
  input parameter sk-sentbefore_ :: <mailimap-date*>;
  input parameter sk-senton_ :: <mailimap-date*>;
  input parameter sk-sentsince_ :: <mailimap-date*>;
  input parameter sk-smaller_ :: <uint32-t>;
  input parameter sk-uid_ :: <mailimap-set*>;
  input parameter sk-set_ :: <mailimap-set*>;
  input parameter sk-multiple_ :: <clist*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new";
end;

define C-function mailimap-search-key-new-xgmthrid
  input parameter sk-xgmthrid_ :: <uint64-t>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_xgmthrid";
end;

define C-function mailimap-search-key-new-xgmmsgid
  input parameter sk-xgmmsgid_ :: <uint64-t>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_xgmmsgid";
end;

define C-function mailimap-search-key-new-xgmraw
  input parameter sk-xgmraw_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_xgmraw";
end;

define C-function mailimap-search-key-free
  input parameter key_ :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_free";
end;

define C-function mailimap-status-att-list-new
  input parameter att-list_ :: <clist*>;
  result res :: <mailimap-status-att-list*>;
  c-name: "mailimap_status_att_list_new";
end;

define C-function mailimap-status-att-list-free
  input parameter status-att-list_ :: <mailimap-status-att-list*>;
  c-name: "mailimap_status_att_list_free";
end;

define C-function mailimap-number-alloc-new
  input parameter number_ :: <uint32-t>;
  result res :: <uint32-t*>;
  c-name: "mailimap_number_alloc_new";
end;

define C-function mailimap-number-alloc-free
  input parameter pnumber_ :: <uint32-t*>;
  c-name: "mailimap_number_alloc_free";
end;

define C-function mailimap-addr-host-free
  input parameter addr-host_ :: <C-string>;
  c-name: "mailimap_addr_host_free";
end;

define C-function mailimap-addr-mailbox-free
  input parameter addr-mailbox_ :: <C-string>;
  c-name: "mailimap_addr_mailbox_free";
end;

define C-function mailimap-addr-adl-free
  input parameter addr-adl_ :: <C-string>;
  c-name: "mailimap_addr_adl_free";
end;

define C-function mailimap-addr-name-free
  input parameter addr-name_ :: <C-string>;
  c-name: "mailimap_addr_name_free";
end;

define C-function mailimap-astring-free
  input parameter astring_ :: <C-string>;
  c-name: "mailimap_astring_free";
end;

define C-function mailimap-atom-free
  input parameter atom_ :: <C-string>;
  c-name: "mailimap_atom_free";
end;

define C-function mailimap-auth-type-free
  input parameter auth-type_ :: <C-string>;
  c-name: "mailimap_auth_type_free";
end;

define C-function mailimap-base64-free
  input parameter base64_ :: <C-string>;
  c-name: "mailimap_base64_free";
end;

define C-function mailimap-body-fld-desc-free
  input parameter body-fld-desc_ :: <C-string>;
  c-name: "mailimap_body_fld_desc_free";
end;

define C-function mailimap-body-fld-id-free
  input parameter body-fld-id_ :: <C-string>;
  c-name: "mailimap_body_fld_id_free";
end;

define C-function mailimap-body-fld-md5-free
  input parameter body-fld-md5_ :: <C-string>;
  c-name: "mailimap_body_fld_md5_free";
end;

define C-function mailimap-body-fld-loc-free
  input parameter body-fld-loc_ :: <C-string>;
  c-name: "mailimap_body_fld_loc_free";
end;

define C-function mailimap-env-date-free
  input parameter date_ :: <C-string>;
  c-name: "mailimap_env_date_free";
end;

define C-function mailimap-env-in-reply-to-free
  input parameter in-reply-to_ :: <C-string>;
  c-name: "mailimap_env_in_reply_to_free";
end;

define C-function mailimap-env-message-id-free
  input parameter message-id_ :: <C-string>;
  c-name: "mailimap_env_message_id_free";
end;

define C-function mailimap-env-subject-free
  input parameter subject_ :: <C-string>;
  c-name: "mailimap_env_subject_free";
end;

define C-function mailimap-flag-extension-free
  input parameter flag-extension_ :: <C-string>;
  c-name: "mailimap_flag_extension_free";
end;

define C-function mailimap-flag-keyword-free
  input parameter flag-keyword_ :: <C-string>;
  c-name: "mailimap_flag_keyword_free";
end;

define C-function mailimap-header-fld-name-free
  input parameter header-fld-name_ :: <C-string>;
  c-name: "mailimap_header_fld_name_free";
end;

define C-function mailimap-literal-free
  input parameter literal_ :: <C-string>;
  c-name: "mailimap_literal_free";
end;

define C-function mailimap-mailbox-free
  input parameter mailbox_ :: <C-string>;
  c-name: "mailimap_mailbox_free";
end;

define C-function mailimap-mailbox-data-search-free
  input parameter data-search_ :: <clist*>;
  c-name: "mailimap_mailbox_data_search_free";
end;

define C-function mailimap-media-subtype-free
  input parameter media-subtype_ :: <C-string>;
  c-name: "mailimap_media_subtype_free";
end;

define C-function mailimap-media-text-free
  input parameter media-text_ :: <C-string>;
  c-name: "mailimap_media_text_free";
end;

define C-function mailimap-msg-att-envelope-free
  input parameter env_ :: <mailimap-envelope*>;
  c-name: "mailimap_msg_att_envelope_free";
end;

define C-function mailimap-msg-att-internaldate-free
  input parameter date-time_ :: <mailimap-date-time*>;
  c-name: "mailimap_msg_att_internaldate_free";
end;

define C-function mailimap-msg-att-rfc822-free
  input parameter str_ :: <C-string>;
  c-name: "mailimap_msg_att_rfc822_free";
end;

define C-function mailimap-msg-att-rfc822-header-free
  input parameter str_ :: <C-string>;
  c-name: "mailimap_msg_att_rfc822_header_free";
end;

define C-function mailimap-msg-att-rfc822-text-free
  input parameter str_ :: <C-string>;
  c-name: "mailimap_msg_att_rfc822_text_free";
end;

define C-function mailimap-msg-att-body-free
  input parameter body_ :: <mailimap-body*>;
  c-name: "mailimap_msg_att_body_free";
end;

define C-function mailimap-msg-att-bodystructure-free
  input parameter body_ :: <mailimap-body*>;
  c-name: "mailimap_msg_att_bodystructure_free";
end;

define C-function mailimap-nstring-free
  input parameter str_ :: <C-string>;
  c-name: "mailimap_nstring_free";
end;

define C-function mailimap-string-free
  input parameter str_ :: <C-string>;
  c-name: "mailimap_string_free";
end;

define C-function mailimap-tag-free
  input parameter tag_ :: <C-string>;
  c-name: "mailimap_tag_free";
end;

define C-function mailimap-text-free
  input parameter text_ :: <C-string>;
  c-name: "mailimap_text_free";
end;

define constant $MAILIMAP-STATE-DISCONNECTED = 0;
define constant $MAILIMAP-STATE-NON-AUTHENTICATED = 1;
define constant $MAILIMAP-STATE-AUTHENTICATED = 2;
define constant $MAILIMAP-STATE-SELECTED = 3;
define constant $MAILIMAP-STATE-LOGOUT = 4;

define C-function mailimap-connection-info-new
  result res :: <mailimap-connection-info*>;
  c-name: "mailimap_connection_info_new";
end;

define C-function mailimap-connection-info-free
  input parameter conn-info_ :: <mailimap-connection-info*>;
  c-name: "mailimap_connection_info_free";
end;

define constant $MAILIMAP-MAILBOX-READONLY = 0;
define constant $MAILIMAP-MAILBOX-READWRITE = 1;

define C-function mailimap-selection-info-new
  result res :: <mailimap-selection-info*>;
  c-name: "mailimap_selection_info_new";
end;

define C-function mailimap-selection-info-free
  input parameter sel-info_ :: <mailimap-selection-info*>;
  c-name: "mailimap_selection_info_free";
end;

define C-function mailimap-response-info-new
  result res :: <mailimap-response-info*>;
  c-name: "mailimap_response_info_new";
end;

define C-function mailimap-response-info-free
  input parameter resp-info_ :: <mailimap-response-info*>;
  c-name: "mailimap_response_info_free";
end;

define constant $MAILIMAP-NO-ERROR = 0;
define constant $MAILIMAP-NO-ERROR-AUTHENTICATED = 1;
define constant $MAILIMAP-NO-ERROR-NON-AUTHENTICATED = 2;
define constant $MAILIMAP-ERROR-BAD-STATE = 3;
define constant $MAILIMAP-ERROR-STREAM = 4;
define constant $MAILIMAP-ERROR-PARSE = 5;
define constant $MAILIMAP-ERROR-CONNECTION-REFUSED = 6;
define constant $MAILIMAP-ERROR-MEMORY = 7;
define constant $MAILIMAP-ERROR-FATAL = 8;
define constant $MAILIMAP-ERROR-PROTOCOL = 9;
define constant $MAILIMAP-ERROR-DONT-ACCEPT-CONNECTION = 10;
define constant $MAILIMAP-ERROR-APPEND = 11;
define constant $MAILIMAP-ERROR-NOOP = 12;
define constant $MAILIMAP-ERROR-LOGOUT = 13;
define constant $MAILIMAP-ERROR-CAPABILITY = 14;
define constant $MAILIMAP-ERROR-CHECK = 15;
define constant $MAILIMAP-ERROR-CLOSE = 16;
define constant $MAILIMAP-ERROR-EXPUNGE = 17;
define constant $MAILIMAP-ERROR-COPY = 18;
define constant $MAILIMAP-ERROR-UID-COPY = 19;
define constant $MAILIMAP-ERROR-CREATE = 20;
define constant $MAILIMAP-ERROR-DELETE = 21;
define constant $MAILIMAP-ERROR-EXAMINE = 22;
define constant $MAILIMAP-ERROR-FETCH = 23;
define constant $MAILIMAP-ERROR-UID-FETCH = 24;
define constant $MAILIMAP-ERROR-LIST = 25;
define constant $MAILIMAP-ERROR-LOGIN = 26;
define constant $MAILIMAP-ERROR-LSUB = 27;
define constant $MAILIMAP-ERROR-RENAME = 28;
define constant $MAILIMAP-ERROR-SEARCH = 29;
define constant $MAILIMAP-ERROR-UID-SEARCH = 30;
define constant $MAILIMAP-ERROR-SELECT = 31;
define constant $MAILIMAP-ERROR-STATUS = 32;
define constant $MAILIMAP-ERROR-STORE = 33;
define constant $MAILIMAP-ERROR-UID-STORE = 34;
define constant $MAILIMAP-ERROR-SUBSCRIBE = 35;
define constant $MAILIMAP-ERROR-UNSUBSCRIBE = 36;
define constant $MAILIMAP-ERROR-STARTTLS = 37;
define constant $MAILIMAP-ERROR-INVAL = 38;
define constant $MAILIMAP-ERROR-EXTENSION = 39;
define constant $MAILIMAP-ERROR-SASL = 40;
define constant $MAILIMAP-ERROR-SSL = 41;
define constant $MAILIMAP-ERROR-NEEDS-MORE-DATA = 42;

define C-function mailimap-set-item-new-single
  input parameter indx_ :: <uint32-t>;
  result res :: <mailimap-set-item*>;
  c-name: "mailimap_set_item_new_single";
end;

define C-function mailimap-set-new-single-item
  input parameter item_ :: <mailimap-set-item*>;
  result res :: <mailimap-set*>;
  c-name: "mailimap_set_new_single_item";
end;

define C-function mailimap-set-new-interval
  input parameter first_ :: <uint32-t>;
  input parameter last_ :: <uint32-t>;
  result res :: <mailimap-set*>;
  c-name: "mailimap_set_new_interval";
end;

define C-function mailimap-set-new-single
  input parameter indx_ :: <uint32-t>;
  result res :: <mailimap-set*>;
  c-name: "mailimap_set_new_single";
end;

define C-function mailimap-set-new-empty
  result res :: <mailimap-set*>;
  c-name: "mailimap_set_new_empty";
end;

define C-function mailimap-set-add
  input parameter set_ :: <mailimap-set*>;
  input parameter set-item_ :: <mailimap-set-item*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_set_add";
end;

define C-function mailimap-set-add-interval
  input parameter set_ :: <mailimap-set*>;
  input parameter first_ :: <uint32-t>;
  input parameter last_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_set_add_interval";
end;

define C-function mailimap-set-add-single
  input parameter set_ :: <mailimap-set*>;
  input parameter indx_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailimap_set_add_single";
end;

define C-function mailimap-section-new-header
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_header";
end;

define C-function mailimap-section-new-header-fields
  input parameter header-list_ :: <mailimap-header-list*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_header_fields";
end;

define C-function mailimap-section-new-header-fields-not
  input parameter header-list_ :: <mailimap-header-list*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_header_fields_not";
end;

define C-function mailimap-section-new-text
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_text";
end;

define C-function mailimap-section-new-part
  input parameter part_ :: <mailimap-section-part*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part";
end;

define C-function mailimap-section-new-part-mime
  input parameter part_ :: <mailimap-section-part*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part_mime";
end;

define C-function mailimap-section-new-part-header
  input parameter part_ :: <mailimap-section-part*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part_header";
end;

define C-function mailimap-section-new-part-header-fields
  input parameter part_ :: <mailimap-section-part*>;
  input parameter header-list_ :: <mailimap-header-list*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part_header_fields";
end;

define C-function mailimap-section-new-part-header-fields-not
  input parameter part_ :: <mailimap-section-part*>;
  input parameter header-list_ :: <mailimap-header-list*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part_header_fields_not";
end;

define C-function mailimap-section-new-part-text
  input parameter part_ :: <mailimap-section-part*>;
  result res :: <mailimap-section*>;
  c-name: "mailimap_section_new_part_text";
end;

define C-function mailimap-fetch-att-new-envelope
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_envelope";
end;

define C-function mailimap-fetch-att-new-flags
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_flags";
end;

define C-function mailimap-fetch-att-new-internaldate
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_internaldate";
end;

define C-function mailimap-fetch-att-new-rfc822
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_rfc822";
end;

define C-function mailimap-fetch-att-new-rfc822-header
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_rfc822_header";
end;

define C-function mailimap-fetch-att-new-rfc822-size
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_rfc822_size";
end;

define C-function mailimap-fetch-att-new-rfc822-text
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_rfc822_text";
end;

define C-function mailimap-fetch-att-new-body
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_body";
end;

define C-function mailimap-fetch-att-new-bodystructure
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_bodystructure";
end;

define C-function mailimap-fetch-att-new-uid
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_uid";
end;

define C-function mailimap-fetch-att-new-body-section
  input parameter section_ :: <mailimap-section*>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_body_section";
end;

define C-function mailimap-fetch-att-new-body-peek-section
  input parameter section_ :: <mailimap-section*>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_body_peek_section";
end;

define C-function mailimap-fetch-att-new-body-section-partial
  input parameter section_ :: <mailimap-section*>;
  input parameter offset_ :: <uint32-t>;
  input parameter size_ :: <uint32-t>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_body_section_partial";
end;

define C-function mailimap-fetch-att-new-body-peek-section-partial
  input parameter section_ :: <mailimap-section*>;
  input parameter offset_ :: <uint32-t>;
  input parameter size_ :: <uint32-t>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_body_peek_section_partial";
end;

define C-function mailimap-fetch-att-new-extension
  input parameter ext-keyword_ :: <C-string>;
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_extension";
end;

define C-function mailimap-fetch-type-new-all
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_all";
end;

define C-function mailimap-fetch-type-new-full
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_full";
end;

define C-function mailimap-fetch-type-new-fast
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_fast";
end;

define C-function mailimap-fetch-type-new-fetch-att
  input parameter fetch-att_ :: <mailimap-fetch-att*>;
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_fetch_att";
end;

define C-function mailimap-fetch-type-new-fetch-att-list
  input parameter fetch-att-list_ :: <clist*>;
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_fetch_att_list";
end;

define C-function mailimap-fetch-type-new-fetch-att-list-empty
  result res :: <mailimap-fetch-type*>;
  c-name: "mailimap_fetch_type_new_fetch_att_list_empty";
end;

define C-function mailimap-fetch-type-new-fetch-att-list-add
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter fetch-att_ :: <mailimap-fetch-att*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_type_new_fetch_att_list_add";
end;

define C-function mailimap-store-att-flags-new-set-flags
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_set_flags";
end;

define C-function mailimap-store-att-flags-new-set-flags-silent
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_set_flags_silent";
end;

define C-function mailimap-store-att-flags-new-add-flags
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_add_flags";
end;

define C-function mailimap-store-att-flags-new-add-flags-silent
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_add_flags_silent";
end;

define C-function mailimap-store-att-flags-new-remove-flags
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_remove_flags";
end;

define C-function mailimap-store-att-flags-new-remove-flags-silent
  input parameter flags_ :: <mailimap-flag-list*>;
  result res :: <mailimap-store-att-flags*>;
  c-name: "mailimap_store_att_flags_new_remove_flags_silent";
end;

define C-function mailimap-search-key-new-all
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_all";
end;

define C-function mailimap-search-key-new-bcc
  input parameter sk-bcc_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_bcc";
end;

define C-function mailimap-search-key-new-before
  input parameter sk-before_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_before";
end;

define C-function mailimap-search-key-new-body
  input parameter sk-body_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_body";
end;

define C-function mailimap-search-key-new-cc
  input parameter sk-cc_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_cc";
end;

define C-function mailimap-search-key-new-from
  input parameter sk-from_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_from";
end;

define C-function mailimap-search-key-new-keyword
  input parameter sk-keyword_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_keyword";
end;

define C-function mailimap-search-key-new-on
  input parameter sk-on_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_on";
end;

define C-function mailimap-search-key-new-since
  input parameter sk-since_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_since";
end;

define C-function mailimap-search-key-new-subject
  input parameter sk-subject_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_subject";
end;

define C-function mailimap-search-key-new-text
  input parameter sk-text_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_text";
end;

define C-function mailimap-search-key-new-to
  input parameter sk-to_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_to";
end;

define C-function mailimap-search-key-new-unkeyword
  input parameter sk-unkeyword_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_unkeyword";
end;

define C-function mailimap-search-key-new-header
  input parameter sk-header-name_ :: <C-string>;
  input parameter sk-header-value_ :: <C-string>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_header";
end;

define C-function mailimap-search-key-new-larger
  input parameter sk-larger_ :: <uint32-t>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_larger";
end;

define C-function mailimap-search-key-new-not
  input parameter sk-not_ :: <mailimap-search-key*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_not";
end;

define C-function mailimap-search-key-new-or
  input parameter sk-or1_ :: <mailimap-search-key*>;
  input parameter sk-or2_ :: <mailimap-search-key*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_or";
end;

define C-function mailimap-search-key-new-sentbefore
  input parameter sk-sentbefore_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_sentbefore";
end;

define C-function mailimap-search-key-new-senton
  input parameter sk-senton_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_senton";
end;

define C-function mailimap-search-key-new-sentsince
  input parameter sk-sentsince_ :: <mailimap-date*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_sentsince";
end;

define C-function mailimap-search-key-new-smaller
  input parameter sk-smaller_ :: <uint32-t>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_smaller";
end;

define C-function mailimap-search-key-new-uid
  input parameter sk-uid_ :: <mailimap-set*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_uid";
end;

define C-function mailimap-search-key-new-set
  input parameter sk-set_ :: <mailimap-set*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_set";
end;

define C-function mailimap-search-key-new-multiple
  input parameter sk-multiple_ :: <clist*>;
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_multiple";
end;

define C-function mailimap-search-key-new-multiple-empty
  result res :: <mailimap-search-key*>;
  c-name: "mailimap_search_key_new_multiple_empty";
end;

define C-function mailimap-search-key-multiple-add
  input parameter keys_ :: <mailimap-search-key*>;
  input parameter key-item_ :: <mailimap-search-key*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_search_key_multiple_add";
end;

define C-function mailimap-sort-key-new-arrival
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_arrival";
end;

define C-function mailimap-sort-key-new-cc
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_cc";
end;

define C-function mailimap-sort-key-new-date
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_date";
end;

define C-function mailimap-sort-key-new-from
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_from";
end;

define C-function mailimap-sort-key-new-size
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_size";
end;

define C-function mailimap-sort-key-new-subject
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_subject";
end;

define C-function mailimap-sort-key-new-to
  input parameter is-reverse_ :: <C-signed-int>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_to";
end;

define C-function mailimap-sort-key-new-multiple
  input parameter keys_ :: <clist*>;
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_multiple";
end;

define C-function mailimap-sort-key-new-multiple-empty
  result res :: <mailimap-sort-key*>;
  c-name: "mailimap_sort_key_new_multiple_empty";
end;

define C-function mailimap-sort-key-multiple-add
  input parameter keys_ :: <mailimap-sort-key*>;
  input parameter key-item_ :: <mailimap-sort-key*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_sort_key_multiple_add";
end;

define C-function mailimap-flag-list-new-empty
  result res :: <mailimap-flag-list*>;
  c-name: "mailimap_flag_list_new_empty";
end;

define C-function mailimap-flag-list-add
  input parameter flag-list_ :: <mailimap-flag-list*>;
  input parameter f_ :: <mailimap-flag*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_flag_list_add";
end;

define C-function mailimap-flag-new-answered
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_answered";
end;

define C-function mailimap-flag-new-flagged
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_flagged";
end;

define C-function mailimap-flag-new-deleted
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_deleted";
end;

define C-function mailimap-flag-new-seen
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_seen";
end;

define C-function mailimap-flag-new-draft
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_draft";
end;

define C-function mailimap-flag-new-flag-keyword
  input parameter flag-keyword_ :: <C-string>;
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_flag_keyword";
end;

define C-function mailimap-flag-new-flag-extension
  input parameter flag-extension_ :: <C-string>;
  result res :: <mailimap-flag*>;
  c-name: "mailimap_flag_new_flag_extension";
end;

define C-function mailimap-status-att-list-new-empty
  result res :: <mailimap-status-att-list*>;
  c-name: "mailimap_status_att_list_new_empty";
end;

define C-function mailimap-status-att-list-add
  input parameter sa-list_ :: <mailimap-status-att-list*>;
  input parameter status-att_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailimap_status_att_list_add";
end;

define C-pointer-type <mailimap-section-part**> => <mailimap-section-part*>;
define C-function mailimap-get-section-part-from-body
  input parameter root-part_ :: <mailimap-body*>;
  input parameter part_ :: <mailimap-body*>;
  input parameter result_ :: <mailimap-section-part**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_get_section_part_from_body";
end;

define C-struct <mailimf-body>
  slot mailimf_body$bd-text :: <C-string>;
  slot mailimf_body$bd-size :: <C-unsigned-long>;
end;

define C-pointer-type <mailimf-body*> => <mailimf-body>;
define C-struct <mailimf-message>
  slot mailimf_message$msg-fields :: <mailimf-fields*>;
  slot mailimf_message$msg-body :: <mailimf-body*>;
end;

define C-pointer-type <mailimf-message*> => <mailimf-message>;
define C-pointer-type <mailimf-message**> => <mailimf-message*>;
define C-function mailimf-message-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-message**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_message_parse";
end;

define C-pointer-type <mailimf-body**> => <mailimf-body*>;
define C-function mailimf-body-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-body**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_body_parse";
end;

define C-function mailimf-fields-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_parse";
end;

define C-pointer-type <mailimf-mailbox-list**> => <mailimf-mailbox-list*>;
define C-function mailimf-mailbox-list-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-mailbox-list**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_parse";
end;

define C-pointer-type <mailimf-address-list**> => <mailimf-address-list*>;
define C-function mailimf-address-list-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-address-list**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_parse";
end;

define C-struct <mailimf-group>
  slot mailimf_group$grp-display-name :: <C-string>;
  slot mailimf_group$grp-mb-list :: <mailimf-mailbox-list*>;
end;

define C-pointer-type <mailimf-group*> => <mailimf-group>;
define C-union <anonymous-569>
  slot anonymous-569$ad-mailbox :: <mailimf-mailbox*>;
  slot anonymous-569$ad-group :: <mailimf-group*>;
end;

define C-struct <mailimf-address>
  slot mailimf_address$ad-type :: <C-signed-int>;
  slot mailimf_address$ad-data :: <anonymous-569>;
end;

define C-pointer-type <mailimf-address*> => <mailimf-address>;
define C-pointer-type <mailimf-address**> => <mailimf-address*>;
define C-function mailimf-address-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-address**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_parse";
end;

define C-pointer-type <mailimf-mailbox**> => <mailimf-mailbox*>;
define C-function mailimf-mailbox-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-mailbox**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_parse";
end;

define C-pointer-type <mailimf-date-time**> => <mailimf-date-time*>;
define C-function mailimf-date-time-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-date-time**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_date_time_parse";
end;

define C-function mailimf-envelope-fields-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_fields_parse";
end;

define C-function mailimf-ignore-field-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_ignore_field_parse";
end;

define C-function mailimf-envelope-and-optional-fields-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_and_optional_fields_parse";
end;

define C-function mailimf-optional-fields-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_optional_fields_parse";
end;

define C-function mailimf-fws-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fws_parse";
end;

define C-function mailimf-cfws-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_cfws_parse";
end;

define C-function mailimf-char-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter token_ :: <C-signed-char>;
  result res :: <C-signed-int>;
  c-name: "mailimf_char_parse";
end;

define C-function mailimf-unstrict-char-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter token_ :: <C-signed-char>;
  result res :: <C-signed-int>;
  c-name: "mailimf_unstrict_char_parse";
end;

define C-function mailimf-crlf-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_crlf_parse";
end;

define constant <is-custom-char> = <C-function-pointer>;
define C-function mailimf-custom-string-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  input parameter is-custom-char_ :: <is-custom-char>;
  result res :: <C-signed-int>;
  c-name: "mailimf_custom_string_parse";
end;

define C-function mailimf-token-case-insensitive-len-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter token_ :: <C-string>;
  input parameter token-length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_token_case_insensitive_len_parse";
end;

define C-function mailimf-quoted-string-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_quoted_string_parse";
end;

define C-function mailimf-number-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_number_parse";
end;

define C-function mailimf-msg-id-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_msg_id_parse";
end;

define C-function mailimf-msg-id-list-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_msg_id_list_parse";
end;

define C-function mailimf-word-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_word_parse";
end;

define C-function mailimf-atom-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_atom_parse";
end;

define C-function mailimf-fws-atom-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fws_atom_parse";
end;

define C-function mailimf-fws-word-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fws_word_parse";
end;

define C-function mailimf-fws-quoted-string-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fws_quoted_string_parse";
end;

define C-pointer-type <mailimf-references**> => <mailimf-references*>;
define C-function mailimf-references-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailimf-references**>;
  result res :: <C-signed-int>;
  c-name: "mailimf_references_parse";
end;

define C-function mailimf-date-time-new
  input parameter dt-day_ :: <C-signed-int>;
  input parameter dt-month_ :: <C-signed-int>;
  input parameter dt-year_ :: <C-signed-int>;
  input parameter dt-hour_ :: <C-signed-int>;
  input parameter dt-min_ :: <C-signed-int>;
  input parameter dt-sec_ :: <C-signed-int>;
  input parameter dt-zone_ :: <C-signed-int>;
  result res :: <mailimf-date-time*>;
  c-name: "mailimf_date_time_new";
end;

define C-function mailimf-date-time-free
  input parameter date-time_ :: <mailimf-date-time*>;
  c-name: "mailimf_date_time_free";
end;

define constant $MAILIMF-ADDRESS-ERROR = 0;
define constant $MAILIMF-ADDRESS-MAILBOX = 1;
define constant $MAILIMF-ADDRESS-GROUP = 2;

define C-function mailimf-address-new
  input parameter ad-type_ :: <C-signed-int>;
  input parameter ad-mailbox_ :: <mailimf-mailbox*>;
  input parameter ad-group_ :: <mailimf-group*>;
  result res :: <mailimf-address*>;
  c-name: "mailimf_address_new";
end;

define C-function mailimf-address-free
  input parameter address_ :: <mailimf-address*>;
  c-name: "mailimf_address_free";
end;

define C-function mailimf-mailbox-new
  input parameter mb-display-name_ :: <C-string>;
  input parameter mb-addr-spec_ :: <C-string>;
  result res :: <mailimf-mailbox*>;
  c-name: "mailimf_mailbox_new";
end;

define C-function mailimf-mailbox-free
  input parameter mailbox_ :: <mailimf-mailbox*>;
  c-name: "mailimf_mailbox_free";
end;

define C-function mailimf-group-new
  input parameter grp-display-name_ :: <C-string>;
  input parameter grp-mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <mailimf-group*>;
  c-name: "mailimf_group_new";
end;

define C-function mailimf-group-free
  input parameter group_ :: <mailimf-group*>;
  c-name: "mailimf_group_free";
end;

define C-function mailimf-mailbox-list-new
  input parameter mb-list_ :: <clist*>;
  result res :: <mailimf-mailbox-list*>;
  c-name: "mailimf_mailbox_list_new";
end;

define C-function mailimf-mailbox-list-free
  input parameter mb-list_ :: <mailimf-mailbox-list*>;
  c-name: "mailimf_mailbox_list_free";
end;

define C-function mailimf-address-list-new
  input parameter ad-list_ :: <clist*>;
  result res :: <mailimf-address-list*>;
  c-name: "mailimf_address_list_new";
end;

define C-function mailimf-address-list-free
  input parameter addr-list_ :: <mailimf-address-list*>;
  c-name: "mailimf_address_list_free";
end;

define C-function mailimf-body-new
  input parameter bd-text_ :: <C-string>;
  input parameter bd-size_ :: <size-t>;
  result res :: <mailimf-body*>;
  c-name: "mailimf_body_new";
end;

define C-function mailimf-body-free
  input parameter body_ :: <mailimf-body*>;
  c-name: "mailimf_body_free";
end;

define C-function mailimf-message-new
  input parameter msg-fields_ :: <mailimf-fields*>;
  input parameter msg-body_ :: <mailimf-body*>;
  result res :: <mailimf-message*>;
  c-name: "mailimf_message_new";
end;

define C-function mailimf-message-free
  input parameter message_ :: <mailimf-message*>;
  c-name: "mailimf_message_free";
end;

define C-function mailimf-fields-new
  input parameter fld-list_ :: <clist*>;
  result res :: <mailimf-fields*>;
  c-name: "mailimf_fields_new";
end;

define C-function mailimf-fields-free
  input parameter fields_ :: <mailimf-fields*>;
  c-name: "mailimf_fields_free";
end;

define constant $MAILIMF-FIELD-NONE = 0;
define constant $MAILIMF-FIELD-RETURN-PATH = 1;
define constant $MAILIMF-FIELD-RESENT-DATE = 2;
define constant $MAILIMF-FIELD-RESENT-FROM = 3;
define constant $MAILIMF-FIELD-RESENT-SENDER = 4;
define constant $MAILIMF-FIELD-RESENT-TO = 5;
define constant $MAILIMF-FIELD-RESENT-CC = 6;
define constant $MAILIMF-FIELD-RESENT-BCC = 7;
define constant $MAILIMF-FIELD-RESENT-MSG-ID = 8;
define constant $MAILIMF-FIELD-ORIG-DATE = 9;
define constant $MAILIMF-FIELD-FROM = 10;
define constant $MAILIMF-FIELD-SENDER = 11;
define constant $MAILIMF-FIELD-REPLY-TO = 12;
define constant $MAILIMF-FIELD-TO = 13;
define constant $MAILIMF-FIELD-CC = 14;
define constant $MAILIMF-FIELD-BCC = 15;
define constant $MAILIMF-FIELD-MESSAGE-ID = 16;
define constant $MAILIMF-FIELD-IN-REPLY-TO = 17;
define constant $MAILIMF-FIELD-REFERENCES = 18;
define constant $MAILIMF-FIELD-SUBJECT = 19;
define constant $MAILIMF-FIELD-COMMENTS = 20;
define constant $MAILIMF-FIELD-KEYWORDS = 21;
define constant $MAILIMF-FIELD-OPTIONAL-FIELD = 22;

define C-struct <mailimf-path>
  slot mailimf_path$pt-addr-spec :: <C-string>;
end;

define C-pointer-type <mailimf-path*> => <mailimf-path>;
define C-struct <mailimf-return>
  slot mailimf_return$ret-path :: <mailimf-path*>;
end;

define C-struct <mailimf-optional-field>
  slot mailimf_optional_field$fld-name :: <C-string>;
  slot mailimf_optional_field$fld-value :: <C-string>;
end;

define C-pointer-type <mailimf-return*> => <mailimf-return>;
define C-pointer-type <mailimf-optional-field*> => <mailimf-optional-field>;
define C-union <anonymous-587>
  slot anonymous-587$fld-return-path :: <mailimf-return*>;
  slot anonymous-587$fld-resent-date :: <mailimf-orig-date*>;
  slot anonymous-587$fld-resent-from :: <mailimf-from*>;
  slot anonymous-587$fld-resent-sender :: <mailimf-sender*>;
  slot anonymous-587$fld-resent-to :: <mailimf-to*>;
  slot anonymous-587$fld-resent-cc :: <mailimf-cc*>;
  slot anonymous-587$fld-resent-bcc :: <mailimf-bcc*>;
  slot anonymous-587$fld-resent-msg-id :: <mailimf-message-id*>;
  slot anonymous-587$fld-orig-date :: <mailimf-orig-date*>;
  slot anonymous-587$fld-from :: <mailimf-from*>;
  slot anonymous-587$fld-sender :: <mailimf-sender*>;
  slot anonymous-587$fld-reply-to :: <mailimf-reply-to*>;
  slot anonymous-587$fld-to :: <mailimf-to*>;
  slot anonymous-587$fld-cc :: <mailimf-cc*>;
  slot anonymous-587$fld-bcc :: <mailimf-bcc*>;
  slot anonymous-587$fld-message-id :: <mailimf-message-id*>;
  slot anonymous-587$fld-in-reply-to :: <mailimf-in-reply-to*>;
  slot anonymous-587$fld-references :: <mailimf-references*>;
  slot anonymous-587$fld-subject :: <mailimf-subject*>;
  slot anonymous-587$fld-comments :: <mailimf-comments*>;
  slot anonymous-587$fld-keywords :: <mailimf-keywords*>;
  slot anonymous-587$fld-optional-field :: <mailimf-optional-field*>;
end;

define C-struct <mailimf-field>
  slot mailimf_field$fld-type :: <C-signed-int>;
  slot mailimf_field$fld-data :: <anonymous-587>;
end;

define C-pointer-type <mailimf-field*> => <mailimf-field>;
define C-function mailimf-field-new
  input parameter fld-type_ :: <C-signed-int>;
  input parameter fld-return-path_ :: <mailimf-return*>;
  input parameter fld-resent-date_ :: <mailimf-orig-date*>;
  input parameter fld-resent-from_ :: <mailimf-from*>;
  input parameter fld-resent-sender_ :: <mailimf-sender*>;
  input parameter fld-resent-to_ :: <mailimf-to*>;
  input parameter fld-resent-cc_ :: <mailimf-cc*>;
  input parameter fld-resent-bcc_ :: <mailimf-bcc*>;
  input parameter fld-resent-msg-id_ :: <mailimf-message-id*>;
  input parameter fld-orig-date_ :: <mailimf-orig-date*>;
  input parameter fld-from_ :: <mailimf-from*>;
  input parameter fld-sender_ :: <mailimf-sender*>;
  input parameter fld-reply-to_ :: <mailimf-reply-to*>;
  input parameter fld-to_ :: <mailimf-to*>;
  input parameter fld-cc_ :: <mailimf-cc*>;
  input parameter fld-bcc_ :: <mailimf-bcc*>;
  input parameter fld-message-id_ :: <mailimf-message-id*>;
  input parameter fld-in-reply-to_ :: <mailimf-in-reply-to*>;
  input parameter fld-references_ :: <mailimf-references*>;
  input parameter fld-subject_ :: <mailimf-subject*>;
  input parameter fld-comments_ :: <mailimf-comments*>;
  input parameter fld-keywords_ :: <mailimf-keywords*>;
  input parameter fld-optional-field_ :: <mailimf-optional-field*>;
  result res :: <mailimf-field*>;
  c-name: "mailimf_field_new";
end;

define C-function mailimf-field-free
  input parameter field_ :: <mailimf-field*>;
  c-name: "mailimf_field_free";
end;

define C-function mailimf-orig-date-new
  input parameter dt-date-time_ :: <mailimf-date-time*>;
  result res :: <mailimf-orig-date*>;
  c-name: "mailimf_orig_date_new";
end;

define C-function mailimf-orig-date-free
  input parameter orig-date_ :: <mailimf-orig-date*>;
  c-name: "mailimf_orig_date_free";
end;

define C-function mailimf-from-new
  input parameter frm-mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <mailimf-from*>;
  c-name: "mailimf_from_new";
end;

define C-function mailimf-from-free
  input parameter from_ :: <mailimf-from*>;
  c-name: "mailimf_from_free";
end;

define C-function mailimf-sender-new
  input parameter snd-mb_ :: <mailimf-mailbox*>;
  result res :: <mailimf-sender*>;
  c-name: "mailimf_sender_new";
end;

define C-function mailimf-sender-free
  input parameter sender_ :: <mailimf-sender*>;
  c-name: "mailimf_sender_free";
end;

define C-function mailimf-reply-to-new
  input parameter rt-addr-list_ :: <mailimf-address-list*>;
  result res :: <mailimf-reply-to*>;
  c-name: "mailimf_reply_to_new";
end;

define C-function mailimf-reply-to-free
  input parameter reply-to_ :: <mailimf-reply-to*>;
  c-name: "mailimf_reply_to_free";
end;

define C-function mailimf-to-new
  input parameter to-addr-list_ :: <mailimf-address-list*>;
  result res :: <mailimf-to*>;
  c-name: "mailimf_to_new";
end;

define C-function mailimf-to-free
  input parameter to_ :: <mailimf-to*>;
  c-name: "mailimf_to_free";
end;

define C-function mailimf-cc-new
  input parameter cc-addr-list_ :: <mailimf-address-list*>;
  result res :: <mailimf-cc*>;
  c-name: "mailimf_cc_new";
end;

define C-function mailimf-cc-free
  input parameter cc_ :: <mailimf-cc*>;
  c-name: "mailimf_cc_free";
end;

define C-function mailimf-bcc-new
  input parameter bcc-addr-list_ :: <mailimf-address-list*>;
  result res :: <mailimf-bcc*>;
  c-name: "mailimf_bcc_new";
end;

define C-function mailimf-bcc-free
  input parameter bcc_ :: <mailimf-bcc*>;
  c-name: "mailimf_bcc_free";
end;

define C-function mailimf-message-id-new
  input parameter mid-value_ :: <C-string>;
  result res :: <mailimf-message-id*>;
  c-name: "mailimf_message_id_new";
end;

define C-function mailimf-message-id-free
  input parameter message-id_ :: <mailimf-message-id*>;
  c-name: "mailimf_message_id_free";
end;

define C-function mailimf-in-reply-to-new
  input parameter mid-list_ :: <clist*>;
  result res :: <mailimf-in-reply-to*>;
  c-name: "mailimf_in_reply_to_new";
end;

define C-function mailimf-in-reply-to-free
  input parameter in-reply-to_ :: <mailimf-in-reply-to*>;
  c-name: "mailimf_in_reply_to_free";
end;

define C-function mailimf-references-new
  input parameter mid-list_ :: <clist*>;
  result res :: <mailimf-references*>;
  c-name: "mailimf_references_new";
end;

define C-function mailimf-references-free
  input parameter references_ :: <mailimf-references*>;
  c-name: "mailimf_references_free";
end;

define C-function mailimf-subject-new
  input parameter sbj-value_ :: <C-string>;
  result res :: <mailimf-subject*>;
  c-name: "mailimf_subject_new";
end;

define C-function mailimf-subject-free
  input parameter subject_ :: <mailimf-subject*>;
  c-name: "mailimf_subject_free";
end;

define C-function mailimf-comments-new
  input parameter cm-value_ :: <C-string>;
  result res :: <mailimf-comments*>;
  c-name: "mailimf_comments_new";
end;

define C-function mailimf-comments-free
  input parameter comments_ :: <mailimf-comments*>;
  c-name: "mailimf_comments_free";
end;

define C-function mailimf-keywords-new
  input parameter kw-list_ :: <clist*>;
  result res :: <mailimf-keywords*>;
  c-name: "mailimf_keywords_new";
end;

define C-function mailimf-keywords-free
  input parameter keywords_ :: <mailimf-keywords*>;
  c-name: "mailimf_keywords_free";
end;

define C-function mailimf-return-new
  input parameter ret-path_ :: <mailimf-path*>;
  result res :: <mailimf-return*>;
  c-name: "mailimf_return_new";
end;

define C-function mailimf-return-free
  input parameter return-path_ :: <mailimf-return*>;
  c-name: "mailimf_return_free";
end;

define C-function mailimf-path-new
  input parameter pt-addr-spec_ :: <C-string>;
  result res :: <mailimf-path*>;
  c-name: "mailimf_path_new";
end;

define C-function mailimf-path-free
  input parameter path_ :: <mailimf-path*>;
  c-name: "mailimf_path_free";
end;

define C-function mailimf-optional-field-new
  input parameter fld-name_ :: <C-string>;
  input parameter fld-value_ :: <C-string>;
  result res :: <mailimf-optional-field*>;
  c-name: "mailimf_optional_field_new";
end;

define C-function mailimf-optional-field-free
  input parameter opt-field_ :: <mailimf-optional-field*>;
  c-name: "mailimf_optional_field_free";
end;

define C-function mailimf-atom-free
  input parameter atom_ :: <C-string>;
  c-name: "mailimf_atom_free";
end;

define C-function mailimf-dot-atom-free
  input parameter dot-atom_ :: <C-string>;
  c-name: "mailimf_dot_atom_free";
end;

define C-function mailimf-dot-atom-text-free
  input parameter dot-atom_ :: <C-string>;
  c-name: "mailimf_dot_atom_text_free";
end;

define C-function mailimf-quoted-string-free
  input parameter quoted-string_ :: <C-string>;
  c-name: "mailimf_quoted_string_free";
end;

define C-function mailimf-word-free
  input parameter word_ :: <C-string>;
  c-name: "mailimf_word_free";
end;

define C-function mailimf-phrase-free
  input parameter phrase_ :: <C-string>;
  c-name: "mailimf_phrase_free";
end;

define C-function mailimf-unstructured-free
  input parameter unstructured_ :: <C-string>;
  c-name: "mailimf_unstructured_free";
end;

define C-function mailimf-angle-addr-free
  input parameter angle-addr_ :: <C-string>;
  c-name: "mailimf_angle_addr_free";
end;

define C-function mailimf-display-name-free
  input parameter display-name_ :: <C-string>;
  c-name: "mailimf_display_name_free";
end;

define C-function mailimf-addr-spec-free
  input parameter addr-spec_ :: <C-string>;
  c-name: "mailimf_addr_spec_free";
end;

define C-function mailimf-local-part-free
  input parameter local-part_ :: <C-string>;
  c-name: "mailimf_local_part_free";
end;

define C-function mailimf-domain-free
  input parameter domain_ :: <C-string>;
  c-name: "mailimf_domain_free";
end;

define C-function mailimf-domain-literal-free
  input parameter domain_ :: <C-string>;
  c-name: "mailimf_domain_literal_free";
end;

define C-function mailimf-msg-id-free
  input parameter msg-id_ :: <C-string>;
  c-name: "mailimf_msg_id_free";
end;

define C-function mailimf-id-left-free
  input parameter id-left_ :: <C-string>;
  c-name: "mailimf_id_left_free";
end;

define C-function mailimf-id-right-free
  input parameter id-right_ :: <C-string>;
  c-name: "mailimf_id_right_free";
end;

define C-function mailimf-no-fold-quote-free
  input parameter nfq_ :: <C-string>;
  c-name: "mailimf_no_fold_quote_free";
end;

define C-function mailimf-no-fold-literal-free
  input parameter nfl_ :: <C-string>;
  c-name: "mailimf_no_fold_literal_free";
end;

define C-function mailimf-field-name-free
  input parameter field-name_ :: <C-string>;
  c-name: "mailimf_field_name_free";
end;

define constant $MAILIMF-NO-ERROR = 0;
define constant $MAILIMF-ERROR-PARSE = 1;
define constant $MAILIMF-ERROR-MEMORY = 2;
define constant $MAILIMF-ERROR-INVAL = 3;
define constant $MAILIMF-ERROR-FILE = 4;

define C-function mailimf-mailbox-list-new-empty
  result res :: <mailimf-mailbox-list*>;
  c-name: "mailimf_mailbox_list_new_empty";
end;

define C-function mailimf-mailbox-list-add
  input parameter mailbox-list_ :: <mailimf-mailbox-list*>;
  input parameter mb_ :: <mailimf-mailbox*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_add";
end;

define C-function mailimf-mailbox-list-add-parse
  input parameter mailbox-list_ :: <mailimf-mailbox-list*>;
  input parameter mb-str_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_add_parse";
end;

define C-function mailimf-mailbox-list-add-mb
  input parameter mailbox-list_ :: <mailimf-mailbox-list*>;
  input parameter display-name_ :: <C-string>;
  input parameter address_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_add_mb";
end;

define C-function mailimf-address-list-new-empty
  result res :: <mailimf-address-list*>;
  c-name: "mailimf_address_list_new_empty";
end;

define C-function mailimf-address-list-add
  input parameter address-list_ :: <mailimf-address-list*>;
  input parameter addr_ :: <mailimf-address*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_add";
end;

define C-function mailimf-address-list-add-parse
  input parameter address-list_ :: <mailimf-address-list*>;
  input parameter addr-str_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_add_parse";
end;

define C-function mailimf-address-list-add-mb
  input parameter address-list_ :: <mailimf-address-list*>;
  input parameter display-name_ :: <C-string>;
  input parameter address_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_add_mb";
end;

define C-function mailimf-resent-fields-add-data
  input parameter fields_ :: <mailimf-fields*>;
  input parameter resent-date_ :: <mailimf-date-time*>;
  input parameter resent-from_ :: <mailimf-mailbox-list*>;
  input parameter resent-sender_ :: <mailimf-mailbox*>;
  input parameter resent-to_ :: <mailimf-address-list*>;
  input parameter resent-cc_ :: <mailimf-address-list*>;
  input parameter resent-bcc_ :: <mailimf-address-list*>;
  input parameter resent-msg-id_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_resent_fields_add_data";
end;

define C-function mailimf-resent-fields-new-with-data-all
  input parameter resent-date_ :: <mailimf-date-time*>;
  input parameter resent-from_ :: <mailimf-mailbox-list*>;
  input parameter resent-sender_ :: <mailimf-mailbox*>;
  input parameter resent-to_ :: <mailimf-address-list*>;
  input parameter resent-cc_ :: <mailimf-address-list*>;
  input parameter resent-bcc_ :: <mailimf-address-list*>;
  input parameter resent-msg-id_ :: <C-string>;
  result res :: <mailimf-fields*>;
  c-name: "mailimf_resent_fields_new_with_data_all";
end;

define C-function mailimf-resent-fields-new-with-data
  input parameter from_ :: <mailimf-mailbox-list*>;
  input parameter sender_ :: <mailimf-mailbox*>;
  input parameter to_ :: <mailimf-address-list*>;
  input parameter cc_ :: <mailimf-address-list*>;
  input parameter bcc_ :: <mailimf-address-list*>;
  result res :: <mailimf-fields*>;
  c-name: "mailimf_resent_fields_new_with_data";
end;

define C-function mailimf-fields-new-empty
  result res :: <mailimf-fields*>;
  c-name: "mailimf_fields_new_empty";
end;

define C-function mailimf-fields-add
  input parameter fields_ :: <mailimf-fields*>;
  input parameter field_ :: <mailimf-field*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_add";
end;

define C-function mailimf-fields-add-data
  input parameter fields_ :: <mailimf-fields*>;
  input parameter date_ :: <mailimf-date-time*>;
  input parameter from_ :: <mailimf-mailbox-list*>;
  input parameter sender_ :: <mailimf-mailbox*>;
  input parameter reply-to_ :: <mailimf-address-list*>;
  input parameter to_ :: <mailimf-address-list*>;
  input parameter cc_ :: <mailimf-address-list*>;
  input parameter bcc_ :: <mailimf-address-list*>;
  input parameter msg-id_ :: <C-string>;
  input parameter in-reply-to_ :: <clist*>;
  input parameter references_ :: <clist*>;
  input parameter subject_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_add_data";
end;

define C-function mailimf-fields-new-with-data-all
  input parameter date_ :: <mailimf-date-time*>;
  input parameter from_ :: <mailimf-mailbox-list*>;
  input parameter sender_ :: <mailimf-mailbox*>;
  input parameter reply-to_ :: <mailimf-address-list*>;
  input parameter to_ :: <mailimf-address-list*>;
  input parameter cc_ :: <mailimf-address-list*>;
  input parameter bcc_ :: <mailimf-address-list*>;
  input parameter message-id_ :: <C-string>;
  input parameter in-reply-to_ :: <clist*>;
  input parameter references_ :: <clist*>;
  input parameter subject_ :: <C-string>;
  result res :: <mailimf-fields*>;
  c-name: "mailimf_fields_new_with_data_all";
end;

define C-function mailimf-fields-new-with-data
  input parameter from_ :: <mailimf-mailbox-list*>;
  input parameter sender_ :: <mailimf-mailbox*>;
  input parameter reply-to_ :: <mailimf-address-list*>;
  input parameter to_ :: <mailimf-address-list*>;
  input parameter cc_ :: <mailimf-address-list*>;
  input parameter bcc_ :: <mailimf-address-list*>;
  input parameter in-reply-to_ :: <clist*>;
  input parameter references_ :: <clist*>;
  input parameter subject_ :: <C-string>;
  result res :: <mailimf-fields*>;
  c-name: "mailimf_fields_new_with_data";
end;

define C-function mailimf-get-message-id
  result res :: <C-string>;
  c-name: "mailimf_get_message_id";
end;

define C-function mailimf-get-current-date
  result res :: <mailimf-date-time*>;
  c-name: "mailimf_get_current_date";
end;

define C-function mailimf-get-date
  input parameter time_ :: <time-t>;
  result res :: <mailimf-date-time*>;
  c-name: "mailimf_get_date";
end;

define C-pointer-type <mailimf-single-fields*> => <mailimf-single-fields>;
define C-function mailimf-single-fields-init
  input parameter single-fields_ :: <mailimf-single-fields*>;
  input parameter fields_ :: <mailimf-fields*>;
  c-name: "mailimf_single_fields_init";
end;

define C-function mailimf-single-fields-new
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <mailimf-single-fields*>;
  c-name: "mailimf_single_fields_new";
end;

define C-function mailimf-single-fields-free
  input parameter single-fields_ :: <mailimf-single-fields*>;
  c-name: "mailimf_single_fields_free";
end;

define C-function mailimf-field-new-custom
  input parameter name_ :: <C-string>;
  input parameter value_ :: <C-string>;
  result res :: <mailimf-field*>;
  c-name: "mailimf_field_new_custom";
end;

define C-function mailimf-string-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_string_write_file";
end;

define C-function mailimf-fields-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_write_file";
end;

define C-function mailimf-envelope-fields-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_fields_write_file";
end;

define C-function mailimf-field-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter field_ :: <mailimf-field*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_field_write_file";
end;

define C-function mailimf-quoted-string-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter string_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_quoted_string_write_file";
end;

define C-function mailimf-address-list-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter addr-list_ :: <mailimf-address-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_write_file";
end;

define C-function mailimf-mailbox-list-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_write_file";
end;

define C-function mailimf-header-string-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_header_string_write_file";
end;

define C-function mailimf-string-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_string_write";
end;

define C-function mailimf-fields-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_write";
end;

define C-function mailimf-envelope-fields-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_fields_write";
end;

define C-function mailimf-field-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter field_ :: <mailimf-field*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_field_write";
end;

define C-function mailimf-quoted-string-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter string_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_quoted_string_write";
end;

define C-function mailimf-address-list-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter addr-list_ :: <mailimf-address-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_write";
end;

define C-function mailimf-mailbox-list-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_write";
end;

define C-function mailimf-header-string-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_header_string_write";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-string-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_string_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-fields-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-envelope-fields-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_fields_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-field-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter field_ :: <mailimf-field*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_field_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-quoted-string-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter string_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_quoted_string_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-address-list-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter addr-list_ :: <mailimf-address-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-mailbox-list-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailimf-header-string-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_header_string_write_driver";
end;

define C-function mailimf-string-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_string_write_mem";
end;

define C-function mailimf-fields-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_fields_write_mem";
end;

define C-function mailimf-envelope-fields-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailimf-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_envelope_fields_write_mem";
end;

define C-function mailimf-field-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter field_ :: <mailimf-field*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_field_write_mem";
end;

define C-function mailimf-quoted-string-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter string_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_quoted_string_write_mem";
end;

define C-function mailimf-address-list-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter addr-list_ :: <mailimf-address-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_address_list_write_mem";
end;

define C-function mailimf-mailbox-list-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter mb-list_ :: <mailimf-mailbox-list*>;
  result res :: <C-signed-int>;
  c-name: "mailimf_mailbox_list_write_mem";
end;

define C-function mailimf-header-string-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailimf_header_string_write_mem";
end;

define C-function maillock-read-lock
  input parameter filename_ :: <C-string>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_read_lock";
end;

define C-function maillock-read-unlock
  input parameter filename_ :: <C-string>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_read_unlock";
end;

define C-function maillock-write-lock
  input parameter filename_ :: <C-string>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_write_lock";
end;

define C-function maillock-write-unlock
  input parameter filename_ :: <C-string>;
  input parameter fd_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "maillock_write_unlock";
end;

define C-struct <mailmbox-folder>
  array slot mailmbox_folder$mb-filename :: <C-signed-char>, length: 1024;
  slot mailmbox_folder$mb-mtime :: <C-signed-long>;
  slot mailmbox_folder$mb-fd :: <C-signed-int>;
  slot mailmbox_folder$mb-read-only :: <C-signed-int>;
  slot mailmbox_folder$mb-no-uid :: <C-signed-int>;
  slot mailmbox_folder$mb-changed :: <C-signed-int>;
  slot mailmbox_folder$mb-deleted-count :: <C-unsigned-int>;
  slot mailmbox_folder$mb-mapping :: <C-string>;
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
  input parameter data_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_append_message";
end;

define C-function mailmbox-append-message-uid
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter data_ :: <C-string>;
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
  input parameter msg_ :: <C-string>;
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
  input parameter filename_ :: <C-string>;
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

define constant $MAILMBOX-NO-ERROR = 0;
define constant $MAILMBOX-ERROR-PARSE = 1;
define constant $MAILMBOX-ERROR-INVAL = 2;
define constant $MAILMBOX-ERROR-FILE-NOT-FOUND = 3;
define constant $MAILMBOX-ERROR-MEMORY = 4;
define constant $MAILMBOX-ERROR-TEMPORARY-FILE = 5;
define constant $MAILMBOX-ERROR-FILE = 6;
define constant $MAILMBOX-ERROR-MSG-NOT-FOUND = 7;
define constant $MAILMBOX-ERROR-READONLY = 8;

define C-function mailmbox-folder-new
  input parameter mb-filename_ :: <C-string>;
  result res :: <mailmbox-folder*>;
  c-name: "mailmbox_folder_new";
end;

define C-function mailmbox-folder-free
  input parameter folder_ :: <mailmbox-folder*>;
  c-name: "mailmbox_folder_free";
end;

define C-struct <mailmbox-msg-info>
  slot mailmbox_msg_info$msg-index :: <C-unsigned-int>;
  slot mailmbox_msg_info$msg-uid :: <C-unsigned-int>;
  slot mailmbox_msg_info$msg-written-uid :: <C-signed-int>;
  slot mailmbox_msg_info$msg-deleted :: <C-signed-int>;
  slot mailmbox_msg_info$msg-start :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-start-len :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-headers :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-headers-len :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-body :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-body-len :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-size :: <C-unsigned-long>;
  slot mailmbox_msg_info$msg-padding :: <C-unsigned-long>;
end;

define C-function mailmbox-msg-info-update
  input parameter folder_ :: <mailmbox-folder*>;
  input parameter msg-start_ :: <size-t>;
  input parameter msg-start-len_ :: <size-t>;
  input parameter msg-headers_ :: <size-t>;
  input parameter msg-headers-len_ :: <size-t>;
  input parameter msg-body_ :: <size-t>;
  input parameter msg-body-len_ :: <size-t>;
  input parameter msg-size_ :: <size-t>;
  input parameter msg-padding_ :: <size-t>;
  input parameter msg-uid_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "mailmbox_msg_info_update";
end;

define C-pointer-type <mailmbox-msg-info*> => <mailmbox-msg-info>;
define C-function mailmbox-msg-info-new
  input parameter msg-start_ :: <size-t>;
  input parameter msg-start-len_ :: <size-t>;
  input parameter msg-headers_ :: <size-t>;
  input parameter msg-headers-len_ :: <size-t>;
  input parameter msg-body_ :: <size-t>;
  input parameter msg-body-len_ :: <size-t>;
  input parameter msg-size_ :: <size-t>;
  input parameter msg-padding_ :: <size-t>;
  input parameter msg-uid_ :: <uint32-t>;
  result res :: <mailmbox-msg-info*>;
  c-name: "mailmbox_msg_info_new";
end;

define C-function mailmbox-msg-info-free
  input parameter info_ :: <mailmbox-msg-info*>;
  c-name: "mailmbox_msg_info_free";
end;

define C-struct <mailmbox-append-info>
  slot mailmbox_append_info$ai-message :: <C-string>;
  slot mailmbox_append_info$ai-size :: <C-unsigned-long>;
  slot mailmbox_append_info$ai-uid :: <C-unsigned-int>;
end;

define C-pointer-type <mailmbox-append-info*> => <mailmbox-append-info>;
define C-function mailmbox-append-info-new
  input parameter ai-message_ :: <C-string>;
  input parameter ai-size_ :: <size-t>;
  result res :: <mailmbox-append-info*>;
  c-name: "mailmbox_append_info_new";
end;

define C-function mailmbox-append-info-free
  input parameter info_ :: <mailmbox-append-info*>;
  c-name: "mailmbox_append_info_free";
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
  input parameter msg_ :: <C-string>;
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

define constant $MAILMH-NO-ERROR = 0;
define constant $MAILMH-ERROR-FOLDER = 1;
define constant $MAILMH-ERROR-MEMORY = 2;
define constant $MAILMH-ERROR-FILE = 3;
define constant $MAILMH-ERROR-COULD-NOT-ALLOC-MSG = 4;
define constant $MAILMH-ERROR-RENAME = 5;
define constant $MAILMH-ERROR-MSG-NOT-FOUND = 6;

define C-pointer-type <mailmh-folder*> => <mailmh-folder>;
define C-struct <mailmh-folder>
  slot mailmh_folder$fl-filename :: <C-string>;
  slot mailmh_folder$fl-array-index :: <C-unsigned-int>;
  slot mailmh_folder$fl-name :: <C-string>;
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
  input parameter foldername_ :: <C-string>;
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
  input parameter name_ :: <C-string>;
  result res :: <mailmh-folder*>;
  c-name: "mailmh_folder_new";
end;

define C-function mailmh-folder-free
  input parameter folder_ :: <mailmh-folder*>;
  c-name: "mailmh_folder_free";
end;

define C-function mailmh-folder-add-subfolder
  input parameter parent_ :: <mailmh-folder*>;
  input parameter name_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_subfolder";
end;

define C-function mailmh-folder-find
  input parameter root_ :: <mailmh-folder*>;
  input parameter filename_ :: <C-string>;
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
  input parameter new-name_ :: <C-string>;
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
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter pindex_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmh_folder_add_message_uid";
end;

define C-function mailmh-folder-add-message
  input parameter folder_ :: <mailmh-folder*>;
  input parameter message_ :: <C-string>;
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

define C-pointer-type <mailmime-content**> => <mailmime-content*>;
define C-function mailmime-content-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-content**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_parse";
end;

define C-function mailmime-description-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_description_parse";
end;

define C-function mailmime-location-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_location_parse";
end;

define C-struct <mailmime-mechanism>
  slot mailmime_mechanism$enc-type :: <C-signed-int>;
  slot mailmime_mechanism$enc-token :: <C-string>;
end;

define C-pointer-type <mailmime-mechanism*> => <mailmime-mechanism>;
define C-pointer-type <mailmime-mechanism**> => <mailmime-mechanism*>;
define C-function mailmime-encoding-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-mechanism**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_encoding_parse";
end;

define C-struct <mailmime-disposition-type>
  slot mailmime_disposition_type$dsp-type :: <C-signed-int>;
  slot mailmime_disposition_type$dsp-extension :: <C-string>;
end;

define C-pointer-type <mailmime-disposition-type*> => <mailmime-disposition-type>;
define C-struct <mailmime-disposition>
  slot mailmime_disposition$dsp-type :: <mailmime-disposition-type*>;
  slot mailmime_disposition$dsp-parms :: <clist*>;
end;

define C-pointer-type <mailmime-disposition*> => <mailmime-disposition>;
define C-struct <mailmime-language>
  slot mailmime_language$lg-list :: <clist*>;
end;

define C-pointer-type <mailmime-language*> => <mailmime-language>;
define C-union <anonymous-818>
  slot anonymous-818$fld-content :: <mailmime-content*>;
  slot anonymous-818$fld-encoding :: <mailmime-mechanism*>;
  slot anonymous-818$fld-id :: <C-string>;
  slot anonymous-818$fld-description :: <C-string>;
  slot anonymous-818$fld-version :: <C-unsigned-int>;
  slot anonymous-818$fld-disposition :: <mailmime-disposition*>;
  slot anonymous-818$fld-language :: <mailmime-language*>;
  slot anonymous-818$fld-location :: <C-string>;
end;

define C-struct <mailmime-field>
  slot mailmime_field$fld-type :: <C-signed-int>;
  slot mailmime_field$fld-data :: <anonymous-818>;
end;

define C-pointer-type <mailmime-field*> => <mailmime-field>;
define C-pointer-type <mailmime-field**> => <mailmime-field*>;
define C-function mailmime-field-parse
  input parameter field_ :: <mailimf-optional-field*>;
  input parameter result_ :: <mailmime-field**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_field_parse";
end;

define C-function mailmime-id-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_id_parse";
end;

define C-pointer-type <mailmime-fields**> => <mailmime-fields*>;
define C-function mailmime-fields-parse
  input parameter fields_ :: <mailimf-fields*>;
  input parameter result_ :: <mailmime-fields**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_parse";
end;

define C-function mailmime-version-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_version_parse";
end;

define C-function mailmime-extension-token-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_extension_token_parse";
end;

define C-struct <mailmime-parameter>
  slot mailmime_parameter$pa-name :: <C-string>;
  slot mailmime_parameter$pa-value :: <C-string>;
end;

define C-pointer-type <mailmime-parameter*> => <mailmime-parameter>;
define C-pointer-type <mailmime-parameter**> => <mailmime-parameter*>;
define C-function mailmime-parameter-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-parameter**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_parameter_parse";
end;

define C-function mailmime-value-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_value_parse";
end;

define C-pointer-type <mailmime-language**> => <mailmime-language*>;
define C-function mailmime-language-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-language**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_language_parse";
end;

define C-function mailmime-content-charset-get
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-string>;
  c-name: "mailmime_content_charset_get";
end;

define C-function mailmime-content-param-get
  input parameter content_ :: <mailmime-content*>;
  input parameter name_ :: <C-string>;
  result res :: <C-string>;
  c-name: "mailmime_content_param_get";
end;

define C-function mailmime-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_parse";
end;

define C-function mailmime-get-section
  input parameter mime_ :: <mailmime*>;
  input parameter section_ :: <mailmime-section*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_get_section";
end;

define C-function mailmime-extract-boundary
  input parameter content-type_ :: <mailmime-content*>;
  result res :: <C-string>;
  c-name: "mailmime_extract_boundary";
end;

define C-function mailmime-base64-body-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_base64_body_parse";
end;

define C-function mailmime-quoted-printable-body-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  input parameter in-header_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmime_quoted_printable_body_parse";
end;

define C-function mailmime-binary-body-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_binary_body_parse";
end;

define C-function mailmime-part-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter encoding_ :: <C-signed-int>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_part_parse";
end;

define C-pointer-type <mailmime-section**> => <mailmime-section*>;
define C-function mailmime-get-section-id
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <mailmime-section**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_get_section_id";
end;

define C-function mailmime-encoded-phrase-parse
  input parameter default-fromcode_ :: <C-string>;
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter tocode_ :: <C-string>;
  input parameter result_ :: <char**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_encoded_phrase_parse";
end;

define C-pointer-type <mailmime-disposition**> => <mailmime-disposition*>;
define C-function mailmime-disposition-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-disposition**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_disposition_parse";
end;

define C-pointer-type <mailmime-disposition-type**> => <mailmime-disposition-type*>;
define C-function mailmime-disposition-type-parse
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t*>;
  input parameter result_ :: <mailmime-disposition-type**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_disposition_type_parse";
end;

define C-function mailmime-disposition-guess-type
  input parameter message_ :: <C-string>;
  input parameter length_ :: <size-t>;
  input parameter indx_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_disposition_guess_type";
end;

define constant $MAILMIME-COMPOSITE-TYPE-ERROR = 0;
define constant $MAILMIME-COMPOSITE-TYPE-MESSAGE = 1;
define constant $MAILMIME-COMPOSITE-TYPE-MULTIPART = 2;
define constant $MAILMIME-COMPOSITE-TYPE-EXTENSION = 3;

define constant $MAILMIME-DISCRETE-TYPE-ERROR = 0;
define constant $MAILMIME-DISCRETE-TYPE-TEXT = 1;
define constant $MAILMIME-DISCRETE-TYPE-IMAGE = 2;
define constant $MAILMIME-DISCRETE-TYPE-AUDIO = 3;
define constant $MAILMIME-DISCRETE-TYPE-VIDEO = 4;
define constant $MAILMIME-DISCRETE-TYPE-APPLICATION = 5;
define constant $MAILMIME-DISCRETE-TYPE-EXTENSION = 6;

define constant $MAILMIME-FIELD-NONE = 0;
define constant $MAILMIME-FIELD-TYPE = 1;
define constant $MAILMIME-FIELD-TRANSFER-ENCODING = 2;
define constant $MAILMIME-FIELD-ID = 3;
define constant $MAILMIME-FIELD-DESCRIPTION = 4;
define constant $MAILMIME-FIELD-VERSION = 5;
define constant $MAILMIME-FIELD-DISPOSITION = 6;
define constant $MAILMIME-FIELD-LANGUAGE = 7;
define constant $MAILMIME-FIELD-LOCATION = 8;

define constant $MAILMIME-MECHANISM-ERROR = 0;
define constant $MAILMIME-MECHANISM-7BIT = 1;
define constant $MAILMIME-MECHANISM-8BIT = 2;
define constant $MAILMIME-MECHANISM-BINARY = 3;
define constant $MAILMIME-MECHANISM-QUOTED-PRINTABLE = 4;
define constant $MAILMIME-MECHANISM-BASE64 = 5;
define constant $MAILMIME-MECHANISM-TOKEN = 6;

define constant $MAILMIME-TYPE-ERROR = 0;
define constant $MAILMIME-TYPE-DISCRETE-TYPE = 1;
define constant $MAILMIME-TYPE-COMPOSITE-TYPE = 2;

define C-function mailmime-attribute-free
  input parameter attribute_ :: <C-string>;
  c-name: "mailmime_attribute_free";
end;

define C-function mailmime-composite-type-new
  input parameter ct-type_ :: <C-signed-int>;
  input parameter ct-token_ :: <C-string>;
  result res :: <mailmime-composite-type*>;
  c-name: "mailmime_composite_type_new";
end;

define C-function mailmime-composite-type-free
  input parameter ct_ :: <mailmime-composite-type*>;
  c-name: "mailmime_composite_type_free";
end;

define C-function mailmime-content-new
  input parameter ct-type_ :: <mailmime-type*>;
  input parameter ct-subtype_ :: <C-string>;
  input parameter ct-parameters_ :: <clist*>;
  result res :: <mailmime-content*>;
  c-name: "mailmime_content_new";
end;

define C-function mailmime-content-free
  input parameter content_ :: <mailmime-content*>;
  c-name: "mailmime_content_free";
end;

define C-function mailmime-description-free
  input parameter description_ :: <C-string>;
  c-name: "mailmime_description_free";
end;

define C-function mailmime-location-free
  input parameter location_ :: <C-string>;
  c-name: "mailmime_location_free";
end;

define C-function mailmime-discrete-type-new
  input parameter dt-type_ :: <C-signed-int>;
  input parameter dt-extension_ :: <C-string>;
  result res :: <mailmime-discrete-type*>;
  c-name: "mailmime_discrete_type_new";
end;

define C-function mailmime-discrete-type-free
  input parameter discrete-type_ :: <mailmime-discrete-type*>;
  c-name: "mailmime_discrete_type_free";
end;

define C-function mailmime-encoding-free
  input parameter encoding_ :: <mailmime-mechanism*>;
  c-name: "mailmime_encoding_free";
end;

define C-function mailmime-extension-token-free
  input parameter extension_ :: <C-string>;
  c-name: "mailmime_extension_token_free";
end;

define C-function mailmime-id-free
  input parameter id_ :: <C-string>;
  c-name: "mailmime_id_free";
end;

define C-function mailmime-mechanism-new
  input parameter enc-type_ :: <C-signed-int>;
  input parameter enc-token_ :: <C-string>;
  result res :: <mailmime-mechanism*>;
  c-name: "mailmime_mechanism_new";
end;

define C-function mailmime-mechanism-free
  input parameter mechanism_ :: <mailmime-mechanism*>;
  c-name: "mailmime_mechanism_free";
end;

define C-function mailmime-parameter-new
  input parameter pa-name_ :: <C-string>;
  input parameter pa-value_ :: <C-string>;
  result res :: <mailmime-parameter*>;
  c-name: "mailmime_parameter_new";
end;

define C-function mailmime-parameter-free
  input parameter parameter_ :: <mailmime-parameter*>;
  c-name: "mailmime_parameter_free";
end;

define C-function mailmime-subtype-free
  input parameter subtype_ :: <C-string>;
  c-name: "mailmime_subtype_free";
end;

define C-function mailmime-token-free
  input parameter token_ :: <C-string>;
  c-name: "mailmime_token_free";
end;

define C-function mailmime-type-new
  input parameter tp-type_ :: <C-signed-int>;
  input parameter tp-discrete-type_ :: <mailmime-discrete-type*>;
  input parameter tp-composite-type_ :: <mailmime-composite-type*>;
  result res :: <mailmime-type*>;
  c-name: "mailmime_type_new";
end;

define C-function mailmime-type-free
  input parameter type_ :: <mailmime-type*>;
  c-name: "mailmime_type_free";
end;

define C-function mailmime-value-free
  input parameter value_ :: <C-string>;
  c-name: "mailmime_value_free";
end;

define C-function mailmime-language-new
  input parameter lg-list_ :: <clist*>;
  result res :: <mailmime-language*>;
  c-name: "mailmime_language_new";
end;

define C-function mailmime-language-free
  input parameter lang_ :: <mailmime-language*>;
  c-name: "mailmime_language_free";
end;

define C-function mailmime-field-new
  input parameter fld-type_ :: <C-signed-int>;
  input parameter fld-content_ :: <mailmime-content*>;
  input parameter fld-encoding_ :: <mailmime-mechanism*>;
  input parameter fld-id_ :: <C-string>;
  input parameter fld-description_ :: <C-string>;
  input parameter fld-version_ :: <uint32-t>;
  input parameter fld-disposition_ :: <mailmime-disposition*>;
  input parameter fld-language_ :: <mailmime-language*>;
  input parameter fld-location_ :: <C-string>;
  result res :: <mailmime-field*>;
  c-name: "mailmime_field_new";
end;

define C-function mailmime-field-free
  input parameter field_ :: <mailmime-field*>;
  c-name: "mailmime_field_free";
end;

define C-function mailmime-fields-new
  input parameter fld-list_ :: <clist*>;
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new";
end;

define C-function mailmime-fields-free
  input parameter fields_ :: <mailmime-fields*>;
  c-name: "mailmime_fields_free";
end;

define C-struct <mailmime-multipart-body>
  slot mailmime_multipart_body$bd-list :: <clist*>;
end;

define C-pointer-type <mailmime-multipart-body*> => <mailmime-multipart-body>;
define C-function mailmime-multipart-body-new
  input parameter bd-list_ :: <clist*>;
  result res :: <mailmime-multipart-body*>;
  c-name: "mailmime_multipart_body_new";
end;

define C-function mailmime-multipart-body-free
  input parameter mp-body_ :: <mailmime-multipart-body*>;
  c-name: "mailmime_multipart_body_free";
end;

define constant $MAILMIME-DATA-TEXT = 0;
define constant $MAILMIME-DATA-FILE = 1;

define C-function mailmime-data-new
  input parameter dt-type_ :: <C-signed-int>;
  input parameter dt-encoding_ :: <C-signed-int>;
  input parameter dt-encoded_ :: <C-signed-int>;
  input parameter dt-data_ :: <C-string>;
  input parameter dt-length_ :: <size-t>;
  input parameter dt-filename_ :: <C-string>;
  result res :: <mailmime-data*>;
  c-name: "mailmime_data_new";
end;

define C-function mailmime-data-free
  input parameter mime-data_ :: <mailmime-data*>;
  c-name: "mailmime_data_free";
end;

define constant $MAILMIME-NONE = 0;
define constant $MAILMIME-SINGLE = 1;
define constant $MAILMIME-MULTIPLE = 2;
define constant $MAILMIME-MESSAGE = 3;

define C-function mailmime-new
  input parameter mm-type_ :: <C-signed-int>;
  input parameter mm-mime-start_ :: <C-string>;
  input parameter mm-length_ :: <size-t>;
  input parameter mm-mime-fields_ :: <mailmime-fields*>;
  input parameter mm-content-type_ :: <mailmime-content*>;
  input parameter mm-body_ :: <mailmime-data*>;
  input parameter mm-preamble_ :: <mailmime-data*>;
  input parameter mm-epilogue_ :: <mailmime-data*>;
  input parameter mm-mp-list_ :: <clist*>;
  input parameter mm-fields_ :: <mailimf-fields*>;
  input parameter mm-msg-mime_ :: <mailmime*>;
  result res :: <mailmime*>;
  c-name: "mailmime_new";
end;

define C-function mailmime-free
  input parameter mime_ :: <mailmime*>;
  c-name: "mailmime_free";
end;

define C-struct <mailmime-encoded-word>
  slot mailmime_encoded_word$wd-charset :: <C-string>;
  slot mailmime_encoded_word$wd-text :: <C-string>;
end;

define C-pointer-type <mailmime-encoded-word*> => <mailmime-encoded-word>;
define C-function mailmime-encoded-word-new
  input parameter wd-charset_ :: <C-string>;
  input parameter wd-text_ :: <C-string>;
  result res :: <mailmime-encoded-word*>;
  c-name: "mailmime_encoded_word_new";
end;

define C-function mailmime-encoded-word-free
  input parameter ew_ :: <mailmime-encoded-word*>;
  c-name: "mailmime_encoded_word_free";
end;

define C-function mailmime-charset-free
  input parameter charset_ :: <C-string>;
  c-name: "mailmime_charset_free";
end;

define C-function mailmime-encoded-text-free
  input parameter text_ :: <C-string>;
  c-name: "mailmime_encoded_text_free";
end;

define constant $MAILMIME-DISPOSITION-TYPE-ERROR = 0;
define constant $MAILMIME-DISPOSITION-TYPE-INLINE = 1;
define constant $MAILMIME-DISPOSITION-TYPE-ATTACHMENT = 2;
define constant $MAILMIME-DISPOSITION-TYPE-EXTENSION = 3;

define constant $MAILMIME-DISPOSITION-PARM-FILENAME = 0;
define constant $MAILMIME-DISPOSITION-PARM-CREATION-DATE = 1;
define constant $MAILMIME-DISPOSITION-PARM-MODIFICATION-DATE = 2;
define constant $MAILMIME-DISPOSITION-PARM-READ-DATE = 3;
define constant $MAILMIME-DISPOSITION-PARM-SIZE = 4;
define constant $MAILMIME-DISPOSITION-PARM-PARAMETER = 5;

define C-union <anonymous-868>
  slot anonymous-868$pa-filename :: <C-string>;
  slot anonymous-868$pa-creation-date :: <C-string>;
  slot anonymous-868$pa-modification-date :: <C-string>;
  slot anonymous-868$pa-read-date :: <C-string>;
  slot anonymous-868$pa-size :: <C-unsigned-long>;
  slot anonymous-868$pa-parameter :: <mailmime-parameter*>;
end;

define C-struct <mailmime-disposition-parm>
  slot mailmime_disposition_parm$pa-type :: <C-signed-int>;
  slot mailmime_disposition_parm$pa-data :: <anonymous-868>;
end;

define C-function mailmime-disposition-new
  input parameter dsp-type_ :: <mailmime-disposition-type*>;
  input parameter dsp-parms_ :: <clist*>;
  result res :: <mailmime-disposition*>;
  c-name: "mailmime_disposition_new";
end;

define C-function mailmime-disposition-free
  input parameter dsp_ :: <mailmime-disposition*>;
  c-name: "mailmime_disposition_free";
end;

define C-function mailmime-disposition-type-new
  input parameter dt-type_ :: <C-signed-int>;
  input parameter dt-extension_ :: <C-string>;
  result res :: <mailmime-disposition-type*>;
  c-name: "mailmime_disposition_type_new";
end;

define C-function mailmime-disposition-type-free
  input parameter dsp-type_ :: <mailmime-disposition-type*>;
  c-name: "mailmime_disposition_type_free";
end;

define C-pointer-type <mailmime-disposition-parm*> => <mailmime-disposition-parm>;
define C-function mailmime-disposition-parm-new
  input parameter pa-type_ :: <C-signed-int>;
  input parameter pa-filename_ :: <C-string>;
  input parameter pa-creation-date_ :: <C-string>;
  input parameter pa-modification-date_ :: <C-string>;
  input parameter pa-read-date_ :: <C-string>;
  input parameter pa-size_ :: <size-t>;
  input parameter pa-parameter_ :: <mailmime-parameter*>;
  result res :: <mailmime-disposition-parm*>;
  c-name: "mailmime_disposition_parm_new";
end;

define C-function mailmime-disposition-parm-free
  input parameter dsp-parm_ :: <mailmime-disposition-parm*>;
  c-name: "mailmime_disposition_parm_free";
end;

define C-function mailmime-filename-parm-free
  input parameter filename_ :: <C-string>;
  c-name: "mailmime_filename_parm_free";
end;

define C-function mailmime-creation-date-parm-free
  input parameter date_ :: <C-string>;
  c-name: "mailmime_creation_date_parm_free";
end;

define C-function mailmime-modification-date-parm-free
  input parameter date_ :: <C-string>;
  c-name: "mailmime_modification_date_parm_free";
end;

define C-function mailmime-read-date-parm-free
  input parameter date_ :: <C-string>;
  c-name: "mailmime_read_date_parm_free";
end;

define C-function mailmime-quoted-date-time-free
  input parameter date_ :: <C-string>;
  c-name: "mailmime_quoted_date_time_free";
end;

define C-function mailmime-section-new
  input parameter list_ :: <clist*>;
  result res :: <mailmime-section*>;
  c-name: "mailmime_section_new";
end;

define C-function mailmime-section-free
  input parameter section_ :: <mailmime-section*>;
  c-name: "mailmime_section_free";
end;

define C-function mailmime-decoded-part-free
  input parameter part_ :: <C-string>;
  c-name: "mailmime_decoded_part_free";
end;

define C-struct <mailmime-single-fields>
  slot mailmime_single_fields$fld-content :: <mailmime-content*>;
  slot mailmime_single_fields$fld-content-charset :: <C-string>;
  slot mailmime_single_fields$fld-content-boundary :: <C-string>;
  slot mailmime_single_fields$fld-content-name :: <C-string>;
  slot mailmime_single_fields$fld-encoding :: <mailmime-mechanism*>;
  slot mailmime_single_fields$fld-id :: <C-string>;
  slot mailmime_single_fields$fld-description :: <C-string>;
  slot mailmime_single_fields$fld-version :: <C-unsigned-int>;
  slot mailmime_single_fields$fld-disposition :: <mailmime-disposition*>;
  slot mailmime_single_fields$fld-disposition-filename :: <C-string>;
  slot mailmime_single_fields$fld-disposition-creation-date :: <C-string>;
  slot mailmime_single_fields$fld-disposition-modification-date :: <C-string>;
  slot mailmime_single_fields$fld-disposition-read-date :: <C-string>;
  slot mailmime_single_fields$fld-disposition-size :: <C-unsigned-long>;
  slot mailmime_single_fields$fld-language :: <mailmime-language*>;
  slot mailmime_single_fields$fld-location :: <C-string>;
end;

define C-function mailmime-transfer-encoding-get
  input parameter fields_ :: <mailmime-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_transfer_encoding_get";
end;

define C-function mailmime-disposition-new-filename
  input parameter type_ :: <C-signed-int>;
  input parameter filename_ :: <C-string>;
  result res :: <mailmime-disposition*>;
  c-name: "mailmime_disposition_new_filename";
end;

define C-function mailmime-fields-new-empty
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new_empty";
end;

define C-function mailmime-fields-add
  input parameter fields_ :: <mailmime-fields*>;
  input parameter field_ :: <mailmime-field*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_add";
end;

define C-function mailmime-fields-new-with-data
  input parameter encoding_ :: <mailmime-mechanism*>;
  input parameter id_ :: <C-string>;
  input parameter description_ :: <C-string>;
  input parameter disposition_ :: <mailmime-disposition*>;
  input parameter language_ :: <mailmime-language*>;
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new_with_data";
end;

define C-function mailmime-fields-new-with-version
  input parameter encoding_ :: <mailmime-mechanism*>;
  input parameter id_ :: <C-string>;
  input parameter description_ :: <C-string>;
  input parameter disposition_ :: <mailmime-disposition*>;
  input parameter language_ :: <mailmime-language*>;
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new_with_version";
end;

define C-function mailmime-get-content-message
  result res :: <mailmime-content*>;
  c-name: "mailmime_get_content_message";
end;

define C-function mailmime-get-content-text
  result res :: <mailmime-content*>;
  c-name: "mailmime_get_content_text";
end;

define C-function mailmime-data-new-data
  input parameter encoding_ :: <C-signed-int>;
  input parameter encoded_ :: <C-signed-int>;
  input parameter data_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <mailmime-data*>;
  c-name: "mailmime_data_new_data";
end;

define C-function mailmime-data-new-file
  input parameter encoding_ :: <C-signed-int>;
  input parameter encoded_ :: <C-signed-int>;
  input parameter filename_ :: <C-string>;
  result res :: <mailmime-data*>;
  c-name: "mailmime_data_new_file";
end;

define C-function mailmime-new-message-data
  input parameter msg-mime_ :: <mailmime*>;
  result res :: <mailmime*>;
  c-name: "mailmime_new_message_data";
end;

define C-function mailmime-new-empty
  input parameter content_ :: <mailmime-content*>;
  input parameter mime-fields_ :: <mailmime-fields*>;
  result res :: <mailmime*>;
  c-name: "mailmime_new_empty";
end;

define C-function mailmime-new-with-content
  input parameter content-type_ :: <C-string>;
  input parameter mime-fields_ :: <mailmime-fields*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailmime_new_with_content";
end;

define C-function mailmime-set-preamble-file
  input parameter build-info_ :: <mailmime*>;
  input parameter filename_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_preamble_file";
end;

define C-function mailmime-set-epilogue-file
  input parameter build-info_ :: <mailmime*>;
  input parameter filename_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_epilogue_file";
end;

define C-function mailmime-set-preamble-text
  input parameter build-info_ :: <mailmime*>;
  input parameter data-str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_preamble_text";
end;

define C-function mailmime-set-epilogue-text
  input parameter build-info_ :: <mailmime*>;
  input parameter data-str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_epilogue_text";
end;

define C-function mailmime-set-body-file
  input parameter build-info_ :: <mailmime*>;
  input parameter filename_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_body_file";
end;

define C-function mailmime-set-body-text
  input parameter build-info_ :: <mailmime*>;
  input parameter data-str_ :: <C-string>;
  input parameter length_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_set_body_text";
end;

define C-function mailmime-add-part
  input parameter build-info_ :: <mailmime*>;
  input parameter part_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_add_part";
end;

define C-function mailmime-remove-part
  input parameter mime_ :: <mailmime*>;
  c-name: "mailmime_remove_part";
end;

define C-function mailmime-set-imf-fields
  input parameter build-info_ :: <mailmime*>;
  input parameter fields_ :: <mailimf-fields*>;
  c-name: "mailmime_set_imf_fields";
end;

define C-function mailmime-disposition-new-with-data
  input parameter type_ :: <C-signed-int>;
  input parameter filename_ :: <C-string>;
  input parameter creation-date_ :: <C-string>;
  input parameter modification-date_ :: <C-string>;
  input parameter read-date_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <mailmime-disposition*>;
  c-name: "mailmime_disposition_new_with_data";
end;

define C-pointer-type <mailmime-single-fields*> => <mailmime-single-fields>;
define C-function mailmime-single-fields-init
  input parameter single-fields_ :: <mailmime-single-fields*>;
  input parameter fld-fields_ :: <mailmime-fields*>;
  input parameter fld-content_ :: <mailmime-content*>;
  c-name: "mailmime_single_fields_init";
end;

define C-function mailmime-single-fields-new
  input parameter fld-fields_ :: <mailmime-fields*>;
  input parameter fld-content_ :: <mailmime-content*>;
  result res :: <mailmime-single-fields*>;
  c-name: "mailmime_single_fields_new";
end;

define C-function mailmime-single-fields-free
  input parameter single-fields_ :: <mailmime-single-fields*>;
  c-name: "mailmime_single_fields_free";
end;

define C-function mailmime-smart-add-part
  input parameter mime_ :: <mailmime*>;
  input parameter mime-sub_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_smart_add_part";
end;

define C-function mailmime-smart-remove-part
  input parameter mime_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_smart_remove_part";
end;

define C-function mailmime-content-new-with-str
  input parameter str_ :: <C-string>;
  result res :: <mailmime-content*>;
  c-name: "mailmime_content_new_with_str";
end;

define C-function mailmime-fields-new-encoding
  input parameter type_ :: <C-signed-int>;
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new_encoding";
end;

define C-function mailmime-multiple-new
  input parameter type_ :: <C-string>;
  result res :: <mailmime*>;
  c-name: "mailmime_multiple_new";
end;

define C-function mailmime-fields-new-filename
  input parameter dsp-type_ :: <C-signed-int>;
  input parameter filename_ :: <C-string>;
  input parameter encoding-type_ :: <C-signed-int>;
  result res :: <mailmime-fields*>;
  c-name: "mailmime_fields_new_filename";
end;

define C-function mailmime-generate-boundary
  result res :: <C-string>;
  c-name: "mailmime_generate_boundary";
end;

define constant mailmime-get-content = mailmime-content-new-with-str;

define C-function mailmime-fields-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailmime-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_write_file";
end;

define C-function mailmime-content-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_write_file";
end;

define C-function mailmime-content-type-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_type_write_file";
end;

define C-function mailmime-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter build-info_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_write_file";
end;

define C-function mailmime-quoted-printable-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter istext_ :: <C-signed-int>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_quoted_printable_write_file";
end;

define C-function mailmime-base64-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_base64_write_file";
end;

define C-function mailmime-data-write-file
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter data_ :: <mailmime-data*>;
  input parameter istext_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmime_data_write_file";
end;

define C-function mailmime-fields-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailmime-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_write";
end;

define C-function mailmime-content-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_write";
end;

define C-function mailmime-content-type-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_type_write";
end;

define C-function mailmime-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter build-info_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_write";
end;

define C-function mailmime-quoted-printable-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter istext_ :: <C-signed-int>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_quoted_printable_write";
end;

define C-function mailmime-base64-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_base64_write";
end;

define C-function mailmime-data-write
  input parameter f_ :: <FILE*>;
  input parameter col_ :: <int*>;
  input parameter data_ :: <mailmime-data*>;
  input parameter istext_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmime_data_write";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-fields-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailmime-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-content-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-content-type-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_type_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter build-info_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-quoted-printable-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter istext_ :: <C-signed-int>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_quoted_printable_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-base64-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_base64_write_driver";
end;

define constant <do-write> = <C-function-pointer>;
define C-function mailmime-data-write-driver
  input parameter do-write_ :: <do-write>;
  input parameter data_ :: <C-void*>;
  input parameter col_ :: <int*>;
  input parameter mime-data_ :: <mailmime-data*>;
  input parameter istext_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmime_data_write_driver";
end;

define C-function mailmime-fields-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter fields_ :: <mailmime-fields*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_fields_write_mem";
end;

define C-function mailmime-content-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_write_mem";
end;

define C-function mailmime-content-type-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter content_ :: <mailmime-content*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_content_type_write_mem";
end;

define C-function mailmime-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter build-info_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_write_mem";
end;

define C-function mailmime-quoted-printable-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter istext_ :: <C-signed-int>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_quoted_printable_write_mem";
end;

define C-function mailmime-base64-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter text_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailmime_base64_write_mem";
end;

define C-function mailmime-data-write-mem
  input parameter f_ :: <MMAPString*>;
  input parameter col_ :: <int*>;
  input parameter data_ :: <mailmime-data*>;
  input parameter istext_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailmime_data_write_mem";
end;

define C-struct <anonymous-1508>
  slot anonymous-1508$sasl-conn :: <C-void*>;
  slot anonymous-1508$sasl-server-fqdn :: <C-string>;
  slot anonymous-1508$sasl-login :: <C-string>;
  slot anonymous-1508$sasl-auth-name :: <C-string>;
  slot anonymous-1508$sasl-password :: <C-string>;
  slot anonymous-1508$sasl-realm :: <C-string>;
  slot anonymous-1508$sasl-secret :: <C-void*>;
end;

define constant <pop3-logger> = <C-function-pointer>;
define C-struct <mailpop3>
  slot mailpop3$pop3-response :: <C-string>;
  slot mailpop3$pop3-timestamp :: <C-string>;
  slot mailpop3$pop3-stream :: <mailstream*>;
  slot mailpop3$pop3-progr-rate :: <C-unsigned-long>;
  slot mailpop3$pop3-progr-fun :: <progress-function*>;
  slot mailpop3$pop3-stream-buffer :: <MMAPString*>;
  slot mailpop3$pop3-response-buffer :: <MMAPString*>;
  slot mailpop3$pop3-msg-tab :: <carray*>;
  slot mailpop3$pop3-state :: <C-signed-int>;
  slot mailpop3$pop3-deleted-count :: <C-unsigned-int>;
  slot mailpop3$pop3-sasl :: <anonymous-1508>;
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
  input parameter user_ :: <C-string>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_apop";
end;

define C-function mailpop3-user
  input parameter f_ :: <mailpop3*>;
  input parameter user_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_user";
end;

define C-function mailpop3-pass
  input parameter f_ :: <mailpop3*>;
  input parameter password_ :: <C-string>;
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
  input parameter str_ :: <C-string>;
  c-name: "mailpop3_top_free";
end;

define C-function mailpop3-retr-free
  input parameter str_ :: <C-string>;
  c-name: "mailpop3_retr_free";
end;

define C-struct <mailpop3-msg-info>
  slot mailpop3_msg_info$msg-index :: <C-unsigned-int>;
  slot mailpop3_msg_info$msg-size :: <C-unsigned-int>;
  slot mailpop3_msg_info$msg-uidl :: <C-string>;
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
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
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

define C-function mailpop3-login-apop
  input parameter f_ :: <mailpop3*>;
  input parameter user_ :: <C-string>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_login_apop";
end;

define C-function mailpop3-login
  input parameter f_ :: <mailpop3*>;
  input parameter user_ :: <C-string>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_login";
end;

define C-function mailpop3-header
  input parameter f_ :: <mailpop3*>;
  input parameter indx_ :: <uint32-t>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_header";
end;

define C-function mailpop3-header-free
  input parameter str_ :: <C-string>;
  c-name: "mailpop3_header_free";
end;

define C-function mailpop3-socket-connect
  input parameter f_ :: <mailpop3*>;
  input parameter server_ :: <C-string>;
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
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailpop3-ssl-connect-with-callback
  input parameter f_ :: <mailpop3*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailpop3_ssl_connect_with_callback";
end;

define constant $MAILPOP3-NO-ERROR = 0;
define constant $MAILPOP3-ERROR-BAD-STATE = 1;
define constant $MAILPOP3-ERROR-UNAUTHORIZED = 2;
define constant $MAILPOP3-ERROR-STREAM = 3;
define constant $MAILPOP3-ERROR-DENIED = 4;
define constant $MAILPOP3-ERROR-BAD-USER = 5;
define constant $MAILPOP3-ERROR-BAD-PASSWORD = 6;
define constant $MAILPOP3-ERROR-CANT-LIST = 7;
define constant $MAILPOP3-ERROR-NO-SUCH-MESSAGE = 8;
define constant $MAILPOP3-ERROR-MEMORY = 9;
define constant $MAILPOP3-ERROR-CONNECTION-REFUSED = 10;
define constant $MAILPOP3-ERROR-APOP-NOT-SUPPORTED = 11;
define constant $MAILPOP3-ERROR-CAPA-NOT-SUPPORTED = 12;
define constant $MAILPOP3-ERROR-STLS-NOT-SUPPORTED = 13;
define constant $MAILPOP3-ERROR-SSL = 14;
define constant $MAILPOP3-ERROR-QUIT-FAILED = 15;

define C-struct <mailpop3-capa>
  slot mailpop3_capa$cap-name :: <C-string>;
  slot mailpop3_capa$cap-param :: <clist*>;
end;

define C-function mailprivacy-new
  input parameter tmp-dir_ :: <C-string>;
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
  input parameter msg_ :: <C-string>;
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
  slot mailprivacy_encryption$name :: <C-string>;
  slot mailprivacy_encryption$description :: <C-string>;
  slot mailprivacy_encryption$encrypt :: <encrypt>;
end;

define C-pointer-type <mailprivacy-encryption*> => <mailprivacy-encryption>;
define C-struct <mailprivacy-protocol>
  slot mailprivacy_protocol$name :: <C-string>;
  slot mailprivacy_protocol$description :: <C-string>;
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
  input parameter privacy-driver_ :: <C-string>;
  input parameter privacy-encryption_ :: <C-string>;
  result res :: <C-string>;
  c-name: "mailprivacy_get_encryption_name";
end;

define C-function mailprivacy-encrypt
  input parameter privacy_ :: <mailprivacy*>;
  input parameter privacy-driver_ :: <C-string>;
  input parameter privacy-encryption_ :: <C-string>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_encrypt";
end;

define C-function mailprivacy-encrypt-msg
  input parameter privacy_ :: <mailprivacy*>;
  input parameter privacy-driver_ :: <C-string>;
  input parameter privacy-encryption_ :: <C-string>;
  input parameter msg_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  input parameter result_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_encrypt_msg";
end;

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
  input parameter user-id_ :: <C-string>;
  input parameter passphrase_ :: <C-string>;
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
  input parameter directory_ :: <C-string>;
  c-name: "mailprivacy_smime_set_cert_dir";
end;

define C-function mailprivacy-smime-set-CA-dir
  input parameter privacy_ :: <mailprivacy*>;
  input parameter directory_ :: <C-string>;
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
  input parameter directory_ :: <C-string>;
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
  input parameter user-id_ :: <C-string>;
  input parameter passphrase_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_smime_set_encryption_id";
end;

define C-function mailprivacy-mime-clear
  input parameter mime_ :: <mailmime*>;
  c-name: "mailprivacy_mime_clear";
end;

define C-function mailprivacy-get-tmp-file
  input parameter privacy_ :: <mailprivacy*>;
  input parameter filename_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <FILE*>;
  c-name: "mailprivacy_get_tmp_file";
end;

define C-function mailprivacy-get-tmp-filename
  input parameter privacy_ :: <mailprivacy*>;
  input parameter filename_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_get_tmp_filename";
end;

define C-function mailprivacy-new-file-part
  input parameter privacy_ :: <mailprivacy*>;
  input parameter filename_ :: <C-string>;
  input parameter default-content-type_ :: <C-string>;
  input parameter default-encoding_ :: <C-signed-int>;
  result res :: <mailmime*>;
  c-name: "mailprivacy_new_file_part";
end;

define C-function mailmime-substitute
  input parameter old-mime_ :: <mailmime*>;
  input parameter new-mime_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailmime_substitute";
end;

define C-function mailprivacy-fetch-mime-body-to-file
  input parameter privacy_ :: <mailprivacy*>;
  input parameter filename_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter msg_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_fetch_mime_body_to_file";
end;

define C-function mailprivacy-get-part-from-file
  input parameter privacy_ :: <mailprivacy*>;
  input parameter check-privacy_ :: <C-signed-int>;
  input parameter reencode_ :: <C-signed-int>;
  input parameter filename_ :: <C-string>;
  input parameter result-mime_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_get_part_from_file";
end;

define C-function mail-quote-filename
  input parameter result_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter path_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mail_quote_filename";
end;

define C-function mailprivacy-prepare-mime
  input parameter mime_ :: <mailmime*>;
  c-name: "mailprivacy_prepare_mime";
end;

define C-function mailprivacy-dup-imf-file
  input parameter privacy_ :: <mailprivacy*>;
  input parameter source-filename_ :: <C-string>;
  result res :: <C-string>;
  c-name: "mailprivacy_dup_imf_file";
end;

define C-function mailprivacy-mime-fields-dup
  input parameter privacy_ :: <mailprivacy*>;
  input parameter mime-fields_ :: <mailmime-fields*>;
  result res :: <mailmime-fields*>;
  c-name: "mailprivacy_mime_fields_dup";
end;

define C-function mailmime-parameter-dup
  input parameter param_ :: <mailmime-parameter*>;
  result res :: <mailmime-parameter*>;
  c-name: "mailmime_parameter_dup";
end;

define C-function mailmime-composite-type-dup
  input parameter composite-type_ :: <mailmime-composite-type*>;
  result res :: <mailmime-composite-type*>;
  c-name: "mailmime_composite_type_dup";
end;

define C-function mailmime-discrete-type-dup
  input parameter discrete-type_ :: <mailmime-discrete-type*>;
  result res :: <mailmime-discrete-type*>;
  c-name: "mailmime_discrete_type_dup";
end;

define C-function mailmime-type-dup
  input parameter type_ :: <mailmime-type*>;
  result res :: <mailmime-type*>;
  c-name: "mailmime_type_dup";
end;

define C-function mailmime-content-dup
  input parameter content_ :: <mailmime-content*>;
  result res :: <mailmime-content*>;
  c-name: "mailmime_content_dup";
end;

define C-function mailmime-param-new-with-data
  input parameter name_ :: <C-string>;
  input parameter value_ :: <C-string>;
  result res :: <mailmime-parameter*>;
  c-name: "mailmime_param_new_with_data";
end;

define C-function mailprivacy-fetch-decoded-to-file
  input parameter privacy_ :: <mailprivacy*>;
  input parameter filename_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter msg_ :: <mailmessage*>;
  input parameter mime_ :: <mailmime*>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_fetch_decoded_to_file";
end;

define C-function mailprivacy-get-mime
  input parameter privacy_ :: <mailprivacy*>;
  input parameter check-privacy_ :: <C-signed-int>;
  input parameter reencode_ :: <C-signed-int>;
  input parameter content_ :: <C-string>;
  input parameter content-len_ :: <size-t>;
  input parameter result-mime_ :: <mailmime**>;
  result res :: <C-signed-int>;
  c-name: "mailprivacy_get_mime";
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

define C-struct <anonymous-1391>
  slot anonymous-1391$sasl-conn :: <C-void*>;
  slot anonymous-1391$sasl-server-fqdn :: <C-string>;
  slot anonymous-1391$sasl-login :: <C-string>;
  slot anonymous-1391$sasl-auth-name :: <C-string>;
  slot anonymous-1391$sasl-password :: <C-string>;
  slot anonymous-1391$sasl-realm :: <C-string>;
  slot anonymous-1391$sasl-secret :: <C-void*>;
end;

define constant <smtp-logger> = <C-function-pointer>;
define C-struct <mailsmtp>
  slot mailsmtp$stream :: <mailstream*>;
  slot mailsmtp$progr-rate :: <C-unsigned-long>;
  slot mailsmtp$progr-fun :: <progress-function*>;
  slot mailsmtp$response :: <C-string>;
  slot mailsmtp$line-buffer :: <MMAPString*>;
  slot mailsmtp$response-buffer :: <MMAPString*>;
  slot mailsmtp$esmtp :: <C-signed-int>;
  slot mailsmtp$auth :: <C-signed-int>;
  slot mailsmtp$smtp-sasl :: <anonymous-1391>;
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
  input parameter user_ :: <C-string>;
  input parameter pass_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_auth";
end;

define C-function mailsmtp-auth-type
  input parameter session_ :: <mailsmtp*>;
  input parameter user_ :: <C-string>;
  input parameter pass_ :: <C-string>;
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
  input parameter from_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_mail";
end;

define C-function mailsmtp-rcpt
  input parameter session_ :: <mailsmtp*>;
  input parameter to_ :: <C-string>;
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
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_data_message";
end;

define C-function mailsmtp-data-message-quit
  input parameter session_ :: <mailsmtp*>;
  input parameter message_ :: <C-string>;
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
  input parameter from_ :: <C-string>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_mail";
end;

define C-function mailesmtp-mail-size
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <C-string>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_mail_size";
end;

define C-function mailesmtp-rcpt
  input parameter session_ :: <mailsmtp*>;
  input parameter to_ :: <C-string>;
  input parameter notify_ :: <C-signed-int>;
  input parameter orcpt_ :: <C-string>;
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
  result res :: <C-string>;
  c-name: "mailsmtp_strerror";
end;

define C-function mailesmtp-auth-sasl
  input parameter session_ :: <mailsmtp*>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
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

define C-function mailsmtp-init
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_init";
end;

define C-function mailsmtp-init-with-ip
  input parameter session_ :: <mailsmtp*>;
  input parameter useip_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_init_with_ip";
end;

define C-function mailesmtp-send
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <C-string>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <C-string>;
  input parameter addresses_ :: <clist*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_send";
end;

define C-function mailesmtp-send-quit
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <C-string>;
  input parameter return-full_ :: <C-signed-int>;
  input parameter envid_ :: <C-string>;
  input parameter addresses_ :: <clist*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailesmtp_send_quit";
end;

define C-function mailsmtp-send
  input parameter session_ :: <mailsmtp*>;
  input parameter from_ :: <C-string>;
  input parameter addresses_ :: <clist*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_send";
end;

define C-function esmtp-address-list-new
  result res :: <clist*>;
  c-name: "esmtp_address_list_new";
end;

define C-function esmtp-address-list-add
  input parameter list_ :: <clist*>;
  input parameter address_ :: <C-string>;
  input parameter notify_ :: <C-signed-int>;
  input parameter orcpt_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "esmtp_address_list_add";
end;

define C-function esmtp-address-list-free
  input parameter l_ :: <clist*>;
  c-name: "esmtp_address_list_free";
end;

define C-function smtp-address-list-new
  result res :: <clist*>;
  c-name: "smtp_address_list_new";
end;

define C-function smtp-address-list-add
  input parameter list_ :: <clist*>;
  input parameter address_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "smtp_address_list_add";
end;

define C-function smtp-address-list-free
  input parameter l_ :: <clist*>;
  c-name: "smtp_address_list_free";
end;

define C-function mailsmtp-oauth2-authenticate
  input parameter session_ :: <mailsmtp*>;
  input parameter auth-user_ :: <C-string>;
  input parameter access-token_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_oauth2_authenticate";
end;

define C-function mailsmtp-oauth2-outlook-authenticate
  input parameter session_ :: <mailsmtp*>;
  input parameter auth-user_ :: <C-string>;
  input parameter access-token_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_oauth2_outlook_authenticate";
end;

define C-function mailsmtp-socket-connect
  input parameter session_ :: <mailsmtp*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_socket_connect";
end;

define C-function mailsmtp-socket-starttls
  input parameter session_ :: <mailsmtp*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_socket_starttls";
end;

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
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailsmtp-ssl-connect-with-callback
  input parameter session_ :: <mailsmtp*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailsmtp_ssl_connect_with_callback";
end;

define constant $MAILSMTP-NO-ERROR = 0;
define constant $MAILSMTP-ERROR-UNEXPECTED-CODE = 1;
define constant $MAILSMTP-ERROR-SERVICE-NOT-AVAILABLE = 2;
define constant $MAILSMTP-ERROR-STREAM = 3;
define constant $MAILSMTP-ERROR-HOSTNAME = 4;
define constant $MAILSMTP-ERROR-NOT-IMPLEMENTED = 5;
define constant $MAILSMTP-ERROR-ACTION-NOT-TAKEN = 6;
define constant $MAILSMTP-ERROR-EXCEED-STORAGE-ALLOCATION = 7;
define constant $MAILSMTP-ERROR-IN-PROCESSING = 8;
define constant $MAILSMTP-ERROR-INSUFFICIENT-SYSTEM-STORAGE = 9;
define constant $MAILSMTP-ERROR-MAILBOX-UNAVAILABLE = 10;
define constant $MAILSMTP-ERROR-MAILBOX-NAME-NOT-ALLOWED = 11;
define constant $MAILSMTP-ERROR-BAD-SEQUENCE-OF-COMMAND = 12;
define constant $MAILSMTP-ERROR-USER-NOT-LOCAL = 13;
define constant $MAILSMTP-ERROR-TRANSACTION-FAILED = 14;
define constant $MAILSMTP-ERROR-MEMORY = 15;
define constant $MAILSMTP-ERROR-AUTH-NOT-SUPPORTED = 16;
define constant $MAILSMTP-ERROR-AUTH-LOGIN = 17;
define constant $MAILSMTP-ERROR-AUTH-REQUIRED = 18;
define constant $MAILSMTP-ERROR-AUTH-TOO-WEAK = 19;
define constant $MAILSMTP-ERROR-AUTH-TRANSITION-NEEDED = 20;
define constant $MAILSMTP-ERROR-AUTH-TEMPORARY-FAILTURE = 21;
define constant $MAILSMTP-ERROR-AUTH-ENCRYPTION-REQUIRED = 22;
define constant $MAILSMTP-ERROR-STARTTLS-TEMPORARY-FAILURE = 23;
define constant $MAILSMTP-ERROR-STARTTLS-NOT-SUPPORTED = 24;
define constant $MAILSMTP-ERROR-CONNECTION-REFUSED = 25;
define constant $MAILSMTP-ERROR-AUTH-AUTHENTICATION-FAILED = 26;
define constant $MAILSMTP-ERROR-SSL = 27;

define constant $MAILSMTP-AUTH-NOT-CHECKED = 0;
define constant $MAILSMTP-AUTH-CHECKED = 1;
define constant $MAILSMTP-AUTH-CRAM-MD5 = 2;
define constant $MAILSMTP-AUTH-PLAIN = 4;
define constant $MAILSMTP-AUTH-LOGIN = 8;
define constant $MAILSMTP-AUTH-DIGEST-MD5 = 16;
define constant $MAILSMTP-AUTH-GSSAPI = 32;
define constant $MAILSMTP-AUTH-SRP = 64;
define constant $MAILSMTP-AUTH-NTLM = 128;
define constant $MAILSMTP-AUTH-KERBEROS-V4 = 256;

define constant $MAILSMTP-ESMTP = 1;
define constant $MAILSMTP-ESMTP-EXPN = 2;
define constant $MAILSMTP-ESMTP-8BITMIME = 4;
define constant $MAILSMTP-ESMTP-SIZE = 8;
define constant $MAILSMTP-ESMTP-ETRN = 16;
define constant $MAILSMTP-ESMTP-STARTTLS = 32;
define constant $MAILSMTP-ESMTP-DSN = 64;
define constant $MAILSMTP-ESMTP-PIPELINING = 128;

define C-struct <esmtp-address>
  slot esmtp_address$address :: <C-string>;
  slot esmtp_address$notify :: <C-signed-int>;
  slot esmtp_address$orcpt :: <C-string>;
end;

define constant $MAILSMTP-DSN-NOTIFY-SUCCESS = 1;

define constant $MAILSMTP-DSN-NOTIFY-FAILURE = 2;

define constant $MAILSMTP-DSN-NOTIFY-DELAY = 4;

define constant $MAILSMTP-DSN-NOTIFY-NEVER = 8;

define C-function mailstorage-new
  input parameter sto-id_ :: <C-string>;
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
  input parameter fld-pathname_ :: <C-string>;
  input parameter fld-virtual-name_ :: <C-string>;
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

define constant $CONNECTION-TYPE-PLAIN = 0;
define constant $CONNECTION-TYPE-STARTTLS = 1;
define constant $CONNECTION-TYPE-TRY-STARTTLS = 2;
define constant $CONNECTION-TYPE-TLS = 3;
define constant $CONNECTION-TYPE-COMMAND = 4;
define constant $CONNECTION-TYPE-COMMAND-STARTTLS = 5;
define constant $CONNECTION-TYPE-COMMAND-TRY-STARTTLS = 6;
define constant $CONNECTION-TYPE-COMMAND-TLS = 7;

define C-function mailstream-new
  input parameter low_ :: <mailstream-low*>;
  input parameter buffer-size_ :: <size-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_new";
end;

define C-function mailstream-write
  input parameter s_ :: <mailstream*>;
  input parameter buf_ :: <C-void*>;
  input parameter count_ :: <size-t>;
  result res :: <ssize-t>;
  c-name: "mailstream_write";
end;

define C-function mailstream-read
  input parameter s_ :: <mailstream*>;
  input parameter buf_ :: <C-void*>;
  input parameter count_ :: <size-t>;
  result res :: <ssize-t>;
  c-name: "mailstream_read";
end;

define C-function mailstream-close
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_close";
end;

define C-function mailstream-flush
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_flush";
end;

define C-function mailstream-feed-read-buffer
  input parameter s_ :: <mailstream*>;
  result res :: <ssize-t>;
  c-name: "mailstream_feed_read_buffer";
end;

define C-function mailstream-log-error
  input parameter s_ :: <mailstream*>;
  input parameter buf_ :: <C-string>;
  input parameter count_ :: <size-t>;
  c-name: "mailstream_log_error";
end;

define C-function mailstream-get-low
  input parameter s_ :: <mailstream*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_get_low";
end;

define C-function mailstream-set-low
  input parameter s_ :: <mailstream*>;
  input parameter low_ :: <mailstream-low*>;
  c-name: "mailstream_set_low";
end;

define C-function mailstream-cancel
  input parameter s_ :: <mailstream*>;
  c-name: "mailstream_cancel";
end;

define C-function mailstream-set-privacy
  input parameter s_ :: <mailstream*>;
  input parameter can-be-public_ :: <C-signed-int>;
  c-name: "mailstream_set_privacy";
end;

 /* Ignoring declaration for {<variable-declaration> #x00A18E00} "mailstream-debug"*/
define C-function mailstream-logger
  input parameter direction_ :: <C-signed-int>;
  input parameter str_ :: <C-string>;
  input parameter size_ :: <size-t>;
  c-name: "mailstream_logger";
end;

define C-function mailstream-logger-id
  input parameter s_ :: <mailstream-low*>;
  input parameter is-stream-data_ :: <C-signed-int>;
  input parameter direction_ :: <C-signed-int>;
  input parameter str_ :: <C-string>;
  input parameter size_ :: <size-t>;
  c-name: "mailstream_logger_id";
end;

define constant <logger> = <C-function-pointer>;
define C-function mailstream-set-logger
  input parameter s_ :: <mailstream*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "mailstream_set_logger";
end;

define C-function mailstream-wait-idle
  input parameter s_ :: <mailstream*>;
  input parameter max-idle-delay_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_wait_idle";
end;

define C-function mailstream-setup-idle
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_setup_idle";
end;

define C-function mailstream-unsetup-idle
  input parameter s_ :: <mailstream*>;
  c-name: "mailstream_unsetup_idle";
end;

define C-function mailstream-interrupt-idle
  input parameter s_ :: <mailstream*>;
  c-name: "mailstream_interrupt_idle";
end;

define C-function mailstream-get-certificate-chain
  input parameter s_ :: <mailstream*>;
  result res :: <carray*>;
  c-name: "mailstream_get_certificate_chain";
end;

define C-function mailstream-certificate-chain-free
  input parameter certificate-chain_ :: <carray*>;
  c-name: "mailstream_certificate_chain_free";
end;

define constant <__darwin-suseconds-t> = <__int32-t>;

define C-struct <timeval>
  slot timeval$tv-sec :: <C-signed-long>;
  slot timeval$tv-usec :: <C-signed-int>;
end;

 /* Ignoring declaration for {<variable-declaration> #x00A1C770} "mailstream-network-delay"*/
 /* Ignoring declaration for {<variable-declaration> #x008ADCE8} "mailstream-cfstream-enabled"*/
 /* Ignoring declaration for {<variable-declaration> #x008ADCB0} "mailstream-cfstream-voip-enabled"*/
define constant $MAILSTREAM-CFSTREAM-SSL-ALLOWS-EXPIRED-CERTIFICATES = 1;
define constant $MAILSTREAM-CFSTREAM-SSL-ALLOWS-EXPIRED-ROOTS = 2;
define constant $MAILSTREAM-CFSTREAM-SSL-ALLOWS-ANY-ROOT = 4;
define constant $MAILSTREAM-CFSTREAM-SSL-DISABLE-VALIDATES-CERTIFICATE-CHAIN = 8;
define constant $MAILSTREAM-CFSTREAM-SSL-NO-VERIFICATION = 15;

define constant $MAILSTREAM-CFSTREAM-SSL-LEVEL-NONE = 0;
define constant $MAILSTREAM-CFSTREAM-SSL-LEVEL-SSLv2 = 1;
define constant $MAILSTREAM-CFSTREAM-SSL-LEVEL-SSLv3 = 2;
define constant $MAILSTREAM-CFSTREAM-SSL-LEVEL-TLSv1 = 3;
define constant $MAILSTREAM-CFSTREAM-SSL-LEVEL-NEGOCIATED-SSL = 4;

 /* Ignoring declaration for {<variable-declaration> #x008AD070} "mailstream-cfstream-driver"*/
define constant <int16-t> = <C-signed-short>;

define C-function mailstream-cfstream-open
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_cfstream_open";
end;

define C-function mailstream-cfstream-open-timeout
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_cfstream_open_timeout";
end;

define C-function mailstream-cfstream-open-voip
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <mailstream*>;
  c-name: "mailstream_cfstream_open_voip";
end;

define C-function mailstream-cfstream-open-voip-timeout
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_cfstream_open_voip_timeout";
end;

define C-function mailstream-low-cfstream-open
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_cfstream_open";
end;

define C-function mailstream-low-cfstream-open-timeout
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_cfstream_open_timeout";
end;

define C-function mailstream-low-cfstream-open-voip
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_cfstream_open_voip";
end;

define C-function mailstream-low-cfstream-open-voip-timeout
  input parameter hostname_ :: <C-string>;
  input parameter port_ :: <int16-t>;
  input parameter voip-enabled_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_cfstream_open_voip_timeout";
end;

define C-function mailstream-cfstream-set-ssl-verification-mask
  input parameter s_ :: <mailstream*>;
  input parameter verification-mask_ :: <C-signed-int>;
  c-name: "mailstream_cfstream_set_ssl_verification_mask";
end;

define C-function mailstream-cfstream-set-ssl-peer-name
  input parameter s_ :: <mailstream*>;
  input parameter peer-name_ :: <C-string>;
  c-name: "mailstream_cfstream_set_ssl_peer_name";
end;

define C-function mailstream-cfstream-set-ssl-is-server
  input parameter s_ :: <mailstream*>;
  input parameter is-server_ :: <C-signed-int>;
  c-name: "mailstream_cfstream_set_ssl_is_server";
end;

define C-function mailstream-cfstream-set-ssl-level
  input parameter s_ :: <mailstream*>;
  input parameter ssl-level_ :: <C-signed-int>;
  c-name: "mailstream_cfstream_set_ssl_level";
end;

define C-function mailstream-cfstream-set-ssl-enabled
  input parameter s_ :: <mailstream*>;
  input parameter ssl-enabled_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_cfstream_set_ssl_enabled";
end;

define C-function mailstream-cfstream-is-ssl-enabled
  input parameter s_ :: <mailstream*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_cfstream_is_ssl_enabled";
end;

define C-function mailstream-cfstream-wait-idle
  input parameter s_ :: <mailstream*>;
  input parameter max-idle-delay_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_cfstream_wait_idle";
end;

define C-function mailstream-low-cfstream-wait-idle
  input parameter low_ :: <mailstream-low*>;
  input parameter max-idle-delay_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_cfstream_wait_idle";
end;

 /* Ignoring declaration for {<variable-declaration> #x00E0F690} "mailstream-compress-driver"*/
define C-struct <mailstream-compress-context>
end;

define C-function mailstream-low-compress-open
  input parameter ms_ :: <mailstream-low*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_compress_open";
end;

define C-function mailstream-low-compress-wait-idle
  input parameter low_ :: <mailstream-low*>;
  input parameter idle_ :: <mailstream-cancel*>;
  input parameter max-idle-delay_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_compress_wait_idle";
end;

define constant $USE-DEFLATE = 1;

define C-function mailstream-read-line
  input parameter stream_ :: <mailstream*>;
  input parameter line_ :: <MMAPString*>;
  result res :: <C-string>;
  c-name: "mailstream_read_line";
end;

define C-function mailstream-read-line-append
  input parameter stream_ :: <mailstream*>;
  input parameter line_ :: <MMAPString*>;
  result res :: <C-string>;
  c-name: "mailstream_read_line_append";
end;

define C-function mailstream-read-line-remove-eol
  input parameter stream_ :: <mailstream*>;
  input parameter line_ :: <MMAPString*>;
  result res :: <C-string>;
  c-name: "mailstream_read_line_remove_eol";
end;

define C-function mailstream-read-multiline
  input parameter s_ :: <mailstream*>;
  input parameter size_ :: <size-t>;
  input parameter stream-buffer_ :: <MMAPString*>;
  input parameter multiline-buffer_ :: <MMAPString*>;
  input parameter progr-rate_ :: <size-t>;
  input parameter progr-fun_ :: <progress-function*>;
  input parameter body-progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  result res :: <C-string>;
  c-name: "mailstream_read_multiline";
end;

define C-function mailstream-is-end-multiline
  input parameter line_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailstream_is_end_multiline";
end;

define C-function mailstream-send-data-crlf
  input parameter s_ :: <mailstream*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter progr-rate_ :: <size-t>;
  input parameter progr-fun_ :: <progress-function*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_send_data_crlf";
end;

define C-function mailstream-send-data-crlf-with-context
  input parameter s_ :: <mailstream*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_send_data_crlf_with_context";
end;

define C-function mailstream-send-data
  input parameter s_ :: <mailstream*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter progr-rate_ :: <size-t>;
  input parameter progr-fun_ :: <progress-function*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_send_data";
end;

define C-function mailstream-send-data-with-context
  input parameter s_ :: <mailstream*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  input parameter progr-fun_ :: <mailprogress-function*>;
  input parameter context_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_send_data_with_context";
end;

define C-function mailstream-get-data-crlf-size
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <size-t>;
  c-name: "mailstream_get_data_crlf_size";
end;

define C-function mailstream-low-new
  input parameter data_ :: <C-void*>;
  input parameter driver_ :: <mailstream-low-driver*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_new";
end;

define C-function mailstream-low-write
  input parameter s_ :: <mailstream-low*>;
  input parameter buf_ :: <C-void*>;
  input parameter count_ :: <size-t>;
  result res :: <ssize-t>;
  c-name: "mailstream_low_write";
end;

define C-function mailstream-low-read
  input parameter s_ :: <mailstream-low*>;
  input parameter buf_ :: <C-void*>;
  input parameter count_ :: <size-t>;
  result res :: <ssize-t>;
  c-name: "mailstream_low_read";
end;

define C-function mailstream-low-close
  input parameter s_ :: <mailstream-low*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_close";
end;

define C-function mailstream-low-get-fd
  input parameter s_ :: <mailstream-low*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_get_fd";
end;

define C-function mailstream-low-get-cancel
  input parameter s_ :: <mailstream-low*>;
  result res :: <mailstream-cancel*>;
  c-name: "mailstream_low_get_cancel";
end;

define C-function mailstream-low-free
  input parameter s_ :: <mailstream-low*>;
  c-name: "mailstream_low_free";
end;

define C-function mailstream-low-cancel
  input parameter s_ :: <mailstream-low*>;
  c-name: "mailstream_low_cancel";
end;

define C-function mailstream-low-log-error
  input parameter s_ :: <mailstream-low*>;
  input parameter buf_ :: <C-void*>;
  input parameter count_ :: <size-t>;
  c-name: "mailstream_low_log_error";
end;

define C-function mailstream-low-set-privacy
  input parameter s_ :: <mailstream-low*>;
  input parameter can-be-public_ :: <C-signed-int>;
  c-name: "mailstream_low_set_privacy";
end;

define C-function mailstream-low-set-identifier
  input parameter s_ :: <mailstream-low*>;
  input parameter identifier_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_set_identifier";
end;

define C-function mailstream-low-get-identifier
  input parameter s_ :: <mailstream-low*>;
  result res :: <C-string>;
  c-name: "mailstream_low_get_identifier";
end;

define C-function mailstream-low-set-timeout
  input parameter s_ :: <mailstream-low*>;
  input parameter timeout_ :: <time-t>;
  c-name: "mailstream_low_set_timeout";
end;

define C-function mailstream-low-get-timeout
  input parameter s_ :: <mailstream-low*>;
  result res :: <time-t>;
  c-name: "mailstream_low_get_timeout";
end;

define constant <logger> = <C-function-pointer>;
define C-function mailstream-low-set-logger
  input parameter s_ :: <mailstream-low*>;
  input parameter logger_ :: <logger>;
  input parameter logger-context_ :: <C-void*>;
  c-name: "mailstream_low_set_logger";
end;

define C-function mailstream-low-get-certificate-chain
  input parameter s_ :: <mailstream-low*>;
  result res :: <carray*>;
  c-name: "mailstream_low_get_certificate_chain";
end;

define C-function mailstream-low-wait-idle
  input parameter low_ :: <mailstream-low*>;
  input parameter cancel_ :: <mailstream-cancel*>;
  input parameter max-idle-delay_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_wait_idle";
end;

define C-function mailstream-low-setup-idle
  input parameter low_ :: <mailstream-low*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_setup_idle";
end;

define C-function mailstream-low-unsetup-idle
  input parameter low_ :: <mailstream-low*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_unsetup_idle";
end;

define C-function mailstream-low-interrupt-idle
  input parameter low_ :: <mailstream-low*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_low_interrupt_idle";
end;

 /* Ignoring declaration for {<variable-declaration> #x00B6EDC8} "mailstream-socket-driver"*/
define C-function mailstream-low-socket-open
  input parameter fd_ :: <C-signed-int>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_socket_open";
end;

define C-function mailstream-socket-set-use-read
  input parameter stream_ :: <mailstream*>;
  input parameter use-read_ :: <C-signed-int>;
  c-name: "mailstream_socket_set_use_read";
end;

define C-function mailstream-socket-open
  input parameter fd_ :: <C-signed-int>;
  result res :: <mailstream*>;
  c-name: "mailstream_socket_open";
end;

define C-function mailstream-socket-open-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_socket_open_timeout";
end;

define C-function mailstream-low-ssl-open
  input parameter fd_ :: <C-signed-int>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_ssl_open";
end;

define C-function mailstream-low-ssl-open-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_ssl_open_timeout";
end;

define C-function mailstream-low-tls-open
  input parameter fd_ :: <C-signed-int>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_tls_open";
end;

define C-function mailstream-low-tls-open-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_tls_open_timeout";
end;

define C-function mailstream-ssl-open
  input parameter fd_ :: <C-signed-int>;
  result res :: <mailstream*>;
  c-name: "mailstream_ssl_open";
end;

define C-function mailstream-ssl-open-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  result res :: <mailstream*>;
  c-name: "mailstream_ssl_open_timeout";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-ssl-open-with-callback
  input parameter fd_ :: <C-signed-int>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream*>;
  c-name: "mailstream_ssl_open_with_callback";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-ssl-open-with-callback-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream*>;
  c-name: "mailstream_ssl_open_with_callback_timeout";
end;

define C-function mailstream-gnutls-init-not-required
  c-name: "mailstream_gnutls_init_not_required";
end;

define C-function mailstream-openssl-init-not-required
  c-name: "mailstream_openssl_init_not_required";
end;

define C-function mailstream-ssl-init-not-required
  c-name: "mailstream_ssl_init_not_required";
end;

define C-pointer-type <unsigned-char**> => <unsigned-char*>;
define C-function mailstream-ssl-get-certificate
  input parameter stream_ :: <mailstream*>;
  input parameter cert-DER_ :: <unsigned-char**>;
  result res :: <ssize-t>;
  c-name: "mailstream_ssl_get_certificate";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-low-ssl-open-with-callback
  input parameter fd_ :: <C-signed-int>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_ssl_open_with_callback";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-low-ssl-open-with-callback-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_ssl_open_with_callback_timeout";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-low-tls-open-with-callback
  input parameter fd_ :: <C-signed-int>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_tls_open_with_callback";
end;

define constant <callback> = <C-function-pointer>;
define C-function mailstream-low-tls-open-with-callback-timeout
  input parameter fd_ :: <C-signed-int>;
  input parameter timeout_ :: <time-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <mailstream-low*>;
  c-name: "mailstream_low_tls_open_with_callback_timeout";
end;

define C-function mailstream-ssl-set-client-certicate
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  input parameter file-name_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailstream_ssl_set_client_certicate";
end;

define C-function mailstream-ssl-set-client-certificate-data
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  input parameter x509-der_ :: <unsigned-char*>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailstream_ssl_set_client_certificate_data";
end;

define C-function mailstream-ssl-set-client-private-key-data
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  input parameter pkey-der_ :: <unsigned-char*>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "mailstream_ssl_set_client_private_key_data";
end;

define C-function mailstream-ssl-set-server-certicate
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  input parameter CAfile_ :: <C-string>;
  input parameter CApath_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailstream_ssl_set_server_certicate";
end;

define C-function mailstream-ssl-get-openssl-ssl-ctx
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  result res :: <C-void*>;
  c-name: "mailstream_ssl_get_openssl_ssl_ctx";
end;

define C-function mailstream-ssl-get-fd
  input parameter ssl-context_ :: <mailstream-ssl-context*>;
  result res :: <C-signed-int>;
  c-name: "mailstream_ssl_get_fd";
end;

define constant $MAILSTREAM-LOG-TYPE-INFO-RECEIVED = 0;
define constant $MAILSTREAM-LOG-TYPE-INFO-SENT = 1;
define constant $MAILSTREAM-LOG-TYPE-ERROR-PARSE = 2;
define constant $MAILSTREAM-LOG-TYPE-ERROR-RECEIVED = 3;
define constant $MAILSTREAM-LOG-TYPE-ERROR-SENT = 4;
define constant $MAILSTREAM-LOG-TYPE-DATA-RECEIVED = 5;
define constant $MAILSTREAM-LOG-TYPE-DATA-SENT = 6;
define constant $MAILSTREAM-LOG-TYPE-DATA-SENT-PRIVATE = 7;

define constant $MAILSTREAM-IDLE-ERROR = 0;
define constant $MAILSTREAM-IDLE-INTERRUPTED = 1;
define constant $MAILSTREAM-IDLE-HASDATA = 2;
define constant $MAILSTREAM-IDLE-TIMEOUT = 3;
define constant $MAILSTREAM-IDLE-CANCELLED = 4;

define C-pointer-type <mailmessage-tree**> => <mailmessage-tree*>;
define constant <comp-func> = <C-function-pointer>;
define C-function mail-build-thread
  input parameter type_ :: <C-signed-int>;
  input parameter default-from_ :: <C-string>;
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

define constant $MAIL-THREAD-REFERENCES = 0;
define constant $MAIL-THREAD-REFERENCES-NO-SUBJECT = 1;
define constant $MAIL-THREAD-ORDEREDSUBJECT = 2;
define constant $MAIL-THREAD-NONE = 3;

 /* Ignoring declaration for {<variable-declaration> #x01007690} "mbox-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x01072460} "mbox-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F94F88} "mbox-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F778C0} "mbox-message-driver"*/
define constant $MBOXDRIVER-SET-READ-ONLY = 1;
define constant $MBOXDRIVER-SET-NO-UID = 2;

define C-struct <mbox-session-state-data>
  slot mbox_session_state_data$mbox-folder :: <mailmbox-folder*>;
  slot mbox_session_state_data$mbox-force-read-only :: <C-signed-int>;
  slot mbox_session_state_data$mbox-force-no-uid :: <C-signed-int>;
end;

define constant $MBOXDRIVER-CACHED-SET-READ-ONLY = 1;
define constant $MBOXDRIVER-CACHED-SET-NO-UID = 2;
define constant $MBOXDRIVER-CACHED-SET-CACHE-DIRECTORY = 3;
define constant $MBOXDRIVER-CACHED-SET-FLAGS-DIRECTORY = 4;

define C-struct <mbox-cached-session-state-data>
  slot mbox_cached_session_state_data$mbox-ancestor :: <mailsession*>;
  slot mbox_cached_session_state_data$mbox-quoted-mb :: <C-string>;
  array slot mbox_cached_session_state_data$mbox-cache-directory :: <C-signed-char>, length: 1024;
  array slot mbox_cached_session_state_data$mbox-flags-directory :: <C-signed-char>, length: 1024;
  slot mbox_cached_session_state_data$mbox-flags-store :: <mail-flags-store*>;
end;

define C-struct <mbox-mailstorage>
  slot mbox_mailstorage$mbox-pathname :: <C-string>;
  slot mbox_mailstorage$mbox-cached :: <C-signed-int>;
  slot mbox_mailstorage$mbox-cache-directory :: <C-string>;
  slot mbox_mailstorage$mbox-flags-directory :: <C-string>;
end;

define C-function mbox-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter mb-pathname_ :: <C-string>;
  input parameter mb-cached_ :: <C-signed-int>;
  input parameter mb-cache-directory_ :: <C-string>;
  input parameter mb-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mbox_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x0104D700} "mh-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x01011930} "mh-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x0104DAB8} "mh-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x010079D8} "mh-message-driver"*/
define C-struct <mh-session-state-data>
  slot mh_session_state_data$mh-session :: <mailmh*>;
  slot mh_session_state_data$mh-cur-folder :: <mailmh-folder*>;
  slot mh_session_state_data$mh-subscribed-list :: <clist*>;
end;

define constant $MHDRIVER-CACHED-SET-CACHE-DIRECTORY = 1;
define constant $MHDRIVER-CACHED-SET-FLAGS-DIRECTORY = 2;

define C-struct <mh-cached-session-state-data>
  slot mh_cached_session_state_data$mh-ancestor :: <mailsession*>;
  slot mh_cached_session_state_data$mh-quoted-mb :: <C-string>;
  array slot mh_cached_session_state_data$mh-cache-directory :: <C-signed-char>, length: 1024;
  array slot mh_cached_session_state_data$mh-flags-directory :: <C-signed-char>, length: 1024;
  slot mh_cached_session_state_data$mh-flags-store :: <mail-flags-store*>;
end;

define C-struct <mh-mailstorage>
  slot mh_mailstorage$mh-pathname :: <C-string>;
  slot mh_mailstorage$mh-cached :: <C-signed-int>;
  slot mh_mailstorage$mh-cache-directory :: <C-string>;
  slot mh_mailstorage$mh-flags-directory :: <C-string>;
end;

define C-function mh-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter mh-pathname_ :: <C-string>;
  input parameter mh-cached_ :: <C-signed-int>;
  input parameter mh-cache-directory_ :: <C-string>;
  input parameter mh-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mh_mailstorage_init";
end;

 /* Ignoring declaration for {<variable-declaration> #x00F93690} "mime-message-driver"*/
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
  input parameter tmpdir_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mime_message_set_tmpdir";
end;

define C-function mmap-string-set-tmpdir
  input parameter directory_ :: <C-string>;
  c-name: "mmap_string_set_tmpdir";
end;

define C-function mmap-string-new
  input parameter init_ :: <C-string>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_new";
end;

define C-function mmap-string-new-len
  input parameter init_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_new_len";
end;

define C-function mmap-string-sized-new
  input parameter dfl-size_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_sized_new";
end;

define C-function mmap-string-free
  input parameter string_ :: <MMAPString*>;
  c-name: "mmap_string_free";
end;

define C-function mmap-string-assign
  input parameter string_ :: <MMAPString*>;
  input parameter rval_ :: <C-string>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_assign";
end;

define C-function mmap-string-truncate
  input parameter string_ :: <MMAPString*>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_truncate";
end;

define C-function mmap-string-set-size
  input parameter string_ :: <MMAPString*>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_set_size";
end;

define C-function mmap-string-insert-len
  input parameter string_ :: <MMAPString*>;
  input parameter pos_ :: <size-t>;
  input parameter val_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_insert_len";
end;

define C-function mmap-string-append
  input parameter string_ :: <MMAPString*>;
  input parameter val_ :: <C-string>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_append";
end;

define C-function mmap-string-append-len
  input parameter string_ :: <MMAPString*>;
  input parameter val_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_append_len";
end;

define C-function mmap-string-append-c
  input parameter string_ :: <MMAPString*>;
  input parameter c_ :: <C-signed-char>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_append_c";
end;

define C-function mmap-string-prepend
  input parameter string_ :: <MMAPString*>;
  input parameter val_ :: <C-string>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_prepend";
end;

define C-function mmap-string-prepend-c
  input parameter string_ :: <MMAPString*>;
  input parameter c_ :: <C-signed-char>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_prepend_c";
end;

define C-function mmap-string-prepend-len
  input parameter string_ :: <MMAPString*>;
  input parameter val_ :: <C-string>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_prepend_len";
end;

define C-function mmap-string-insert
  input parameter string_ :: <MMAPString*>;
  input parameter pos_ :: <size-t>;
  input parameter val_ :: <C-string>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_insert";
end;

define C-function mmap-string-insert-c
  input parameter string_ :: <MMAPString*>;
  input parameter pos_ :: <size-t>;
  input parameter c_ :: <C-signed-char>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_insert_c";
end;

define C-function mmap-string-erase
  input parameter string_ :: <MMAPString*>;
  input parameter pos_ :: <size-t>;
  input parameter len_ :: <size-t>;
  result res :: <MMAPString*>;
  c-name: "mmap_string_erase";
end;

define C-function mmap-string-set-ceil
  input parameter ceil_ :: <size-t>;
  c-name: "mmap_string_set_ceil";
end;

define C-function mmap-string-ref
  input parameter string_ :: <MMAPString*>;
  result res :: <C-signed-int>;
  c-name: "mmap_string_ref";
end;

define C-function mmap-string-unref
  input parameter str_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mmap_string_unref";
end;

define C-function newsfeed-new
  result res :: <newsfeed*>;
  c-name: "newsfeed_new";
end;

define C-function newsfeed-free
  input parameter feed_ :: <newsfeed*>;
  c-name: "newsfeed_free";
end;

define C-function newsfeed-get-response-code
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_get_response_code";
end;

define C-function newsfeed-set-url
  input parameter feed_ :: <newsfeed*>;
  input parameter url_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_url";
end;

define C-function newsfeed-get-url
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_url";
end;

define C-function newsfeed-set-title
  input parameter feed_ :: <newsfeed*>;
  input parameter title_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_title";
end;

define C-function newsfeed-get-title
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_title";
end;

define C-function newsfeed-set-description
  input parameter feed_ :: <newsfeed*>;
  input parameter description_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_description";
end;

define C-function newsfeed-get-description
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_description";
end;

define C-function newsfeed-set-language
  input parameter feed_ :: <newsfeed*>;
  input parameter language_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_language";
end;

define C-function newsfeed-get-language
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_language";
end;

define C-function newsfeed-set-author
  input parameter feed_ :: <newsfeed*>;
  input parameter author_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_author";
end;

define C-function newsfeed-get-author
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_author";
end;

define C-function newsfeed-set-generator
  input parameter feed_ :: <newsfeed*>;
  input parameter generator_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_set_generator";
end;

define C-function newsfeed-get-generator
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-string>;
  c-name: "newsfeed_get_generator";
end;

define C-function newsfeed-item-list-get-count
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-unsigned-int>;
  c-name: "newsfeed_item_list_get_count";
end;

define C-struct <newsfeed-item-enclosure>
  slot newsfeed_item_enclosure$fie-url :: <C-string>;
  slot newsfeed_item_enclosure$fie-type :: <C-string>;
  slot newsfeed_item_enclosure$fie-size :: <C-unsigned-long>;
end;

define C-pointer-type <newsfeed-item-enclosure*> => <newsfeed-item-enclosure>;
define C-struct <newsfeed-item>
  slot newsfeed_item$fi-url :: <C-string>;
  slot newsfeed_item$fi-title :: <C-string>;
  slot newsfeed_item$fi-summary :: <C-string>;
  slot newsfeed_item$fi-text :: <C-string>;
  slot newsfeed_item$fi-author :: <C-string>;
  slot newsfeed_item$fi-id :: <C-string>;
  slot newsfeed_item$fi-date-published :: <C-signed-long>;
  slot newsfeed_item$fi-date-modified :: <C-signed-long>;
  slot newsfeed_item$fi-feed :: <newsfeed*>;
  slot newsfeed_item$fi-enclosure :: <newsfeed-item-enclosure*>;
end;

define C-pointer-type <newsfeed-item*> => <newsfeed-item>;
define C-function newsfeed-get-item
  input parameter feed_ :: <newsfeed*>;
  input parameter n_ :: <C-unsigned-int>;
  result res :: <newsfeed-item*>;
  c-name: "newsfeed_get_item";
end;

define C-function newsfeed-set-date
  input parameter feed_ :: <newsfeed*>;
  input parameter date_ :: <time-t>;
  c-name: "newsfeed_set_date";
end;

define C-function newsfeed-get-date
  input parameter feed_ :: <newsfeed*>;
  result res :: <time-t>;
  c-name: "newsfeed_get_date";
end;

define C-function newsfeed-set-timeout
  input parameter feed_ :: <newsfeed*>;
  input parameter timeout_ :: <C-unsigned-int>;
  c-name: "newsfeed_set_timeout";
end;

define C-function newsfeed-get-timeout
  input parameter feed_ :: <newsfeed*>;
  result res :: <C-unsigned-int>;
  c-name: "newsfeed_get_timeout";
end;

define C-function newsfeed-add-item
  input parameter feed_ :: <newsfeed*>;
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_add_item";
end;

define C-function newsfeed-update
  input parameter feed_ :: <newsfeed*>;
  input parameter last-update_ :: <time-t>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_update";
end;

define C-function newsfeed-item-new
  input parameter feed_ :: <newsfeed*>;
  result res :: <newsfeed-item*>;
  c-name: "newsfeed_item_new";
end;

define C-function newsfeed-item-free
  input parameter item_ :: <newsfeed-item*>;
  c-name: "newsfeed_item_free";
end;

define C-function newsfeed-item-get-feed
  input parameter item_ :: <newsfeed-item*>;
  result res :: <newsfeed*>;
  c-name: "newsfeed_item_get_feed";
end;

define C-function newsfeed-item-get-url
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_url";
end;

define C-function newsfeed-item-set-url
  input parameter item_ :: <newsfeed-item*>;
  input parameter url_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_url";
end;

define C-function newsfeed-item-get-title
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_title";
end;

define C-function newsfeed-item-set-title
  input parameter item_ :: <newsfeed-item*>;
  input parameter title_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_title";
end;

define C-function newsfeed-item-get-summary
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_summary";
end;

define C-function newsfeed-item-set-summary
  input parameter item_ :: <newsfeed-item*>;
  input parameter summary_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_summary";
end;

define C-function newsfeed-item-get-text
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_text";
end;

define C-function newsfeed-item-set-text
  input parameter item_ :: <newsfeed-item*>;
  input parameter text_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_text";
end;

define C-function newsfeed-item-get-author
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_author";
end;

define C-function newsfeed-item-set-author
  input parameter item_ :: <newsfeed-item*>;
  input parameter author_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_author";
end;

define C-function newsfeed-item-get-id
  input parameter item_ :: <newsfeed-item*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_get_id";
end;

define C-function newsfeed-item-set-id
  input parameter item_ :: <newsfeed-item*>;
  input parameter id_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_set_id";
end;

define C-function newsfeed-item-get-date-published
  input parameter item_ :: <newsfeed-item*>;
  result res :: <time-t>;
  c-name: "newsfeed_item_get_date_published";
end;

define C-function newsfeed-item-set-date-published
  input parameter item_ :: <newsfeed-item*>;
  input parameter date_ :: <time-t>;
  c-name: "newsfeed_item_set_date_published";
end;

define C-function newsfeed-item-get-date-modified
  input parameter item_ :: <newsfeed-item*>;
  result res :: <time-t>;
  c-name: "newsfeed_item_get_date_modified";
end;

define C-function newsfeed-item-set-date-modified
  input parameter item_ :: <newsfeed-item*>;
  input parameter date_ :: <time-t>;
  c-name: "newsfeed_item_set_date_modified";
end;

define C-function newsfeed-item-get-enclosure
  input parameter item_ :: <newsfeed-item*>;
  result res :: <newsfeed-item-enclosure*>;
  c-name: "newsfeed_item_get_enclosure";
end;

define C-function newsfeed-item-set-enclosure
  input parameter item_ :: <newsfeed-item*>;
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  c-name: "newsfeed_item_set_enclosure";
end;

define C-function newsfeed-item-enclosure-new
  result res :: <newsfeed-item-enclosure*>;
  c-name: "newsfeed_item_enclosure_new";
end;

define C-function newsfeed-item-enclosure-free
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  c-name: "newsfeed_item_enclosure_free";
end;

define C-function newsfeed-item-enclosure-get-url
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_enclosure_get_url";
end;

define C-function newsfeed-item-enclosure-set-url
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  input parameter url_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_enclosure_set_url";
end;

define C-function newsfeed-item-enclosure-get-type
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  result res :: <C-string>;
  c-name: "newsfeed_item_enclosure_get_type";
end;

define C-function newsfeed-item-enclosure-set-type
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  input parameter type_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsfeed_item_enclosure_set_type";
end;

define C-function newsfeed-item-enclosure-get-size
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  result res :: <size-t>;
  c-name: "newsfeed_item_enclosure_get_size";
end;

define C-function newsfeed-item-enclosure-set-size
  input parameter enclosure_ :: <newsfeed-item-enclosure*>;
  input parameter size_ :: <size-t>;
  c-name: "newsfeed_item_enclosure_set_size";
end;

define constant $NEWSFEED-NO-ERROR = 0;
define constant $NEWSFEED-ERROR-CANCELLED = 1;
define constant $NEWSFEED-ERROR-INTERNAL = 2;
define constant $NEWSFEED-ERROR-BADURL = 3;
define constant $NEWSFEED-ERROR-RESOLVE-PROXY = 4;
define constant $NEWSFEED-ERROR-RESOLVE-HOST = 5;
define constant $NEWSFEED-ERROR-CONNECT = 6;
define constant $NEWSFEED-ERROR-STREAM = 7;
define constant $NEWSFEED-ERROR-PROTOCOL = 8;
define constant $NEWSFEED-ERROR-PARSE = 9;
define constant $NEWSFEED-ERROR-ACCESS = 10;
define constant $NEWSFEED-ERROR-AUTHENTICATION = 11;
define constant $NEWSFEED-ERROR-FTP = 12;
define constant $NEWSFEED-ERROR-PARTIAL-FILE = 13;
define constant $NEWSFEED-ERROR-FETCH = 14;
define constant $NEWSFEED-ERROR-HTTP = 15;
define constant $NEWSFEED-ERROR-FILE = 16;
define constant $NEWSFEED-ERROR-PUT = 17;
define constant $NEWSFEED-ERROR-MEMORY = 18;
define constant $NEWSFEED-ERROR-SSL = 19;
define constant $NEWSFEED-ERROR-LDAP = 20;
define constant $NEWSFEED-ERROR-UNSUPPORTED-PROTOCOL = 21;

define constant <nntp-logger> = <C-function-pointer>;
define C-struct <newsnntp>
  slot newsnntp$nntp-stream :: <mailstream*>;
  slot newsnntp$nntp-readonly :: <C-signed-int>;
  slot newsnntp$nntp-progr-rate :: <C-unsigned-int>;
  slot newsnntp$nntp-progr-fun :: <progress-function*>;
  slot newsnntp$nntp-stream-buffer :: <MMAPString*>;
  slot newsnntp$nntp-response-buffer :: <MMAPString*>;
  slot newsnntp$nntp-response :: <C-string>;
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
  input parameter str_ :: <C-string>;
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
  input parameter msg-id_ :: <C-string>;
  input parameter result_ :: <char**>;
  input parameter result-len_ :: <size-t*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_article_by_message_id";
end;

define C-function newsnntp-article-free
  input parameter str_ :: <C-string>;
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
  input parameter str_ :: <C-string>;
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
  slot tm$tm-zone :: <C-string>;
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
  input parameter username_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_username";
end;

define C-function newsnntp-authinfo-password
  input parameter session_ :: <newsnntp*>;
  input parameter password_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_password";
end;

define C-function newsnntp-post
  input parameter session_ :: <newsnntp*>;
  input parameter message_ :: <C-string>;
  input parameter size_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_post";
end;

define C-struct <newsnntp-group-info>
  slot newsnntp_group_info$grp-name :: <C-string>;
  slot newsnntp_group_info$grp-first :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-last :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-count :: <C-unsigned-int>;
  slot newsnntp_group_info$grp-type :: <C-signed-char>;
end;

define C-pointer-type <newsnntp-group-info*> => <newsnntp-group-info>;
define C-pointer-type <newsnntp-group-info**> => <newsnntp-group-info*>;
define C-function newsnntp-group
  input parameter session_ :: <newsnntp*>;
  input parameter groupname_ :: <C-string>;
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
  input parameter wildmat_ :: <C-string>;
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
  input parameter pattern_ :: <C-string>;
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
  input parameter group-name_ :: <C-string>;
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
  input parameter header_ :: <C-string>;
  input parameter article_ :: <uint32-t>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_xhdr_single";
end;

define C-function newsnntp-xhdr-range
  input parameter session_ :: <newsnntp*>;
  input parameter header_ :: <C-string>;
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
  slot newsnntp_xover_resp_item$ovr-subject :: <C-string>;
  slot newsnntp_xover_resp_item$ovr-author :: <C-string>;
  slot newsnntp_xover_resp_item$ovr-date :: <C-string>;
  slot newsnntp_xover_resp_item$ovr-message-id :: <C-string>;
  slot newsnntp_xover_resp_item$ovr-references :: <C-string>;
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
  input parameter authentificator_ :: <C-string>;
  input parameter arguments_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_authinfo_generic";
end;

define C-function newsnntp-socket-connect
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_socket_connect";
end;

define C-function newsnntp-ssl-connect
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_ssl_connect";
end;

define constant <callback> = <C-function-pointer>;
define C-function newsnntp-ssl-connect-with-callback
  input parameter f_ :: <newsnntp*>;
  input parameter server_ :: <C-string>;
  input parameter port_ :: <uint16-t>;
  input parameter callback_ :: <callback>;
  input parameter data_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "newsnntp_ssl_connect_with_callback";
end;

define constant $NEWSNNTP-NO-ERROR = 0;
define constant $NEWSNNTP-WARNING-REQUEST-AUTHORIZATION-USERNAME = 1;
define constant $NEWSNNTP-ERROR-REQUEST-AUTHORIZATION-USERNAME = 1;
define constant $NEWSNNTP-WARNING-REQUEST-AUTHORIZATION-PASSWORD = 2;
define constant $NEWSNNTP-ERROR-STREAM = 3;
define constant $NEWSNNTP-ERROR-UNEXPECTED = 4;
define constant $NEWSNNTP-ERROR-NO-NEWSGROUP-SELECTED = 5;
define constant $NEWSNNTP-ERROR-NO-ARTICLE-SELECTED = 6;
define constant $NEWSNNTP-ERROR-INVALID-ARTICLE-NUMBER = 7;
define constant $NEWSNNTP-ERROR-ARTICLE-NOT-FOUND = 8;
define constant $NEWSNNTP-ERROR-UNEXPECTED-RESPONSE = 9;
define constant $NEWSNNTP-ERROR-INVALID-RESPONSE = 10;
define constant $NEWSNNTP-ERROR-NO-SUCH-NEWS-GROUP = 11;
define constant $NEWSNNTP-ERROR-POSTING-NOT-ALLOWED = 12;
define constant $NEWSNNTP-ERROR-POSTING-FAILED = 13;
define constant $NEWSNNTP-ERROR-PROGRAM-ERROR = 14;
define constant $NEWSNNTP-ERROR-NO-PERMISSION = 15;
define constant $NEWSNNTP-ERROR-COMMAND-NOT-UNDERSTOOD = 16;
define constant $NEWSNNTP-ERROR-COMMAND-NOT-SUPPORTED = 17;
define constant $NEWSNNTP-ERROR-CONNECTION-REFUSED = 18;
define constant $NEWSNNTP-ERROR-MEMORY = 19;
define constant $NEWSNNTP-ERROR-AUTHENTICATION-REJECTED = 20;
define constant $NEWSNNTP-ERROR-BAD-STATE = 21;
define constant $NEWSNNTP-ERROR-SSL = 22;
define constant $NEWSNNTP-ERROR-AUTHENTICATION-OUT-OF-SEQUENCE = 23;

define C-struct <newsnntp-group-time>
  slot newsnntp_group_time$grp-name :: <C-string>;
  slot newsnntp_group_time$grp-date :: <C-unsigned-int>;
  slot newsnntp_group_time$grp-email :: <C-string>;
end;

define C-struct <newsnntp-distrib-value-meaning>
  slot newsnntp_distrib_value_meaning$dst-value :: <C-string>;
  slot newsnntp_distrib_value_meaning$dst-meaning :: <C-string>;
end;

define C-struct <newsnntp-distrib-default-value>
  slot newsnntp_distrib_default_value$dst-weight :: <C-unsigned-int>;
  slot newsnntp_distrib_default_value$dst-group-pattern :: <C-string>;
  slot newsnntp_distrib_default_value$dst-value :: <C-string>;
end;

define C-struct <newsnntp-group-description>
  slot newsnntp_group_description$grp-name :: <C-string>;
  slot newsnntp_group_description$grp-description :: <C-string>;
end;

define C-struct <newsnntp-xhdr-resp-item>
  slot newsnntp_xhdr_resp_item$hdr-article :: <C-unsigned-int>;
  slot newsnntp_xhdr_resp_item$hdr-value :: <C-string>;
end;

 /* Ignoring declaration for {<variable-declaration> #x010803F0} "nntp-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x010CA3B8} "nntp-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x010DE0E0} "nntp-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x010AF348} "nntp-message-driver"*/
define constant $NNTPDRIVER-SET-MAX-ARTICLES = 1;

define C-struct <nntp-session-state-data>
  slot nntp_session_state_data$nntp-session :: <newsnntp*>;
  slot nntp_session_state_data$nntp-userid :: <C-string>;
  slot nntp_session_state_data$nntp-password :: <C-string>;
  slot nntp_session_state_data$nntp-group-info :: <newsnntp-group-info*>;
  slot nntp_session_state_data$nntp-group-name :: <C-string>;
  slot nntp_session_state_data$nntp-subscribed-list :: <clist*>;
  slot nntp_session_state_data$nntp-max-articles :: <C-unsigned-int>;
  slot nntp_session_state_data$nntp-mode-reader :: <C-signed-int>;
end;

define constant $NNTPDRIVER-CACHED-SET-MAX-ARTICLES = 1;
define constant $NNTPDRIVER-CACHED-SET-CACHE-DIRECTORY = 2;
define constant $NNTPDRIVER-CACHED-SET-FLAGS-DIRECTORY = 3;

define C-struct <nntp-cached-session-state-data>
  slot nntp_cached_session_state_data$nntp-ancestor :: <mailsession*>;
  array slot nntp_cached_session_state_data$nntp-cache-directory :: <C-signed-char>, length: 1024;
  array slot nntp_cached_session_state_data$nntp-flags-directory :: <C-signed-char>, length: 1024;
  slot nntp_cached_session_state_data$nntp-flags-store :: <mail-flags-store*>;
end;

define C-struct <nntp-mailstorage>
  slot nntp_mailstorage$nntp-servername :: <C-string>;
  slot nntp_mailstorage$nntp-port :: <C-unsigned-short>;
  slot nntp_mailstorage$nntp-command :: <C-string>;
  slot nntp_mailstorage$nntp-connection-type :: <C-signed-int>;
  slot nntp_mailstorage$nntp-auth-type :: <C-signed-int>;
  slot nntp_mailstorage$nntp-login :: <C-string>;
  slot nntp_mailstorage$nntp-password :: <C-string>;
  slot nntp_mailstorage$nntp-cached :: <C-signed-int>;
  slot nntp_mailstorage$nntp-cache-directory :: <C-string>;
  slot nntp_mailstorage$nntp-flags-directory :: <C-string>;
  slot nntp_mailstorage$nntp-local-address :: <C-string>;
  slot nntp_mailstorage$nntp-local-port :: <C-unsigned-short>;
end;

define constant $NNTP-AUTH-TYPE-PLAIN = 0;

define C-function nntp-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter nntp-servername_ :: <C-string>;
  input parameter nntp-port_ :: <uint16-t>;
  input parameter nntp-command_ :: <C-string>;
  input parameter nntp-connection-type_ :: <C-signed-int>;
  input parameter nntp-auth-type_ :: <C-signed-int>;
  input parameter nntp-login_ :: <C-string>;
  input parameter nntp-password_ :: <C-string>;
  input parameter nntp-cached_ :: <C-signed-int>;
  input parameter nntp-cache-directory_ :: <C-string>;
  input parameter nntp-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "nntp_mailstorage_init";
end;

define C-function nntp-mailstorage-init-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter nntp-servername_ :: <C-string>;
  input parameter nntp-port_ :: <uint16-t>;
  input parameter nntp-local-servername_ :: <C-string>;
  input parameter nntp-local-port_ :: <uint16-t>;
  input parameter nntp-command_ :: <C-string>;
  input parameter nntp-connection-type_ :: <C-signed-int>;
  input parameter nntp-auth-type_ :: <C-signed-int>;
  input parameter nntp-login_ :: <C-string>;
  input parameter nntp-password_ :: <C-string>;
  input parameter nntp-cached_ :: <C-signed-int>;
  input parameter nntp-cache-directory_ :: <C-string>;
  input parameter nntp-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "nntp_mailstorage_init_with_local_address";
end;

 /* Ignoring declaration for {<variable-declaration> #x00F73B98} "pop3-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F7B3F0} "pop3-cached-session-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F81188} "pop3-cached-message-driver"*/
 /* Ignoring declaration for {<variable-declaration> #x00F779D8} "pop3-message-driver"*/
define constant $POP3DRIVER-SET-AUTH-TYPE = 1;

define constant $POP3DRIVER-AUTH-TYPE-PLAIN = 0;
define constant $POP3DRIVER-AUTH-TYPE-APOP = 1;
define constant $POP3DRIVER-AUTH-TYPE-TRY-APOP = 2;

define constant <pop3-ssl-callback> = <C-function-pointer>;
define C-struct <pop3-session-state-data>
  slot pop3_session_state_data$pop3-auth-type :: <C-signed-int>;
  slot pop3_session_state_data$pop3-session :: <mailpop3*>;
  slot pop3_session_state_data$pop3-ssl-callback :: <pop3-ssl-callback>;
  slot pop3_session_state_data$pop3-ssl-cb-data :: <C-void*>;
end;

define constant $POP3DRIVER-CACHED-SET-AUTH-TYPE = 1;
define constant $POP3DRIVER-CACHED-SET-SSL-CALLBACK = 2;
define constant $POP3DRIVER-CACHED-SET-SSL-CALLBACK-DATA = 3;
define constant $POP3DRIVER-CACHED-SET-CACHE-DIRECTORY = 1001;
define constant $POP3DRIVER-CACHED-SET-FLAGS-DIRECTORY = 1002;

define C-struct <pop3-cached-session-state-data>
  slot pop3_cached_session_state_data$pop3-ancestor :: <mailsession*>;
  array slot pop3_cached_session_state_data$pop3-cache-directory :: <C-signed-char>, length: 1024;
  array slot pop3_cached_session_state_data$pop3-flags-directory :: <C-signed-char>, length: 1024;
  slot pop3_cached_session_state_data$pop3-flags-hash :: <chash*>;
  slot pop3_cached_session_state_data$pop3-flags-array :: <carray*>;
  slot pop3_cached_session_state_data$pop3-flags-store :: <mail-flags-store*>;
end;

define C-struct <anonymous-1547>
  slot anonymous-1547$sasl-enabled :: <C-signed-int>;
  slot anonymous-1547$sasl-auth-type :: <C-string>;
  slot anonymous-1547$sasl-server-fqdn :: <C-string>;
  slot anonymous-1547$sasl-local-ip-port :: <C-string>;
  slot anonymous-1547$sasl-remote-ip-port :: <C-string>;
  slot anonymous-1547$sasl-login :: <C-string>;
  slot anonymous-1547$sasl-auth-name :: <C-string>;
  slot anonymous-1547$sasl-password :: <C-string>;
  slot anonymous-1547$sasl-realm :: <C-string>;
end;

define C-struct <pop3-mailstorage>
  slot pop3_mailstorage$pop3-servername :: <C-string>;
  slot pop3_mailstorage$pop3-port :: <C-unsigned-short>;
  slot pop3_mailstorage$pop3-command :: <C-string>;
  slot pop3_mailstorage$pop3-connection-type :: <C-signed-int>;
  slot pop3_mailstorage$pop3-auth-type :: <C-signed-int>;
  slot pop3_mailstorage$pop3-login :: <C-string>;
  slot pop3_mailstorage$pop3-password :: <C-string>;
  slot pop3_mailstorage$pop3-cached :: <C-signed-int>;
  slot pop3_mailstorage$pop3-cache-directory :: <C-string>;
  slot pop3_mailstorage$pop3-flags-directory :: <C-string>;
  slot pop3_mailstorage$pop3-sasl :: <anonymous-1547>;
  slot pop3_mailstorage$pop3-local-address :: <C-string>;
  slot pop3_mailstorage$pop3-local-port :: <C-unsigned-short>;
end;

define constant $POP3-AUTH-TYPE-PLAIN = 0;
define constant $POP3-AUTH-TYPE-APOP = 1;
define constant $POP3-AUTH-TYPE-TRY-APOP = 2;
define constant $POP3-AUTH-TYPE-SASL-ANONYMOUS = 3;
define constant $POP3-AUTH-TYPE-SASL-CRAM-MD5 = 4;
define constant $POP3-AUTH-TYPE-SASL-KERBEROS-V4 = 5;
define constant $POP3-AUTH-TYPE-SASL-PLAIN = 6;
define constant $POP3-AUTH-TYPE-SASL-SCRAM-MD5 = 7;
define constant $POP3-AUTH-TYPE-SASL-GSSAPI = 8;
define constant $POP3-AUTH-TYPE-SASL-DIGEST-MD5 = 9;

define constant $POP3-SASL-AUTH-TYPE-APOP = "X-LIBETPAN-APOP";

define constant $POP3-SASL-AUTH-TYPE-TRY-APOP = "X-LIBETPAN-TRY-APOP";

define C-function pop3-mailstorage-init
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <C-string>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <C-string>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter pop3-auth-type_ :: <C-signed-int>;
  input parameter pop3-login_ :: <C-string>;
  input parameter pop3-password_ :: <C-string>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <C-string>;
  input parameter pop3-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init";
end;

define C-function pop3-mailstorage-init-sasl
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <C-string>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <C-string>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <C-string>;
  input parameter pop3-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init_sasl";
end;

define C-function pop3-mailstorage-init-sasl-with-local-address
  input parameter storage_ :: <mailstorage*>;
  input parameter pop3-servername_ :: <C-string>;
  input parameter pop3-port_ :: <uint16-t>;
  input parameter imap-local-address_ :: <C-string>;
  input parameter imap-local-port_ :: <uint16-t>;
  input parameter pop3-command_ :: <C-string>;
  input parameter pop3-connection-type_ :: <C-signed-int>;
  input parameter auth-type_ :: <C-string>;
  input parameter server-fqdn_ :: <C-string>;
  input parameter local-ip-port_ :: <C-string>;
  input parameter remote-ip-port_ :: <C-string>;
  input parameter login_ :: <C-string>;
  input parameter auth-name_ :: <C-string>;
  input parameter password_ :: <C-string>;
  input parameter realm_ :: <C-string>;
  input parameter pop3-cached_ :: <C-signed-int>;
  input parameter pop3-cache-directory_ :: <C-string>;
  input parameter pop3-flags-directory_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "pop3_mailstorage_init_sasl_with_local_address";
end;

 /* Ignoring declaration for {<variable-declaration> #x00C26C40} "mailimap-extension-qresync"*/
define C-struct <mailimap-qresync-vanished>
  slot mailimap_qresync_vanished$qr-earlier :: <C-signed-int>;
  slot mailimap_qresync_vanished$qr-known-uids :: <mailimap-set*>;
end;

define C-pointer-type <mailimap-qresync-vanished*> => <mailimap-qresync-vanished>;
define C-pointer-type <mailimap-qresync-vanished**> => <mailimap-qresync-vanished*>;
define C-function mailimap-select-qresync
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  input parameter uidvalidity_ :: <uint32-t>;
  input parameter modseq-value_ :: <uint64-t>;
  input parameter known-uids_ :: <mailimap-set*>;
  input parameter seq-match-data-sequences_ :: <mailimap-set*>;
  input parameter seq-match-data-uids_ :: <mailimap-set*>;
  input parameter fetch-result_ :: <clist**>;
  input parameter p-vanished_ :: <mailimap-qresync-vanished**>;
  input parameter p-mod-sequence-value_ :: <uint64-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_select_qresync";
end;

define C-function mailimap-fetch-qresync
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter mod-sequence-value_ :: <uint64-t>;
  input parameter fetch-result_ :: <clist**>;
  input parameter p-vanished_ :: <mailimap-qresync-vanished**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_fetch_qresync";
end;

define C-function mailimap-uid-fetch-qresync
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fetch-type_ :: <mailimap-fetch-type*>;
  input parameter mod-sequence-value_ :: <uint64-t>;
  input parameter fetch-result_ :: <clist**>;
  input parameter p-vanished_ :: <mailimap-qresync-vanished**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_fetch_qresync";
end;

define C-function mailimap-has-qresync
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_qresync";
end;

define constant $MAILIMAP-QRESYNC-TYPE-VANISHED = 0;
define constant $MAILIMAP-QRESYNC-TYPE-RESP-TEXT-CODE = 1;

define constant $MAILIMAP-QRESYNC-RESPTEXTCODE-CLOSED = 0;

define C-struct <mailimap-qresync-resptextcode>
  slot mailimap_qresync_resptextcode$qr-type :: <C-signed-int>;
end;

define C-function mailimap-qresync-vanished-new
  input parameter qr-earlier_ :: <C-signed-int>;
  input parameter qr-known-uids_ :: <mailimap-set*>;
  result res :: <mailimap-qresync-vanished*>;
  c-name: "mailimap_qresync_vanished_new";
end;

define C-function mailimap-qresync-vanished-free
  input parameter vanished_ :: <mailimap-qresync-vanished*>;
  c-name: "mailimap_qresync_vanished_free";
end;

define C-pointer-type <mailimap-qresync-resptextcode*> => <mailimap-qresync-resptextcode>;
define C-function mailimap-qresync-resptextcode-new
  input parameter qr-type_ :: <C-signed-int>;
  result res :: <mailimap-qresync-resptextcode*>;
  c-name: "mailimap_qresync_resptextcode_new";
end;

define C-function mailimap-qresync-resptextcode-free
  input parameter resptextcode_ :: <mailimap-qresync-resptextcode*>;
  c-name: "mailimap_qresync_resptextcode_free";
end;

 /* Ignoring declaration for {<variable-declaration> #x00E92930} "mailimap-extension-uidplus"*/
define C-function mailimap-uid-expunge
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_expunge";
end;

define C-function mailimap-uidplus-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <C-string>;
  input parameter uidvalidity-result_ :: <uint32-t*>;
  input parameter source-result_ :: <mailimap-set**>;
  input parameter dest-result_ :: <mailimap-set**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uidplus_copy";
end;

define C-function mailimap-uidplus-uid-copy
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter mb_ :: <C-string>;
  input parameter uidvalidity-result_ :: <uint32-t*>;
  input parameter source-result_ :: <mailimap-set**>;
  input parameter dest-result_ :: <mailimap-set**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uidplus_uid_copy";
end;

define C-function mailimap-uidplus-append
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter flag-list_ :: <mailimap-flag-list*>;
  input parameter date-time_ :: <mailimap-date-time*>;
  input parameter literal_ :: <C-string>;
  input parameter literal-size_ :: <size-t>;
  input parameter uidvalidity-result_ :: <uint32-t*>;
  input parameter uid-result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uidplus_append";
end;

define C-function mailimap-uidplus-append-simple
  input parameter session_ :: <mailimap*>;
  input parameter mailbox_ :: <C-string>;
  input parameter content_ :: <C-string>;
  input parameter size_ :: <uint32-t>;
  input parameter uidvalidity-result_ :: <uint32-t*>;
  input parameter uid-result_ :: <uint32-t*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uidplus_append_simple";
end;

define C-function mailimap-has-uidplus
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_uidplus";
end;

define constant $MAILIMAP-UIDPLUS-RESP-CODE-APND = 0;
define constant $MAILIMAP-UIDPLUS-RESP-CODE-COPY = 1;
define constant $MAILIMAP-UIDPLUS-RESP-CODE-UIDNOTSTICKY = 2;

define C-struct <mailimap-uidplus-resp-code-apnd>
  slot mailimap_uidplus_resp_code_apnd$uid-uidvalidity :: <C-unsigned-int>;
  slot mailimap_uidplus_resp_code_apnd$uid-set :: <mailimap-set*>;
end;

define C-struct <mailimap-uidplus-resp-code-copy>
  slot mailimap_uidplus_resp_code_copy$uid-uidvalidity :: <C-unsigned-int>;
  slot mailimap_uidplus_resp_code_copy$uid-source-set :: <mailimap-set*>;
  slot mailimap_uidplus_resp_code_copy$uid-dest-set :: <mailimap-set*>;
end;

define C-pointer-type <mailimap-uidplus-resp-code-apnd*> => <mailimap-uidplus-resp-code-apnd>;
define C-function mailimap-uidplus-resp-code-apnd-new
  input parameter uid-uidvalidity_ :: <uint32-t>;
  input parameter uid-set_ :: <mailimap-set*>;
  result res :: <mailimap-uidplus-resp-code-apnd*>;
  c-name: "mailimap_uidplus_resp_code_apnd_new";
end;

define C-function mailimap-uidplus-resp-code-apnd-free
  input parameter resp-code-apnd_ :: <mailimap-uidplus-resp-code-apnd*>;
  c-name: "mailimap_uidplus_resp_code_apnd_free";
end;

define C-pointer-type <mailimap-uidplus-resp-code-copy*> => <mailimap-uidplus-resp-code-copy>;
define C-function mailimap-uidplus-resp-code-copy-new
  input parameter uid-uidvalidity_ :: <uint32-t>;
  input parameter uid-source-set_ :: <mailimap-set*>;
  input parameter uid-dest-set_ :: <mailimap-set*>;
  result res :: <mailimap-uidplus-resp-code-copy*>;
  c-name: "mailimap_uidplus_resp_code_copy_new";
end;

define C-function mailimap-uidplus-resp-code-copy-free
  input parameter resp-code-copy_ :: <mailimap-uidplus-resp-code-copy*>;
  c-name: "mailimap_uidplus_resp_code_copy_free";
end;

define C-function mailimap-uidplus-free
  input parameter ext-data_ :: <mailimap-extension-data*>;
  c-name: "mailimap_uidplus_free";
end;

define C-struct <mailimap-msg-att-xgmlabels>
  slot mailimap_msg_att_xgmlabels$att-labels :: <clist*>;
end;

 /* Ignoring declaration for {<variable-declaration> #x00D96DC8} "mailimap-extension-xgmlabels"*/
define C-function mailimap-fetch-att-new-xgmlabels
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_xgmlabels";
end;

define C-function mailimap-has-xgmlabels
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_xgmlabels";
end;

define C-pointer-type <mailimap-msg-att-xgmlabels*> => <mailimap-msg-att-xgmlabels>;
define C-function mailimap-msg-att-xgmlabels-new
  input parameter att-labels_ :: <clist*>;
  result res :: <mailimap-msg-att-xgmlabels*>;
  c-name: "mailimap_msg_att_xgmlabels_new";
end;

define C-function mailimap-msg-att-xgmlabels-new-empty
  result res :: <mailimap-msg-att-xgmlabels*>;
  c-name: "mailimap_msg_att_xgmlabels_new_empty";
end;

define C-function mailimap-msg-att-xgmlabels-add
  input parameter att_ :: <mailimap-msg-att-xgmlabels*>;
  input parameter label_ :: <C-string>;
  result res :: <C-signed-int>;
  c-name: "mailimap_msg_att_xgmlabels_add";
end;

define C-function mailimap-msg-att-xgmlabels-free
  input parameter att_ :: <mailimap-msg-att-xgmlabels*>;
  c-name: "mailimap_msg_att_xgmlabels_free";
end;

define C-function mailimap-store-xgmlabels
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fl-sign_ :: <C-signed-int>;
  input parameter fl-silent_ :: <C-signed-int>;
  input parameter labels_ :: <mailimap-msg-att-xgmlabels*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_store_xgmlabels";
end;

define C-function mailimap-uid-store-xgmlabels
  input parameter session_ :: <mailimap*>;
  input parameter set_ :: <mailimap-set*>;
  input parameter fl-sign_ :: <C-signed-int>;
  input parameter fl-silent_ :: <C-signed-int>;
  input parameter labels_ :: <mailimap-msg-att-xgmlabels*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_uid_store_xgmlabels";
end;

 /* Ignoring declaration for {<variable-declaration> #x00D8D620} "mailimap-extension-xgmmsgid"*/
define C-function mailimap-fetch-att-new-xgmmsgid
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_xgmmsgid";
end;

 /* Ignoring declaration for {<variable-declaration> #x00C243B8} "mailimap-extension-xgmthrid"*/
define C-function mailimap-fetch-att-new-xgmthrid
  result res :: <mailimap-fetch-att*>;
  c-name: "mailimap_fetch_att_new_xgmthrid";
end;

 /* Ignoring declaration for {<variable-declaration> #x00BC87E0} "mailimap-extension-xlist"*/
define C-function mailimap-xlist
  input parameter session_ :: <mailimap*>;
  input parameter mb_ :: <C-string>;
  input parameter list-mb_ :: <C-string>;
  input parameter result_ :: <clist**>;
  result res :: <C-signed-int>;
  c-name: "mailimap_xlist";
end;

define C-function mailimap-has-xlist
  input parameter session_ :: <mailimap*>;
  result res :: <C-signed-int>;
  c-name: "mailimap_has_xlist";
end;

define C-function clist-isempty
  parameter list :: <clist*>;
  result empty? :: <C-boolean>;
  c-name: "etpan_clist_isempty";
end C-function;

define C-function clist-count
  parameter list :: <clist*>;
  result count :: <C-int>;
  c-name: "etpan_clist_count";
end C-function;

define C-function clist-begin
  parameter list :: <clist*>;
  result first-cell :: <clistiter*>;
  c-name: "etpan_clist_begin";
end C-function;

define C-function clist-end
  parameter list :: <clist*>;
  result last-cell :: <clistiter*>;
  c-name: "etpan_clist_end";
end C-function;

define C-function clist-next
  parameter iter :: <clistiter*>;
  result next :: <clistiter*>;
  c-name: "etpan_clist_next";
end C-function;

define C-function clist-previous
  parameter iter :: <clistiter*>;
  result previous :: <clistiter*>;
  c-name: "etpan_clist_previous";
end C-function;

define C-function clist-content
  parameter iter :: <clistiter*>;
  result content :: <C-void*>;
  c-name: "etpan_clist_content";
end C-function;

define C-function clist-prepend
  parameter list :: <clist*>;
  parameter data :: <C-void*>;
  result res :: <C-int>;
  c-name: "etpan_clist_prepend";
end C-function;

define C-function clist-append
  parameter list :: <clist*>;
  parameter data :: <C-void*>;
  result res :: <C-int>;
  c-name: "etpan_clist_append";
end C-function;

// clist as a <sequence>
define method size (clist :: <clist*>)
  clist-count(clist)
end method size;

define method shallow-copy (clist :: <clist*>)  => (copy :: <clist*>)
  error("Not implemented");
end method shallow-copy;

define method element
    (clist :: <clist*>, key :: <clistiter*>,
     #key default = $unsupplied)
 => (element :: <object>)
  if (~null-pointer?(key))
    clist-content(key)
  elseif (default = $unsupplied)
    error("Attempt to access key %= which is outside of %=.", key,
          clist)
  else
    default
  end if
end method element;

define method element-setter
    (new-value :: <object>, clist :: <clist*>, key :: <integer>)
 => (new-value :: <object>)
  error("Attempt to assign key %= to %=.", key, clist)
end method element-setter;

define method forward-iteration-protocol
    (clist :: <clist*>)
 => (initial-state :: <clistcell*>, limit :: <clistcell*>,
     next-state :: <function>, finished-state? :: <function>,
     current-key :: <function>, current-element :: <function>,
     current-element-setter :: <function>, copy-state :: <function>)
  let initial-state = clist-begin(clist);
  let limit = clist-end(clist);
  let next-state = method (list :: <clist*>, state :: <clistiter*>)
    clist-next(state)
  end method;
  let finished-state? = method (list :: <clist*>, state :: <clistiter*>, limit :: <clistiter*>)
    null-pointer?(state)
  end method;
  let current-key = method (list :: <clist*>, state :: <clistiter*>)
    state
  end method;
  let current-element = element;
  let current-element-setter = element-setter;
  let copy-state = identity;

  values(
    initial-state, limit,
    next-state, finished-state?,
    current-key, current-element,
    current-element-setter, copy-state)
end method forward-iteration-protocol;
