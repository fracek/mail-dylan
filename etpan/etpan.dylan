Module: etpan
Synopsis: Bindings for libetpan.
Author: Francesco Ceccon
Copyright: See LICENSE file in this distribution.

define C-struct <mail-list>
end;
define C-pointer-type <mail-list*> => <mail-list>;
define C-pointer-type <mail-list**> => <mail-list*>;

define C-function mail-list-free
  parameter resp :: <mail-list*>;
  c-name: "mail_list_free";
end C-function;

define C-struct <mailmessage>
end;
define C-pointer-type <mailmessage*> => <mailmessage>;
define C-pointer-type <mailmessage**> => <mailmessage*>;

define C-function mailmessage-free
  parameter resp :: <mailmessage*>;
  c-name: "mailmessage_free";
end C-function;

define C-struct <mailmessage-list>
end;

define C-pointer-type <mailmessage-list*> => <mailmessage-list>;
define C-pointer-type <mailmessage-list**> => <mailmessage-list*>;

define C-function mailmessage-list-free
  parameter resp :: <mailmessage-list*>;
  c-name: "mailmessage_list_free";
end C-function;

define C-function libetpan-get-version-major
  result major-version :: <C-int>;
  c-name: "libetpan_get_version_major";
end C-function;

define C-function libetpan-get-version-minor
  result minor-version :: <C-int>;
  c-name: "libetpan_get_version_minor";
end C-function;

define C-struct <mailsession-driver>
end;
define C-pointer-type <mailsession-driver*> => <mailsession-driver>;

define C-struct <mailsession>
end;
define C-pointer-type <mailsession*> => <mailsession>;

define C-struct <mailstream>
end;
define C-pointer-type <mailstream*> => <mailstream>;

define C-struct <mail-flags>
end;
define C-pointer-type <mail-flags*> => <mail-flags>;

define C-function mailsession-new
  parameter session-driver :: <mailsession-driver*>;
  result new-session :: <mailsession*>;
  c-name: "mailsession_new";
end C-function;

define C-function mailsession-free
  parameter session :: <mailsession*>;
  c-name: "mailsession_free";
end C-function;

define C-function mailsession-parameters
  parameter session :: <mailsession*>;
  parameter id :: <C-int>;
  parameter value :: <C-void*>;
  result err :: <C-int>;
  c-name: "mailsession_parameters";
end C-function;

define C-function mailsession-connect-stream
  parameter session :: <mailsession*>;
  parameter stream :: <mailstream*>;
  result err :: <C-int>;
  c-name: "mailsession_connect_stream";
end C-function;

define C-function mailsession-connect-path
  parameter session :: <mailsession*>;
  parameter stream :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_connect_path";
end C-function;

define C-function mailsession-starttls
  parameter session :: <mailsession*>;
  result err :: <C-int>;
  c-name: "mailsession_starttls";
end C-function;

define C-function mailsession-login
  parameter session :: <mailsession*>;
  parameter userid :: <C-string>;
  parameter password :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_login";
end C-function;

define C-function mailsession-logout
  parameter session :: <mailsession*>;
  result err :: <C-int>;
  c-name: "mailsession_logout";
end C-function;

define C-function mailsession-noop
  parameter session :: <mailsession*>;
  result err :: <C-int>;
  c-name: "mailsession_noop";
end C-function;

// TODO: check if this works
define C-function mailsession-build-folder-name
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  parameter name :: <C-string>;
  output parameter result :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_build_folder_name";
end C-function;

define C-function mailsession-create-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_create_folder";
end C-function;

define C-function mailsession-delete-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_delete_folder";
end C-function;

define C-function mailsession-rename-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  parameter new-name :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_rename_folder";
end C-function;

define C-function mailsession-check-folder
  parameter session :: <mailsession*>;
  result err :: <C-int>;
  c-name: "mailsession_check_folder";
end C-function;

define C-function mailsession-examine-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_examine_folder";
end C-function;

define C-function mailsession-select-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_select_folder";
end C-function;

define C-function mailsession-expunge-folder
  parameter session :: <mailsession*>;
  result err :: <C-int>;
  c-name: "mailsession_expunge_folder";
end C-function;

define C-function mailsession-status-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result-messages :: <C-unsigned-int*>;
  output parameter result-recent :: <C-unsigned-int*>;
  output parameter result-unseen :: <C-unsigned-int*>;
  result err :: <C-int>;
  c-name: "mailsession_status_folder";
end C-function;

define C-function mailsession-messages-number
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result :: <C-unsigned-int*>;
  result err :: <C-int>;
  c-name: "mailsession_messages_number";
end C-function;

define C-function mailsession-recent-number
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result :: <C-unsigned-int*>;
  result err :: <C-int>;
  c-name: "mailsession_recent_number";
end C-function;

define C-function mailsession-unseen-number
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result :: <C-unsigned-int*>;
  result err :: <C-int>;
  c-name: "mailsession_unseen_number";
end C-function;

define C-function mailsession-list-folders
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result :: <mail-list**>;
  result err :: <C-int>;
  c-name: "mailsession_list_folders";
end C-function;

define C-function mailsession-lsub-folders
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  output parameter result :: <mail-list**>;
  result err :: <C-int>;
  c-name: "mailsession_lsub_folders";
end C-function;

define C-function mailsession-subscribe-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_subscribe_folder";
end C-function;

define C-function mailsession-unsubscribe-folder
  parameter session :: <mailsession*>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_unsubscribe_folder";
end C-function;

define C-function mailsession-append-message
  parameter session :: <mailsession*>;
  parameter message :: <C-string>;
  parameter size :: <C-unsigned-int>;
  result err :: <C-int>;
  c-name: "mailsession_append_message";
end C-function;

define C-function mailsession-append-message-flags
  parameter session :: <mailsession*>;
  parameter message :: <C-string>;
  parameter size :: <C-unsigned-int>;
  parameter flags :: <mail-flags*>;
  result err :: <C-int>;
  c-name: "mailsession_append_message_flags";
end C-function;

define C-function mailsession-copy-message
  parameter session :: <mailsession*>;
  parameter num :: <C-unsigned-int>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_copy_message";
end C-function;

define C-function mailsession-move-message
  parameter session :: <mailsession*>;
  parameter num :: <C-unsigned-int>;
  parameter mb :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_move_message";
end C-function;

define C-function mailsession-get-messages-list
  parameter session :: <mailsession*>;
  output parameter result :: <mailmessage-list**>;
  result err :: <C-int>;
  c-name: "mailsession_get_messages_list";
end C-function;

define C-function mailsession-get-envelopes-list
  parameter session :: <mailsession*>;
  output parameter result :: <mailmessage-list*>;
  result err :: <C-int>;
  c-name: "mailsession_get_envelopes_list";
end C-function;

define C-function mailsession-remove-message
  parameter session :: <mailsession*>;
  parameter num :: <C-unsigned-int>;
  result err :: <C-int>;
  c-name: "mailsession_remove_message";
end C-function;

define C-function mailsession-get-message
  parameter session :: <mailsession*>;
  parameter num :: <C-unsigned-int>;
  output parameter result :: <mailmessage**>;
  result err :: <C-int>;
  c-name: "mailsession_get_message";
end C-function;

define C-function mailsession-get-message-by-uid
  parameter session :: <mailsession*>;
  parameter uid :: <C-string>;
  output parameter result :: <mailmessage**>;
  result err :: <C-int>;
  c-name: "mailsession_get_message_by_uid";
end C-function;

define C-function mailsession-login-sasl
  parameter session :: <mailsession*>;
  parameter auth-type :: <C-string>;
  parameter server-fqdn :: <C-string>;
  parameter local-ip-port :: <C-string>;
  parameter remote-ip-port :: <C-string>;
  parameter login :: <C-string>;
  parameter auth-name :: <C-string>;
  parameter password :: <C-string>;
  parameter realm :: <C-string>;
  result err :: <C-int>;
  c-name: "mailsession_login_sasl";
end C-function;
