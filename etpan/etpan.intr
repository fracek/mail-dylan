module: etpan

define interface 
  #include {
    "libetpan/acl.h",
    "libetpan/acl_types.h",
    "libetpan/annotatemore.h",
    "libetpan/annotatemore_types.h",
    "libetpan/carray.h",
    "libetpan/charconv.h",
    "libetpan/chash.h",
    "libetpan/clist.h",
    "libetpan/condstore.h",
    "libetpan/condstore_types.h",
    "libetpan/data_message_driver.h",
    "libetpan/dbdriver.h",
    "libetpan/dbdriver_message.h",
    "libetpan/dbdriver_types.h",
    "libetpan/dbstorage.h",
    "libetpan/enable.h",
    "libetpan/feeddriver.h",
    "libetpan/feeddriver_message.h",
    "libetpan/feeddriver_types.h",
    "libetpan/feedstorage.h",
    "libetpan/generic_cache_types.h",
    "libetpan/hotmailstorage.h",
    "libetpan/idle.h",
    "libetpan/imapdriver.h",
    "libetpan/imapdriver_cached.h",
    "libetpan/imapdriver_cached_message.h",
    "libetpan/imapdriver_message.h",
    "libetpan/imapdriver_tools.h",
    "libetpan/imapdriver_types.h",
    "libetpan/imapstorage.h",
    "libetpan/libetpan-config.h",
    "libetpan/libetpan.h",
    "libetpan/libetpan_version.h",
    "libetpan/mail.h",
    "libetpan/maildir.h",
    "libetpan/maildir_types.h",
    "libetpan/maildirdriver.h",
    "libetpan/maildirdriver_cached.h",
    "libetpan/maildirdriver_cached_message.h",
    "libetpan/maildirdriver_message.h",
    "libetpan/maildirdriver_types.h",
    "libetpan/maildirstorage.h",
    "libetpan/maildriver.h",
    "libetpan/maildriver_errors.h",
    "libetpan/maildriver_types.h",
    "libetpan/maildriver_types_helper.h",
    "libetpan/mailengine.h",
    "libetpan/mailfolder.h",
    "libetpan/mailimap.h",
    "libetpan/mailimap_compress.h",
    "libetpan/mailimap_extension.h",
    "libetpan/mailimap_extension_types.h",
    "libetpan/mailimap_helper.h",
    "libetpan/mailimap_id.h",
    "libetpan/mailimap_id_types.h",
    "libetpan/mailimap_oauth2.h",
    "libetpan/mailimap_socket.h",
    "libetpan/mailimap_sort.h",
    "libetpan/mailimap_sort_types.h",
    "libetpan/mailimap_ssl.h",
    "libetpan/mailimap_types.h",
    "libetpan/mailimap_types_helper.h",
    "libetpan/mailimf.h",
    "libetpan/mailimf_types.h",
    "libetpan/mailimf_types_helper.h",
    "libetpan/mailimf_write_file.h",
    "libetpan/mailimf_write_generic.h",
    "libetpan/mailimf_write_mem.h",
    "libetpan/maillock.h",
    "libetpan/mailmbox.h",
    "libetpan/mailmbox_types.h",
    "libetpan/mailmessage.h",
    "libetpan/mailmessage_types.h",
    "libetpan/mailmh.h",
    "libetpan/mailmime.h",
    "libetpan/mailmime_content.h",
    "libetpan/mailmime_decode.h",
    "libetpan/mailmime_disposition.h",
    "libetpan/mailmime_types.h",
    "libetpan/mailmime_types_helper.h",
    "libetpan/mailmime_write_file.h",
    "libetpan/mailmime_write_generic.h",
    "libetpan/mailmime_write_mem.h",
    "libetpan/mailpop3.h",
    "libetpan/mailpop3_helper.h",
    "libetpan/mailpop3_socket.h",
    "libetpan/mailpop3_ssl.h",
    "libetpan/mailpop3_types.h",
    "libetpan/mailprivacy.h",
    "libetpan/mailprivacy_gnupg.h",
    "libetpan/mailprivacy_smime.h",
    "libetpan/mailprivacy_tools.h",
    "libetpan/mailprivacy_types.h",
    "libetpan/mailsem.h",
    "libetpan/mailsmtp.h",
    "libetpan/mailsmtp_helper.h",
    "libetpan/mailsmtp_oauth2.h",
    "libetpan/mailsmtp_socket.h",
    "libetpan/mailsmtp_ssl.h",
    "libetpan/mailsmtp_types.h",
    "libetpan/mailstorage.h",
    "libetpan/mailstorage_types.h",
    "libetpan/mailstream.h",
    "libetpan/mailstream_cfstream.h",
    "libetpan/mailstream_compress.h",
    "libetpan/mailstream_helper.h",
    "libetpan/mailstream_low.h",
    "libetpan/mailstream_socket.h",
    "libetpan/mailstream_ssl.h",
    "libetpan/mailstream_types.h",
    "libetpan/mailthread.h",
    "libetpan/mailthread_types.h",
    "libetpan/mboxdriver.h",
    "libetpan/mboxdriver_cached.h",
    "libetpan/mboxdriver_cached_message.h",
    "libetpan/mboxdriver_message.h",
    "libetpan/mboxdriver_types.h",
    "libetpan/mboxstorage.h",
    "libetpan/mhdriver.h",
    "libetpan/mhdriver_cached.h",
    "libetpan/mhdriver_cached_message.h",
    "libetpan/mhdriver_message.h",
    "libetpan/mhdriver_types.h",
    "libetpan/mhstorage.h",
    "libetpan/mime_message_driver.h",
    "libetpan/mmapstring.h",
    "libetpan/newsfeed.h",
    "libetpan/newsfeed_item.h",
    "libetpan/newsfeed_item_enclosure.h",
    "libetpan/newsfeed_types.h",
    "libetpan/newsnntp.h",
    "libetpan/newsnntp_socket.h",
    "libetpan/newsnntp_ssl.h",
    "libetpan/newsnntp_types.h",
    "libetpan/nntpdriver.h",
    "libetpan/nntpdriver_cached.h",
    "libetpan/nntpdriver_cached_message.h",
    "libetpan/nntpdriver_message.h",
    "libetpan/nntpdriver_types.h",
    "libetpan/nntpstorage.h",
    "libetpan/pop3driver.h",
    "libetpan/pop3driver_cached.h",
    "libetpan/pop3driver_cached_message.h",
    "libetpan/pop3driver_message.h",
    "libetpan/pop3driver_types.h",
    "libetpan/pop3storage.h",
    "libetpan/qresync.h",
    "libetpan/qresync_types.h",
    "libetpan/uidplus.h",
    "libetpan/uidplus_types.h",
    "libetpan/xgmlabels.h",
    "libetpan/xgmmsgid.h",
    "libetpan/xgmthrid.h",
    "libetpan/xlist.h"

    },
    equate: { "char *" => <C-string> },
    exclude: {
      "carray_count",
      "carray_data",
      "carray_get",
      "carray_set",
      "chash_count",
      "chash_key",
      "chash_size",
      "chash_value"
    };

    pointer "clist *" => <clist*>,
      superclasses: {<sequence>};
    
    function "mailimap_fetch",
      output-argument: 4;
end interface;

// macros defined in clist.h
// if you define NO_MACROS this is not needed, but some packaged versions of
// libetpan don't do that. So we just write our own wrappers.
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
