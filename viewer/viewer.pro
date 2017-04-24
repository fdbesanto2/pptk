######################################################################
# Automatically generated by qmake (3.0) Wed Jul 3 16:44:01 2013
######################################################################

isEmpty(EIGEN_INC) {
	error(\
		"EIGEN_INC not defined;\
		try passing definition via command line\
		or hardcoding it into .pro file.")
	# i.e. EIGEN_INC = F:\\Sources\\eigen-3.2.9
}

TEMPLATE = app
QT += widgets network opengl
TARGET = viewer
target.path = $$OUT_PWD/bin
dependencies.path = $$OUT_PWD/bin
dependencies.depends = install_target
win32 {
	dependencies.commands = \
		$$shell_path($$[QT_INSTALL_BINS]/windeployqt.exe) \
		$$shell_path($$OUT_PWD/bin/viewer.exe) \
		--libdir $$shell_path($$OUT_PWD/bin) \
		--no-compiler-runtime \
		--no-translations \
		--no-quick-import \
		--no-webkit2 \
		--no-angle \
		--no-system-d3d-compiler
} else: macx {
	dependencies.commands = \
		$$[QT_INSTALL_BINS]/macdeployqt $$OUT_PWD/bin/viewer.app
} else: unix {
	QMAKE_RPATH =
	dependencies.files = \
		$$[QT_INSTALL_LIBS]/libQt5Widgets.so \
		$$[QT_INSTALL_LIBS]/libQt5Network.so \
		$$[QT_INSTALL_LIBS]/libQt5Gui.so \
		$$[QT_INSTALL_LIBS]/libQt5Svg.so \
		$$[QT_INSTALL_LIBS]/libQt5Core.so
}
INSTALLS += target dependencies
CONFIG += debug_and_release console
INCLUDEPATH += $$EIGEN_INC

# Input
HEADERS += octree.h \
    box3.h \
    FloorGrid.h \
    SelectionBox.h \
    Background.h \
    LookAt.h \
    PointCloud.h \
    Viewer.h \
    QtCamera.h \
    Camera.h \
    CommFuncs.h \
    OpenGLFuncs.h \
    Text.h \
    CameraDolly.h \
    Splines.h \
    PointAttributes.h
SOURCES += \
    main.cpp
