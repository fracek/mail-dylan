LibEtPan Reference
******************

The LibEtPan Module
===================

Mail Message
------------

.. function:: mailmessage-new

   :value new-message: a new empty message

   :description:

       This function will initializes a new empty message.

.. function:: mailmessage-free

   :param message: the message to free

   :description:

       This function will release the memory used by this message.

.. function:: mailmessage-init

   :param message-info: the message to initialize
   :param session: the source session of the message. It can be NULL if the
                   message does not get the information through the session.
   :param driver: the driver to use for the message
   :param index: the message number in the session. 0 can be given if the
                 message is not attached to a session
   :param size: is an optional parameter, 0 can be given. This is
                informational, it's the size of the message content.
    :value err: :const:`$MAIL_NO_ERROR` is returned on success,
                ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       This function will initializes a mailmessage structure
       with a message from a given session.

.. function:: mailmessage-flush

   :param message-info: the message to clean
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       This function will release all the temporary resources that are not
       necessary to use the mailmessage structure from memory. These
       resources are for example cached information, such as the MIME
       structure.

.. function:: mailmessage-check

   :param message-info: the message to checkpoint
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       This function will notify the new value of the flags to the session,
       it must be called before mailsession_check_folder() in case the flags have
       been changed.

.. function:: mailmessage-fetch-result-free

   :param message-info: the message from where the given buffer is from
   :param msg: start of the buffer
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       This function releases the memory used by a message returned
       by any of the fetch function that returns a (char *).

.. function:: mailmessage-fetch

   :param message-info: the message from which we want to fetch information
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value msg: the content of the message
   :value msg-len: the length of the message

   :description:

       This function returns the content of the message (headers and text).

.. function:: mailmessage-fetch-header

   :param message-info: the message from which we want to fetch the header
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value msg: the content of the header
   :value msg-len: the length of the header

   :description:

       This function returns the header of the message as a string.

.. function:: mailmessage-fetch-body

   :param message-info: the message from which we want to fetch the body
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value msg: the content of the body
   :value msg-len: the length of the body

   :description:

       This function returns the header of the message as a string.

.. function:: mailmessage-fetch-size

   :param message-info: the message from which we want to fetch the content
                        size
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value size: the content size

   :description:

       This function returns the size of the message content.

.. function:: mailmessage-get-bodystruct

   :param message-info: the message from which we want to fetch information
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the MIME structure

   :description:

       This functions returns the MIME structure of the message.
       The returned information MUST not be freed by hand. It is freed by
       mailmessage_flush() or mailmessage_free().

.. function:: mailmessage-fetch-section

   :param message-info: the message from which we want to fetch information
   :param mime: the MIME identifier
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the content of the specified MIME part
   :value result-len: the length of the returned result

   :description:

       This function returns the content of a MIME part.

.. function:: mailmessage-fetch-section-header

   :param message-info: the message from which we want to fetch information
   :param mime: the MIME identifier
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the header of the specified MIME part
   :value result-len: the length of the returned result

   :description:

       This function returns the header of the message contained
       in the given MIME part.

.. function:: mailmessage-fetch-section-mime

   :param message-info: the message from which we want to fetch information
   :param mime: the MIME identifier
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the MIME header of the specified MIME part
   :value result-len: the length of the returned result

   :description:

       This function returns the MIME header of the given MIME part.

.. function:: mailmessage-fetch-section-body

   :param message-info: the message from which we want to fetch information
   :param mime: the MIME identifier
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the message text
   :value result-len: the length of the returned result

   :description:

       This function returns the text part of the message contained
       in the given MIME part.

.. function:: mailmessage-fetch-envelope

   :param message-info: the message from which we want to fetch information
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the headers list

   :description:

       This function returns a list of parsed fields of the message,
       chosen by the driver.
       The returned structure must be freed with mailimf-fields-free().

.. function:: mailmessage-get-flags

   :param message-info: the message from which we want to fetch information
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value result: the flags

   :description:

       This function returns the flags related to the message.
       The returned information MUST not be freed by hand. It is freed by
       mailmessage-free().

.. function:: mailmessage-resolve-single-fields

   :param message-info: the message-info process
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       This function will use the fields information to fill the single_fields
       structure in the mailmessage structure.

Mail Thread
-----------

.. function:: mail-build-thread

   :param type: the type of threading to apply, the value can be
                :const:`$MAIL_THREAD_REFERENCES`,
                :const:`MAIL_THREAD_REFERENCES_NO_SUBJECT`,
                :const:`MAIL_THREAD_ORDEREDSUBJECT` or
                :const:`$MAIL_THREAD_NONE`
   :param default-from: the default charset to use whenever the subject is not
                        tagged with a charset. "US-ASCII" can be used if you
                        don't know what to use
   :param env-list: the message list to use to build the message tree
   :param comp-function: the function to sort the messages. If NULL, no sorting
                         algorithm is used
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error
   :value tree: the resulting message tree

   :description:

       mail_build_thread constructs a tree with the message using the 
       given style.

.. function:: mail-thread-sort

   :param tree: the message tree to sort
   :param comp-function: the function to sort the messages.
                         mailthread-tree-timecomp can be used for default
                         sorting
   :param sort-sub: if this value is 0, only the children of the root message
                    are sorted
   :value err: :const:`$MAIL_NO_ERROR` is returned on success,
               ``$MAIL_ERROR_XXX`` is returned on error

   :description:

       mail_thread_sort sort the messages in the message tree, using the
       given sort function.

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
