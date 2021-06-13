DEFINES += HAS_FFTW3

contains(QT_ARCH, i386) {
    message("32-bit")

    INCLUDEPATH += d:/projects/fftw-3.3.5-dll32
    LIBS += d:/projects/fftw-3.3.5-dll32/libfftw3-3.lib

} else {
    message("64-bit")

    INCLUDEPATH += d:/projects/fftw-3.3.5-dll64
    LIBS += d:/projects/fftw-3.3.5-dll64/libfftw3-3.lib
}

DEFINES += _USE_MATH_DEFINES

win32:LIBS  += -lwinmm
