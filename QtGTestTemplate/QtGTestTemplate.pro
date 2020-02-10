include($${CONFIG_PATH}/config.pri)
include($${PROJECT_PATH}/src.pri)

TARGET = QtGTestTemplate

DEFINES += QT_DEPRECATED_WARNINGS

VPATH += ./src

SOURCES += \
        main.cpp \

CONFIG(debug, debug|release) {
    DESTDIR = $${BULDS_PATH}debug/QtGTestTemplate
} else {
    DESTDIR = $${BULDS_PATH}release/QtGTestTemplate
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.rcc
UI_DIR = $$DESTDIR/.ui
