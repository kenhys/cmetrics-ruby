require "mkmf"
require "rbconfig"

libdir = RbConfig::CONFIG["libdir"]
includedir = RbConfig::CONFIG["includedir"]

dir_config("cmetrics", includedir, libdir)
find_library("cmetrics", nil, __dir__)

create_makefile("cmetrics/cmetrics")