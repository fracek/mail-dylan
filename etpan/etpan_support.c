#include <libetpan/clist.h>

int etpan_clist_isempty(clist *lst) {
  return clist_isempty(lst);
}

int etpan_clist_count(clist *lst) {
  return clist_count(lst);
}

clistiter *etpan_clist_begin(clist *lst) {
  return clist_begin(lst);
}

clistiter *etpan_clist_end(clist *lst) {
  return clist_begin(lst);
}

clistiter *etpan_clist_next(clistiter *iter) {
  return clist_next(iter);
}

clistiter *etpan_clist_previous(clistiter *iter) {
  return clist_previous(iter);
}

void *etpan_clist_content(clistiter *iter) {
  return clist_content(iter);
}

int etpan_clist_prepend(clist *lst, void *data) {
  return clist_prepend(lst, data);
}

int etpan_clist_append(clist *lst, void *data) {
  return clist_append(lst, data);
}
