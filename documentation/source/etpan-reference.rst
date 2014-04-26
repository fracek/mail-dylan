LibEtPan Reference
******************

The LibEtPan Module
===================

Mail Session
------------

.. function:: mailsession-new

   :param session-driver: the session driver to use
   :value new-session: the created session

   :description:

       Create a new session, with the given driver.


.. function:: mailsession-free

   :param session: the session to free

   :description:

       Release the memory used by the session.

.. function:: mailsession-parameters

    :param session: the session
    :param id: is the command to send to the driver, usually, commands can be
               found in the header of the driver
    :param value: is the parameter of the specified call
    :value err: :const:`$MAIL_NO_ERROR` is returned on success,
                ``$MAIL_ERROR_XXX`` is returned on error

    :description:

        The function is used to make driver specific calls.

.. function:: mailsession-connect-stream

   :param session: the session
   :param stream: the stream
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error


   :description:

       There are drivers of two kinds : stream drivers (driver that connects
       to servers through TCP or other means of connection) and file drivers
       (driver that are based on filesystem)

       The following function can only be used by stream drivers.
       mailsession_connect_stream connects a stream to the session

.. function:: mailsession-connect-path

   :param session: the session
   :param path: the path
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error


   :description:

       The following function can only be used by file drivers.
       mailsession_connect_path selects the main path of the session


.. function:: mailsession-starttls

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: works only on stream drivers

       mailsession_starttls switches the current connection to TLS (secure layer)

.. function:: mailsession-login

   :param session: the session
   :param userid: the username used to authenticate
   :param password: the user password
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_login notifies the login and the password to authenticate
       to the session

.. function:: mailsession-login-sasl

   :param session: the session
   :param auth-type: type of SASL authentication
   :param server-fqdn: server full qualified domain name
   :param local-ip-port: local IP port (client)
   :param remote-ip-port: remote IP port (server)
   :param login: login
   :param auth-name: authentication name
   :param password: password
   :param realm: realm
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_login notifies the SASL authentication information
       to the session

.. function:: mailsession-logout

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: this function doesn't often work on filsystem drivers

       mailsession_logout deconnects the session and closes the stream.

.. function:: mailsession-noop

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_noop does no operation on the session, but it can be
       used to poll for the status of the connection.

.. function:: mailsession-build-folder-name

   :param session: the session
   :param mb: the parent mailbox
   :param name: the name of the folder to create
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the complete name of the folder to create

   :description:

       NOTE: driver's specific should be used

       mailsession_build_folder_name will return an allocated string with
       that contains the complete path of the folder to create

.. function:: mailsession-create-folder

   :param session: the session
   :param mb: the mailbox name
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: driver's specific should be used

       mailsession_create_folder creates the folder that corresponds to the
       given name

.. function:: mailsession-delete-folder

   :param session: the session
   :param mb: the mailbox name
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: driver's specific should be used

       mailsession_delete_folder deletes the folder that corresponds to the
       given name

.. function:: mailsession-rename-folder

   :param session: the session
   :param mb: the mailbox name
   :param new-name: the new mailbox name, the parent of the new folder can be
                    different
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_rename_folder changes the name of the folder

.. function:: mailsession-check-folder

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_check_folder makes a checkpoint of the session

.. function:: mailsession-examine-folder

   :param session: the session
   :param mb: the selected mailbox name
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: this function is not implemented in most drivers

       mailsession_examine_folder selects a mailbox as readonly

.. function:: mailsession-select-folder

   :param session: the session
   :param mb: the selected mailbox name
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_select_folder selects a mailbox

.. function:: mailsession-expunge-folder

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_expunge_folder deletes all messages marked \Deleted

.. function:: mailsession-status-folder

   :param session: the session
   :param mb: the mailbox to query
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result-messages: the number of messages
   :value result-recent: the number of recent messages
   :value result-unseen: the number of unseen messages

   :description:

       mailsession_status_folder queries the status of the folder
       (number of messages, number of recent messages, number of unseen messages)

.. function:: mailsession-messages-number

   :param session: the session
   :param mb: the mailbox to query
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the number of messages in the mailbox

   :description:

       mailsession_messages_number queries the number of messages in the folder

.. function:: mailsession-recent-number

   :param session: the session
   :param mb: the mailbox to query
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the number of recent messages in the mailbox

   :description:

       mailsession_recent_number queries the number of recent messages in the folder

.. function:: mailsession-unseen-number

   :param session: the session
   :param mb: the mailbox to query
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the number of unseen messages in the mailbox

   :description:

       mailsession_unseen_number queries the number of unseen messages in the folder

.. function:: mailsession-list-folders

   :param session: the session
   :param mb: the mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: list of mailboxes, this structure has to be freed with
                  mail-list-free()

   :description:

       NOTE: driver's specific should be used

       mailsession_list_folders returns the list of all sub-mailboxes
       of the given mailbox

.. function:: mailsession-lsub-folders

   :param session: the session
   :param mb: the mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: list of mailboxes, this structure has to be freed with
                  mail-list-free()

   :description:

       NOTE: driver's specific should be used

       mailsession_lsub_folders returns the list of subscribed
       sub-mailboxes of the given mailbox

.. function:: mailsession-subscribe-folder

   :param session: the session
   :param mb: the mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: driver's specific should be used

       mailsession_subscribe_folder subscribes to the given mailbox

.. function:: mailsession-unsubscribe-folder

   :param session: the session
   :param mb: the mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: driver's specific should be used

       mailsession_unsubscribe_folder unsubscribes to the given mailbox

.. function:: mailsession-append-message

   :param session: the session
   :param message: a string containing the RFC 2822 message
   :param size: the size of the message
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mailsession_append_message adds a RFC 2822 message to the current
       given mailbox

.. function:: mailsession-copy-message

   :param session: the session
   :param num: the message number
   :param mb: the destination mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: some drivers does not implement this

       mailsession_copy_message copies a message whose number is given to
       a given mailbox. The mailbox must be accessible from the same session.

.. function:: mailsession-move-message

   :param session: the session
   :param num: the message number
   :param mb: the destination mailbox
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: some drivers does not implement this

       mailsession_move_message copies a message whose number is given to
       a given mailbox. The mailbox must be accessible from the same session.

.. function:: mailsession-get-messages-list

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the list of message numbers, this structure has to be freed
                  with mailmessage-list-free()

   :description:

       mailsession_get_messages_list returns the list of message numbers
       of the current mailbox.

.. function:: mailsession-get-envelopes-list

   :param session: the session
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the list of mailmessage structures

   :description:

       mailsession_get_envelopes_list fills the parsed fields in the
       mailmessage structures of the mailmessage_list.

.. function:: mailsession-remove-message

   :param session: the session
   :param num: the message number
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       NOTE: some drivers does not implement this

       mailsession_remove_message removes the given message from the mailbox.
       The message is permanently deleted.

.. function:: mailsession-get-message

   :param session: the session
   :param num: the message number
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the allocated mailmessage structure, this structure has to be
                  freed with mailmessage-free()

   :description:

       mailsession_get_message returns a mailmessage structure that corresponds
       to the given message number.
       **WARNING** mailsession_get_message_by_uid() should be used instead.

.. function:: mailsession-get-message-by-uid

   :param session: the session
   :param uid: the message unique identifier
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the allocated mailmessage structure, this structure has to be
                  freed with mailmessage-free()

   :description:

       mailsession_get_message_by_uid returns a mailmessage structure
       that corresponds to the given message unique identifier.
       This is currently implemented only for cached drivers.
       **WARNING** That will deprecates the use of mailsession_get_message()


Miscellaneous
-------------


.. function:: libetpan-get-version-major

   :value major-version: LibEtPan major version number

.. function:: libetpan-get-version-minor

   :value minor-version: LibEtPan minor version number

.. constant:: $MAIL_NO_ERROR
