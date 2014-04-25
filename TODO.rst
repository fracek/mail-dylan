
Module Organization
===================

**NOTE:** LEP = LibEtPan

lep_version.h
~~~~~~~~~~~~

library version stuff. not that interesting

maildriver.h
~~~~~~~~~~~~

something related to mailsession. maybe like a generic version of imap/pop etc?

mailmessage.h
~~~~~~~~~~~~~

messages. probably a message is a single mail.

mailfolder.h
~~~~~~~~~~~~

this should be a folder.

mailstorage.h
~~~~~~~~~~~~~

initialize/manage storage. related to mailfolder.

mailthread.h
~~~~~~~~~~~~

mail threads. IIRC called conversations in Mail.app

mailsmtp.h
~~~~~~~~~~

stuff related to SMTP.

charconv.h
~~~~~~~~~~

character conversion stuff. why?

mailsem.h
~~~~~~~~~

no idea.

carray.h
~~~~~~~~

array implementation? we should not expose this.

chash.h
~~~~~~~

hash implementation? we should not expose this.

maillock.h
~~~~~~~~~~

standard lock interface. lock a mail by its name?

mime_message_driver.h
~~~~~~~~~~~~~~~~~~~~~

message which content is given by a MIME structure

data_message_driver.h
~~~~~~~~~~~~~~~~~~~~~

message which content given by a string

MBOX/MH/IMAP/POP/HOTMAIL/NNTP/MAILDIR/DB/FEED drivers and storage
-----------------------------------------------------------------

defines a mail driver. defines a function to create storage for the mail.


Engine
------

mailprivacy.h
~~~~~~~~~~~~~

like mailengine, but with some encryption going on?

mailengine.h
~~~~~~~~~~~~

glue everything together?

mailprivacy_gnupg.h
~~~~~~~~~~~~~~~~~~~

use gnupg to encrypt stuff

mailprivacy_smime.h
~~~~~~~~~~~~~~~~~~~

something related to private keys

Conclusions
===========

We should start by writing the bindings for all this functions in LibEtPan,
then writing an higher level interface in Dylan.
