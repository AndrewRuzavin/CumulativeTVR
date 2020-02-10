TEMPLATE = subdirs

DISTFILES += \
	config.pri \

SUBDIRS += QtGTestTemplate QtGTestTemplateTest

CONFIG_PATH = "$$PWD"
cache( CONFIG_PATH, set )

CONFIG += ordered
