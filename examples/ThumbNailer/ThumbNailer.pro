QT  += core gui testlib

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    AverageLoadManager.cpp \
    Benchmark.cpp \
    ComputeThumbNailJob.cpp \
    FileLoaderJob.cpp \
    Image.cpp \
    ImageListFilter.cpp \
    ImageLoaderJob.cpp \
    ItemDelegate.cpp \
    MainWindow.cpp \
    Model.cpp \
    PriorityDecorator.cpp \
    ThumbNailer.cpp

HEADERS += \
    AverageLoadManager.h \
    Benchmark.h \
    ComputeThumbNailJob.h \
    FileLoaderJob.h \
    Image.h \
    ImageListFilter.h \
    ImageLoaderJob.h \
    ItemDelegate.h \
    MainWindow.h \
    Model.h \
    PriorityDecorator.h \
    Progress.h

FORMS += \
    MainWindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


unix|win32: LIBS += -L$$PWD/../../ThreadWeaver/lib/ -lthreadweaver

INCLUDEPATH += $$PWD/../../ThreadWeaver
DEPENDPATH += $$PWD/../../ThreadWeaver

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/../../ThreadWeaver/lib/threadweaver.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$PWD/../../ThreadWeaver/lib/libthreadweaver.a
