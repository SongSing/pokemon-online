#-------------------------------------------------
#
# Project created by QtCreator 2012-06-25T15:39:55
#
#-------------------------------------------------

QT       += script

TARGET = ClientScripting
TEMPLATE = lib
DESTDIR = ../../bin/myplugins

DEFINES += CLIENTSCRIPTING_LIBRARY

SOURCES += clientscripting.cpp

HEADERS += clientscripting.h\
        ClientScripting_global.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xEF055325
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = ClientScripting.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

include(../Shared/Common.pri)