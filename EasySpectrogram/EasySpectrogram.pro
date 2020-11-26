TEMPLATE = lib

QT += qml
QT += quick

CONFIG += plugin
CONFIG += c++11
CONFIG += utf8_source

TARGET = EasySpectrogram
TARGET = $$qtLibraryTarget($$TARGET)
uri = EasySpectrogram

# Input
SOURCES += easyspectrogram_plugin.cpp
HEADERS +=  easyspectrogram_plugin.h
DISTFILES = qmldir

INCLUDEPATH += $$PWD/Basic
include($$PWD/Basic/Basic.pri)

INCLUDEPATH += $$PWD/Controller
include($$PWD/Controller/Controller.pri)

INCLUDEPATH += $$PWD/Input
include($$PWD/Input/Input.pri)

INCLUDEPATH += $$PWD/Output
include($$PWD/Output/Output.pri)

INCLUDEPATH += $$PWD/Scene
include($$PWD/Scene/Scene.pri)

INCLUDEPATH += $$PWD/View
include($$PWD/View/View.pri)

INCLUDEPATH += $$PWD/Qml
include($$PWD/Qml/Qml.pri)

#!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
#    copy_qmldir.target = $$OUT_PWD/qmldir
#    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
#    copy_qmldir.commands = $(COPY_FILE) "$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)" "$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)"
#    QMAKE_EXTRA_TARGETS += copy_qmldir
#    PRE_TARGETDEPS += $$copy_qmldir.target
#}

#qmldir.files = qmldir
#unix {
#    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \., /)
#    qmldir.path = $$installPath
#    target.path = $$installPath
#    INSTALLS += target qmldir
#}

MyInstallPath = $$PWD/../App
installPath = $$MyInstallPath/$$replace(uri, \., /)

qmldir.files = qmldir
qmldir.path = $$installPath
target.path = $$installPath
#designer.files = $$PWD/Qml/designer/EasySpectrogram.metainfo
#designer.path = $$installPath/designer

# add build step: make install
INSTALLS += target qmldir
