message(This is Win32!!!)

# Windows target
FTD2XXDIR    = D:/D2XXSDK

contains(QT_ARCH, i386) {
	message("32-bit")

	LIBS        += -L$$FTD2XXDIR/i386 -lftd2xx
	LIBS     += $$FTD2XXDIR/i386/ftd2xx.lib
} else {
	message("64-bit")

	LIBS        += -L$$FTD2XXDIR/amd64 -lftd2xx
	LIBS     += $$FTD2XXDIR/amd64/ftd2xx.lib
}

INCLUDEPATH += $$FTD2XXDIR
