TARGET  = asemanqmlsql
TARGETPATH = AsemanQml/Sql
IMPORT_VERSION = 2.0

INCLUDEPATH += $$PWD
QT += core gui sql asemanqml asemangui asemancore asemansql

HEADERS += \
    $$PWD/asemansqlplugin.h \
    $$PWD/asemanqttoolsitemsql.h

SOURCES += \
    $$PWD/asemansqlplugin.cpp \
    $$PWD/asemanqttoolsitemsql.cpp

static: !linux: !win32: DEFINES += ASEMAN_STATIC_BUILD

load(qml_plugin)

