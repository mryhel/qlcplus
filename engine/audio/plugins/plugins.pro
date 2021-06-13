TEMPLATE = subdirs
CONFIG  += ordered

!android:!ios:!win32 {
#system(pkg-config --exists mad) {
#  SUBDIRS += mad
#}

system(pkg-config --exists sndfile) {
  SUBDIRS += sndfile
}
}
