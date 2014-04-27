module: etpan

define interface 
  #include {
    "libetpan/libetpan_version.h",
    "libetpan/maildriver.h",
    "libetpan/mailmessage.h",
    "libetpan/mailfolder.h",
    "libetpan/mailstorage.h",
    "libetpan/mailthread.h",

    "libetpan/mailsmtp.h",
    "libetpan/mailsmtp_socket.h",
    "libetpan/mailsmtp_ssl.h",

    "libetpan/mailmbox.h",
    "libetpan/mailmh.h",

    "libetpan/mailimap.h",
    "libetpan/mailimap_socket.h",
    "libetpan/mailimap_ssl.h",

    "libetpan/mailpop3.h",
    "libetpan/mailpop3_socket.h",
    "libetpan/mailpop3_ssl.h",

    "libetpan/newsnntp.h",
    "libetpan/newsnntp_socket.h",
    "libetpan/newsnntp_ssl.h",

    "libetpan/charconv.h",
    "libetpan/mailsem.h",
    "libetpan/carray.h",
    "libetpan/chash.h",
    "libetpan/maillock.h",

    /* mbox driver */
    "libetpan/mboxdriver.h",
    "libetpan/mboxdriver_message.h",
    "libetpan/mboxdriver_cached.h",
    "libetpan/mboxdriver_cached_message.h",
    "libetpan/mboxstorage.h",

    /* MH driver */
    "libetpan/mhdriver.h",
    "libetpan/mhdriver_message.h",
    "libetpan/mhdriver_cached.h",
    "libetpan/mhdriver_cached_message.h",
    "libetpan/mhstorage.h",

    /* IMAP4rev1 driver */
    "libetpan/imapdriver.h",
    "libetpan/imapdriver_message.h",
    "libetpan/imapdriver_cached.h",
    "libetpan/imapdriver_cached_message.h",
    "libetpan/imapstorage.h",

    /* POP3 driver */
    "libetpan/pop3driver.h",
    "libetpan/pop3driver_message.h",
    "libetpan/pop3driver_cached.h",
    "libetpan/pop3driver_cached_message.h",
    "libetpan/pop3storage.h",

    /* Hotmail */
    "libetpan/hotmailstorage.h",

    /* NNTP driver */
    "libetpan/nntpdriver.h",
    "libetpan/nntpdriver_message.h",
    "libetpan/nntpdriver_cached.h",
    "libetpan/nntpdriver_cached_message.h",
    "libetpan/nntpstorage.h",

    /* maildir driver */
    "libetpan/maildirdriver.h",
    "libetpan/maildirdriver_message.h",
    "libetpan/maildirdriver_cached.h",
    "libetpan/maildirdriver_cached_message.h",
    "libetpan/maildirstorage.h",

    /* db driver */
    "libetpan/dbdriver.h",
    "libetpan/dbdriver_message.h",
    "libetpan/dbstorage.h",

    /* feed driver */
    "libetpan/feeddriver.h",
    "libetpan/feeddriver_message.h",
    "libetpan/feedstorage.h",

    /* message which content is given by a MIME structure */
    "libetpan/mime_message_driver.h",

    /* message which content given by a string */
    "libetpan/data_message_driver.h",

    /* engine */
    "libetpan/mailprivacy.h",
    "libetpan/mailengine.h",
    "libetpan/mailprivacy_gnupg.h",
    "libetpan/mailprivacy_smime.h"

    },
    exclude: {
      "carray_count",
      "carray_data",
      "carray_get",
      "carray_set",
      "chash_count",
      "chash_key",
      "chash_size",
      "chash_value"
    }
end interface;
