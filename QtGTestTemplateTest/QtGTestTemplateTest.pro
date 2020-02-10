include(gtest_dependency.pri)
include($${CONFIG_PATH}/config.pri)
include($${PROJECT_PATH}/src.pri)

TARGET = QtGTestTemplateTest

INCLUDEPATH += \
	$$PROJECT_SRC_PATH

VPATH += ./src

SOURCES += \
	src/main.cpp \
	SomeCodeTest.cpp \

CONFIG(debug, debug|release) {
    DESTDIR = $${BULDS_PATH}debug/QtGTestTemplateTest
} else {
    DESTDIR = $${BULDS_PATH}release/QtGTestTemplateTest
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.rcc
UI_DIR = $$DESTDIR/.ui
