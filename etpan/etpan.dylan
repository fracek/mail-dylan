Module: etpan
Synopsis: Bindings for libetpan.
Author: Francesco Ceccon
Copyright: See LICENSE file in this distribution.

define C-function libetpan-get-version-major
  result major-version :: <C-int>;
  c-name: "libetpan_get_version_major";
end C-function;

define C-function libetpan-get-version-minor
  result minor-version :: <C-int>;
  c-name: "libetpan_get_version_minor";
end C-function;
