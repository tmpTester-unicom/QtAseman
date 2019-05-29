TARGET  = asemanqmlmodern
TARGETPATH = AsemanQml/Modern
IMPORT_VERSION = 2.0

INCLUDEPATH += $$PWD
QT += qml core gui asemanqml asemancore

HEADERS += \
    $$PWD/modernplugin.h \
    $$PWD/asemanqttoolsitemmodern.h

SOURCES += \
    $$PWD/modernplugin.cpp \
    $$PWD/asemanqttoolsitemmodern.cpp

static: !linux: !win32: DEFINES += ASEMAN_STATIC_BUILD

ASEMAN_QML_FILES += $$files($$PWD/Modern/*.*) $$PWD/Modern/qmldir

INCLUDED_RESOURCE_FILES += \
    $$ASEMAN_QML_FILES

asemanmodern.files = $$INCLUDED_RESOURCE_FILES
asemanmodern.prefix = /AsemanQml/
RESOURCES += asemanmodern

load(qml_plugin)
