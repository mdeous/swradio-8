######################################################################
# Automatically generated by qmake (2.01a) Wed Jun 19 18:47:11 2013
######################################################################
TEMPLATE = app
QT	+= widgets xml
CONFIG	+= console
#CONFIG	-= console
TARGET	= swradio-9
QMAKE_CXXFLAGS  += -std=c++14
QMAKE_CFLAGS	+= -O3 -ffast-math 
QMAKE_CXXFLAGS	+= -O3 -ffast-math 
#QMAKE_CXXFLAGS += -fsanitize=address -g
#QMAKE_CFLAGS   += -fsanitize=address -g
#QMAKE_LFLAGS   += -fsanitize=address -g

RC_ICONS        =  swradio.ico
RESOURCES       += resources.qrc

DEPENDPATH += .  \
	      decimators \
	      filters \
	      various \
	      output \
	      scopes-qwt6 \
	      devices \
	      devices/filereader \
	      decoders 
INCLUDEPATH += .  \
	      decimators \
	      filters \
	      various \
	      output \
	      scopes-qwt6 \
	      devices \
	      devices/filereader \
	      decoders

#CONFIG += static

# Input
HEADERS += ./radio-constants.h \
	   ./radio.h \
	   ./bandplan.h \
           ./output/upconverter.h \
	   ./output/audiosink.h \
           ./various/agchandler.h \
           ./various/ringbuffer.h \
           ./various/fft.h \
	   ./various/shifter.h \
	   ./various/utilities.h \
	   ./various/slidingfft.h \
	   ./various/program-list.h \
	   ./various/popup-keypad.h \
	   ./various/s-meter.h \
	   ./various/downconverter.h \
	   ./various/rate-converter.h \
	   ./decimators/newconverter.h \
	   ./decimators/decimator.h \
           ./filters/fft-filters.h \
           ./filters/fir-filters.h \
           ./filters/iir-filters.h \
	   ./filters/decimating_filter.h \
	   ./scopes-qwt6/virtual-scope.h \
	   ./scopes-qwt6/spectrogramdata.h \
	   ./scopes-qwt6/waterfall-scope.h \
	   ./scopes-qwt6/spectrum-scope.h \
           ./scopes-qwt6/scope.h \
           ./scopes-qwt6/fft-scope.h \
	   ./scopes-qwt6/audio-scope.h \
	   ./devices/device-handler.h \
	   ./devices/deviceselect.h \
           ./devices/filereader/filereader.h \
           ./devices/filereader/filehulp.h \
           ./decoders/virtual-decoder.h 

	   
FORMS	+= ./newradio.ui \
	   ./devices/filereader/filereader-widget.ui

SOURCES += ./main.cpp \
	   ./radio.cpp \
	   ./bandplan.cpp \
	   ./output/upconverter.cpp \
           ./output/audiosink.cpp \
           ./various/agchandler.cpp \
           ./various/fft.cpp \
	   ./various/popup-keypad.cpp \
	   ./various/s-meter.cpp \
           ./various/shifter.cpp \
	   ./various/utilities.cpp \
	   ./various/slidingfft.cpp \
	   ./various/program-list.cpp \
	   ./various/downconverter.cpp \
	   ./various/rate-converter.cpp \
           ./filters/fft-filters.cpp \
           ./filters/fir-filters.cpp \
           ./filters/iir-filters.cpp \
	   ./filters/decimating_filter.cpp \
	   ./scopes-qwt6/virtual-scope.cpp \
	   ./scopes-qwt6/waterfall-scope.cpp \
	   ./scopes-qwt6/spectrum-scope.cpp \
           ./scopes-qwt6/scope.cpp \
           ./scopes-qwt6/fft-scope.cpp \
	   ./scopes-qwt6/audio-scope.cpp \
	   ./decimators/decimator.cpp \
	   ./devices/device-handler.cpp \
	   ./devices/deviceselect.cpp \
           ./devices/filereader/filereader.cpp \
           ./devices/filereader/filehulp.cpp \
           ./decoders/virtual-decoder.cpp 

mac {
exists ("./.git") {
   GITHASHSTRING = $$system(git rev-parse --short HEAD)
   !isEmpty(GITHASHSTRING) {
       message("Current git hash = $$GITHASHSTRING")
       DEFINES += GITHASH=\\\"$$GITHASHSTRING\\\"
   }
}
isEmpty(GITHASHSTRING) {
    DEFINES += GITHASH=\\\"------\\\"
}

#define		__MAC__
DESTDIR		= ./linux-bin
CONFIG		+= sdrplay-v3
CONFIG		+= sdrplay
CONFIG		+= hackrf
CONFIG		+= rtlsdr
CONFIG		+= rtl_tcp
#CONFIG		+= pmsdr
#CONFIG		+= cardReader
CONFIG		+= am-decoder
CONFIG		+= ssb-decoder
CONFIG		+= cw-decoder
CONFIG		+= amtor-decoder
CONFIG		+= psk-decoder
CONFIG		+= ft8-decoder
CONFIG		+= rtty-decoder
CONFIG		+= fax-decoder
CONFIG		+= drm-decoder-fdk
CONFIG		+= acars-decoder
#CONFIG		+= test-decoder
INCLUDEPATH     	+= /usr/local/include /usr/local/lib/qwt.framework/Headers
QMAKE_LFLAGS	+= -F/usr/local/opt/qwt-qt5/lib -L/usr/local/lib
#LIBS			+= -lqwt -lrt -lsndfile -lsamplerate -lportaudio -lusb-1.0 -lfftw3f -ldl
LIBS			+= -framework qwt -lsndfile -lsamplerate -lportaudio -lusb-1.0 -lfftw3f -ldl
}

unix {
exists ("./.git") {
   GITHASHSTRING = $$system(git rev-parse --short HEAD)
   !isEmpty(GITHASHSTRING) {
       message("Current git hash = $$GITHASHSTRING")
       DEFINES += GITHASH=\\\"$$GITHASHSTRING\\\"
   }
}
isEmpty(GITHASHSTRING) {
    DEFINES += GITHASH=\\\"------\\\"
}

DESTDIR		= ./linux-bin
CONFIG		+= sdrplay-v3
CONFIG		+= sdrplay
CONFIG		+= hackrf
CONFIG		+= rtlsdr
CONFIG		+= rtl_tcp
#CONFIG		+= pmsdr
#CONFIG		+= cardReader
CONFIG		+= am-decoder
CONFIG		+= ssb-decoder
CONFIG		+= cw-decoder
#CONFIG		+= new-cw
CONFIG		+= amtor-decoder
CONFIG		+= psk-decoder
CONFIG		+= ft8-decoder
CONFIG		+= rtty-decoder
CONFIG		+= fax-decoder
CONFIG		+= drm-decoder-fdk
CONFIG		+= acars-decoder
#CONFIG		+= test-decoder
LIBS		+= -L/usr/lib64
LIBS		+= -L/lib64
INCLUDEPATH	+= /usr/include/qt5/qwt
LIBS		+= -lqwt-qt5 -lrt -lsndfile -lsamplerate -lportaudio -lusb-1.0 -lfftw3f -ldl
}

win32 {
exists ("./.git") {
   GITHASHSTRING = $$system(git rev-parse --short HEAD)
   !isEmpty(GITHASHSTRING) {
       message("Current git hash = $$GITHASHSTRING")
       DEFINES += GITHASH=\\\"$$GITHASHSTRING\\\"
   }
}
isEmpty(GITHASHSTRING) {
    DEFINES += GITHASH=\\\"------\\\"
}

DESTDIR		= /usr/shared/w32-programs/windows-swradio
CONFIG		+= sdrplay
CONFIG		+= sdrplay-v3
CONFIG		+= hackrf
CONFIG		+= rtlsdr
CONFIG		+= rtl_tcp
#CONFIG		+= pmsdr
#CONFIG		+= extio
#CONFIG		+= cardreader
CONFIG		+= am-decoder
CONFIG		+= ssb-decoder
CONFIG		+= cw-decoder
CONFIG		+= amtor-decoder
CONFIG		+= psk-decoder
CONFIG		+= rtty-decoder
CONFIG		+= ft8-decoder
#CONFIG		+= ft8-decoder-win
CONFIG		+= fax-decoder
CONFIG		+= drm-decoder-fdk
#
# includes in mingw differ from the includes in fedora linux
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include/eigen3
INCLUDEPATH += /usr/i686-w64-mingw32/sys-root/mingw/include/qt5/qwt
INCLUDEPATH += /usr/local/include
INCLUDEPATH += C:\msys32\mingw32\include\qwt
LIBS    += -L/usr/i686-w64-mingw32/sys-root/mingw/lib
LIBS    += -lfftw3f
LIBS    += -lws2_32
LIBS    += -lportaudio
LIBS    += -lqwt-qt5
#LIBS    += -lqwt
LIBS    += -lusb-1.0
LIBS    += -lsndfile
LIBS    += -lsamplerate
LIBS    += -lole32
LIBS    += -lwinmm
}

#       the SDRplay
#
sdrplay {
        DEFINES         += HAVE_SDRPLAY
        FORMS           += ./devices/sdrplay-handler/sdrplay-widget.ui
        DEPENDPATH     += ./devices/sdrplay-handler
        INCLUDEPATH     += ./devices/sdrplay-handler
        HEADERS         += ./devices/sdrplay-handler/sdrplay-handler.h 
        SOURCES         += ./devices/sdrplay-handler/sdrplay-handler.cpp 
}

sdrplay-v3 {
        DEFINES         += HAVE_SDRPLAY_V3
        FORMS           += ./devices/sdrplay-handler-v3/sdrplay-widget-v3.ui
        DEPENDPATH     += ./devices/sdrplay-handler-v3
        INCLUDEPATH     += ./devices/sdrplay-handler-v3
        INCLUDEPATH     += ./devices/sdrplay-handler-v3/include-v3
        HEADERS         += ./devices/sdrplay-handler-v3/sdrplay-handler-v3.h \
                           ./devices/sdrplay-handler-v3/sdrplay-commands.h
        SOURCES         += ./devices/sdrplay-handler-v3/sdrplay-handler-v3.cpp 
}

hackrf	{
	DEFINES		+= HAVE_HACKRF
        FORMS           += ./devices/hackrf-handler/hackrf-widget.ui
        DEPENDPATH	+= ./devices/hackrf-handler
        INCLUDEPATH	+= ./devices/hackrf-handler
        HEADERS         += ./devices/hackrf-handler/hackrf-handler.h 
        SOURCES         += ./devices/hackrf-handler/hackrf-handler.cpp 
}

rtlsdr	{
	DEFINES		+= HAVE_RTLSDR
        FORMS           += ./devices/rtlsdr-handler/rtlsdr-widget.ui
        DEPENDPATH	+= ./devices/rtlsdr-handler
        INCLUDEPATH	+= ./devices/rtlsdr-handler
        HEADERS         += ./devices/rtlsdr-handler/rtlsdr-handler.h  \
	                   ./devices/rtlsdr-handler/dongleselect.h
        SOURCES         += ./devices/rtlsdr-handler/rtlsdr-handler.cpp \
	                   ./devices/rtlsdr-handler/dongleselect.cpp
}

rtl_tcp	{
	QT		+= network
	DEFINES		+= HAVE_RTL_TCP
        FORMS           += ./devices/rtl_tcp/rtl_tcp-widget.ui
        DEPENDPATH	+= ./devices/rtl_tcp
        INCLUDEPATH	+= ./devices/rtl_tcp
        HEADERS         += ./devices/rtl_tcp/rtl_tcp_client.h  
        SOURCES         += ./devices/rtl_tcp/rtl_tcp_client.cpp
}

pmsdr	{
	DEFINES		+= HAVE_PMSDR
	TARGET		= swradio-pmsdr
	FORMS		+= ./devices/pmsdr-handler/pmsdr-widget.ui
	DEPENDPATH	+= ./devices/pmsdr-handler
        INCLUDEPATH     += ./devices/pmsdr-handler
        HEADERS         += ./devices/pmsdr-handler/pmsdr-handler.h \
			   ./devices/pmsdr-handler/pmsdr_comm.h \
	                   ./devices/pmsdr-handler/pmsdr_usb.h \
	                   ./devices/pmsdr-handler/si570-handler.h 
        SOURCES         += ./devices/pmsdr-handler/pmsdr-handler.cpp \
			   ./devices/pmsdr-handler/pmsdr_comm.cpp \
	                   ./devices/pmsdr-handler/pmsdr_usb.cpp \
	                   ./devices/pmsdr-handler/si570-handler.cpp 
	CONFIG		+= cardreader
}

extio	{
	DEFINES		+= HAVE_EXTIO
	TARGET		= swradio-extio
	FORMS		+= ./devices/extio-handler/extio-widget.ui
	DEPENDPATH	+= ./devices/extio-handler
        INCLUDEPATH     += ./devices/extio-handler
        HEADERS         += ./devices/extio-handler/extio-handler.h 
        SOURCES         += ./devices/extio-handler/extio-handler.cpp 
	CONFIG		+= cardreader
}

cardreader {
	DEFINES		+= CARDREADER
	DEPENDPATH	+= ./devices
	INCLUDEPATH	+= ./devices
	HEADERS		+= ./devices/pa-reader.h
	SOURCES		+= ./devices/pa-reader.cpp
}

test-decoder {
        DEFINES         += HAVE_TEST_DECODER
        INCLUDEPATH     += ./decoders/test-decoder
        DEPENDPATH      += ./decoders/test-decoder
        FORMS           += ./decoders/test-decoder/test-decoder.ui
        HEADERS         += ./decoders/test-decoder/test-decoder.h
        SOURCES         += ./decoders/test-decoder/test-decoder.cpp
}

acars-decoder {
        DEFINES         += HAVE_ACARS_DECODER
        INCLUDEPATH     += ./decoders/acars-decoder
        DEPENDPATH      += ./decoders/acars-decoder
#	FORMS           += ./decoders/test-decoder/test-decoder.ui
	HEADERS         += ./decoders/acars-decoder/acars-constants.h
	HEADERS         += ./decoders/acars-decoder/syndrom.h
	HEADERS         += ./decoders/acars-decoder/acars-decoder.h
	HEADERS         += ./decoders/acars-decoder/printer.h
	HEADERS         += ./decoders/acars-decoder/cJSON.h
        SOURCES         += ./decoders/acars-decoder/acars-decoder.cpp
        SOURCES         += ./decoders/acars-decoder/printer.cpp
        SOURCES         += ./decoders/acars-decoder/label.c
        SOURCES         += ./decoders/acars-decoder/cJSON.c
}

am-decoder {
        DEFINES         += HAVE_AM_DECODER
        INCLUDEPATH     += ./decoders/am-decoder
        DEPENDPATH      += ./decoders/am-decoder
        FORMS           += ./decoders/am-decoder/am-decoder.ui
        HEADERS         += ./decoders/am-decoder/am-decoder.h
        SOURCES         += ./decoders/am-decoder/am-decoder.cpp
}

ssb-decoder {
        DEFINES         += HAVE_SSB_DECODER
        INCLUDEPATH     += ./decoders/ssb-decoder
        DEPENDPATH      += ./decoders/ssb-decoder
        FORMS           += ./decoders/ssb-decoder/ssb-decoder.ui
        HEADERS         += ./decoders/ssb-decoder/ssb-decoder.h
        SOURCES         += ./decoders/ssb-decoder/ssb-decoder.cpp
}

cw-decoder {
        DEFINES         += HAVE_CW_DECODER
        INCLUDEPATH     += ./decoders/cw-decoder
        DEPENDPATH      += ./decoders/cw-decoder
        FORMS           += ./decoders/cw-decoder/cw-decoder.ui
        HEADERS         += ./decoders/cw-decoder/cw-decoder.h
        SOURCES         += ./decoders/cw-decoder/cw-decoder.cpp
}

new-cw {
        DEFINES         += HAVE_NEW_CW
        INCLUDEPATH     += ./decoders/cw-new
        DEPENDPATH      += ./decoders/cw-new
        FORMS           += ./decoders/cw-new/cw-new.ui
        HEADERS         += ./decoders/cw-new/cw-new.h
        SOURCES         += ./decoders/cw-new/cw-new.cpp
}

amtor-decoder {
        DEFINES         += HAVE_AMTOR_DECODER
        INCLUDEPATH     += ./decoders/amtor-decoder
        DEPENDPATH      += ./decoders/amtor-decoder
        FORMS           += ./decoders/amtor-decoder/amtor-widget.ui
        HEADERS         += ./decoders/amtor-decoder/amtor-decoder.h
        SOURCES         += ./decoders/amtor-decoder/amtor-decoder.cpp
}

psk-decoder {
        DEFINES         += HAVE_PSK_DECODER
        INCLUDEPATH     += ./decoders/psk-decoder
        DEPENDPATH      += ./decoders/psk-decoder
        FORMS           += ./decoders/psk-decoder/psk-decoder.ui
        HEADERS         += ./decoders/psk-decoder/psk-decoder.h \
                           ./decoders/psk-decoder/viterbi.h
        SOURCES         += ./decoders/psk-decoder/psk-decoder.cpp \
                           ./decoders/psk-decoder/viterbi.cpp
}

ft8-decoder {
        DEFINES         += HAVE_FT8_DECODER
	DEFINES		+= KISSFFT_DATATYPE=double
        INCLUDEPATH     += ./decoders/ft8-decoder
        INCLUDEPATH     += ./decoders/ft8-decoder/fft
        DEPENDPATH      += ./decoders/ft8-decoder
        FORMS           += ./decoders/ft8-decoder/ft8-decoder.ui
        HEADERS         += ./decoders/ft8-decoder/ft8-constants.h
        HEADERS         += ./decoders/ft8-decoder/ft8-decoder.h
        HEADERS         += ./decoders/ft8-decoder/ft8-processor.h
        HEADERS         += ./decoders/ft8-decoder/pack-handler.h
	HEADERS         += ./decoders/ft8-decoder/psk-writer.h
	HEADERS		+= ./decoders/ft8-decoder/hashHandler.h
        HEADERS         += ./decoders/ft8-decoder/ldpc.h
        HEADERS         += ./decoders/ft8-decoder/dl-cache.h
        HEADERS         += ./decoders/ft8-decoder/semaphore.h
        SOURCES         += ./decoders/ft8-decoder/ft8-decoder.cpp 
        SOURCES         += ./decoders/ft8-decoder/ft8-processor.cpp 
        SOURCES         += ./decoders/ft8-decoder/pack-handler.cpp 
        SOURCES         += ./decoders/ft8-decoder/ldpc.cpp 
	SOURCES		+= ./decoders/ft8-decoder/hashHandler.cpp
	SOURCES		+= ./decoders/ft8-decoder/psk-writer.cpp
        HEADERS         += ./decoders/ft8-decoder/fft/kiss_fft.h
        HEADERS         += ./decoders/ft8-decoder/fft/kiss_fftr.h
        HEADERS         += ./decoders/ft8-decoder/fft/_kiss_fft_guts.h
        SOURCES         += ./decoders/ft8-decoder/fft/kiss_fft.c 
        SOURCES         += ./decoders/ft8-decoder/fft/kiss_fftr.c 
	HEADERS		+= ./decoders/ft8-decoder/identity-dialog.h
	SOURCES		+= ./decoders/ft8-decoder/identity-dialog.cpp
}

ft8-decoder-win {
        DEFINES         += HAVE_FT8_DECODER
	DEFINES		+= KISSFFT_DATATYPE=double
        INCLUDEPATH     += ./decoders/ft8-decoder-win
        INCLUDEPATH     += ./decoders/ft8-decoder-win/fft
        DEPENDPATH      += ./decoders/ft8-decoder-win
        FORMS           += ./decoders/ft8-decoder-win/ft8-decoder.ui
        HEADERS         += ./decoders/ft8-decoder-win/ft8-constants.h
        HEADERS         += ./decoders/ft8-decoder-win/ft8-decoder.h
        HEADERS         += ./decoders/ft8-decoder-win/ft8-processor.h
        HEADERS         += ./decoders/ft8-decoder-win/pack-handler.h
	HEADERS         += ./decoders/ft8-decoder-win/pskreporter.h
	HEADERS		+= ./decoders/ft8-decoder-win/hashHandler.h
        HEADERS         += ./decoders/ft8-decoder-win/ldpc.h
        HEADERS         += ./decoders/ft8-decoder-win/dl-cache.h
        HEADERS         += ./decoders/ft8-decoder-win/semaphore.h
        SOURCES         += ./decoders/ft8-decoder-win/ft8-decoder.cpp 
        SOURCES         += ./decoders/ft8-decoder-win/ft8-processor.cpp 
        SOURCES         += ./decoders/ft8-decoder-win/pack-handler.cpp 
        SOURCES         += ./decoders/ft8-decoder-win/ldpc.cpp 
	SOURCES		+= ./decoders/ft8-decoder-win/hashHandler.cpp
        HEADERS         += ./decoders/ft8-decoder-win/fft/kiss_fft.h
        HEADERS         += ./decoders/ft8-decoder-win/fft/kiss_fftr.h
        HEADERS         += ./decoders/ft8-decoder-win/fft/_kiss_fft_guts.h
        SOURCES         += ./decoders/ft8-decoder-win/fft/kiss_fft.c 
        SOURCES         += ./decoders/ft8-decoder-win/fft/kiss_fftr.c 
	HEADERS		+= ./decoders/ft8-decoder/identity-dialog.h
        SOURCES		+= ./decoders/ft8-decoder/identity-dialog.cpp
	LIBS		+= -lPSKReporter
}

new-decoder {
        DEFINES         += HAVE_NEW_DECODER
        INCLUDEPATH     += ./decoders/new-decoder
        DEPENDPATH      += ./decoders/new-decoder
        FORMS           += ./decoders/new-decoder/new-decoder.ui
        HEADERS         += ./decoders/new-decoder/new-decoder.h 
        SOURCES         += ./decoders/new-decoder/new-decoder.cpp 
}

rtty-decoder {
        DEFINES         += HAVE_RTTY_DECODER
        INCLUDEPATH     += ./decoders/rtty-decoder
        DEPENDPATH      += ./decoders/rtty-decoder
        FORMS           += ./decoders/rtty-decoder/rtty-decoder.ui
        HEADERS         += ./decoders/rtty-decoder/rtty-decoder.h 
        SOURCES         += ./decoders/rtty-decoder/rtty-decoder.cpp 
}

fax-decoder {
        DEFINES         += HAVE_FAX_DECODER
        INCLUDEPATH     += ./decoders/fax-decoder
        DEPENDPATH      += ./decoders/fax-decoder
        FORMS           += ./decoders/fax-decoder/fax-decoder.ui
        HEADERS         += ./decoders/fax-decoder/fax-decoder.h \
                           ./decoders/fax-decoder/fax-demodulator.h \
                           ./decoders/fax-decoder/fax-image.h \
                           ./decoders/fax-decoder/fax-scroller.h \
                           ./decoders/fax-decoder/fax-filenames.h 
        SOURCES         += ./decoders/fax-decoder/fax-decoder.cpp \
                           ./decoders/fax-decoder/fax-demodulator.cpp \
                           ./decoders/fax-decoder/fax-image.cpp \
                           ./decoders/fax-decoder/fax-scroller.cpp \
                           ./decoders/fax-decoder/fax-filenames.cpp 
}

drm-decoder-fdk {
	DEFINES		+= HAVE_DRM_DECODER
	DEFINES		+= ESTIMATOR_1
	DEFINES		+=  __WITH_FDK_AAC__
	LIBS		+= -lfdk-aac
#	LIBS		+= -lfdk-aac-2
	INCLUDEPATH	+= ./fdk-aac
	DEPENDPATH	+= ./decoders/drm-decoder/ \
	                   ./decoders/drm-decoder/ \
                           ./decoders/drm-decoder/fac \
                           ./decoders/drm-decoder/equalizer \
                           ./decoders/drm-decoder/msc \
                           ./decoders/drm-decoder/ofdm \
                           ./decoders/drm-decoder/parameters \
                           ./decoders/drm-decoder/sdc \
                           ./decoders/drm-decoder/data \
                           ./decoders/drm-decoder/support 

	INCLUDEPATH	+= ./decoders/drm-decoder/ \
	                   ./decoders/drm-decoder/ \
                           ./decoders/drm-decoder/fac \
                           ./decoders/drm-decoder/equalizer \
                           ./decoders/drm-decoder/msc \
                           ./decoders/drm-decoder/ofdm \
                           ./decoders/drm-decoder/parameters \
                           ./decoders/drm-decoder/sdc \
                           ./decoders/drm-decoder/data \
                           ./decoders/drm-decoder/support

	FORMS		+= ./decoders/drm-decoder/drmdecoder.ui
	HEADERS		+= ./decoders/drm-decoder/drm-decoder.h  \
	                   ./decoders/drm-decoder/eqdisplay.h \
	                   ./decoders/drm-decoder/iqdisplay.h \
	                   ./decoders/drm-decoder/basics.h \
#	                   ./decoders/drm-decoder/utilities.h \
	                   ./decoders/drm-decoder/up-converter.h \
#	                   ./decoders/drm-decoder/rate-converter.h \
	                   ./decoders/drm-decoder/data/data-processor.h \
	                   ./decoders/drm-decoder/data/message-processor.h \
#	                   ./decoders/drm-decoder/data/up-filter.h \
	                   ./decoders/drm-decoder/fac/fac-tables.h \
	                   ./decoders/drm-decoder/fac/fac-processor.h \
	                   ./decoders/drm-decoder/sdc/sdc-include.h \
	                   ./decoders/drm-decoder/sdc/sdc-processor.h \
	                   ./decoders/drm-decoder/sdc/sdc-streamer.h \
	                   ./decoders/drm-decoder/msc/backend-controller.h \
	                   ./decoders/drm-decoder/msc/msc-handler.h \
	                   ./decoders/drm-decoder/msc/msc-handler-qam16.h \
	                   ./decoders/drm-decoder/msc/msc-handler-qam64.h \
	                   ./decoders/drm-decoder/msc/msc-processor.h \
	                   ./decoders/drm-decoder/msc/msc-streamer.h \
	                   ./decoders/drm-decoder/ofdm/correlator.h \
	                   ./decoders/drm-decoder/ofdm/freqsyncer.h \
	                   ./decoders/drm-decoder/ofdm/reader.h \
	   	           ./decoders/drm-decoder/ofdm/timesync.h \
	                   ./decoders/drm-decoder/ofdm/word-collector.h \
	                   ./decoders/drm-decoder/equalizer/equalizer-1.h \
	                   ./decoders/drm-decoder/equalizer/equalizer-base.h \
#	                   ./decoders/drm-decoder/equalizer/estimator-2.h \
	                   ./decoders/drm-decoder/equalizer/estimator-1.h \
	                   ./decoders/drm-decoder/equalizer/matrix2.h \
	                   ./decoders/drm-decoder/equalizer/referenceframe.h \
	                   ./decoders/drm-decoder/parameters/msc-config.h \
	                   ./decoders/drm-decoder/parameters/puncture-tables.h \
	                   ./decoders/drm-decoder/parameters/state-descriptor.h \
	                   ./decoders/drm-decoder/support/checkcrc.h \
	                   ./decoders/drm-decoder/support/deinterleaver.h \
	                   ./decoders/drm-decoder/support/drm-shifter.h \
	                   ./decoders/drm-decoder/support/fft-complex.h \
	   	           ./decoders/drm-decoder/support/mapper.h \
	   	           ./decoders/drm-decoder/support/mer16-values.h \
	   	           ./decoders/drm-decoder/support/mer4-values.h \
	                   ./decoders/drm-decoder/support/mer64-values.h \
	                   ./decoders/drm-decoder/support/my-array.h \
	                   ./decoders/drm-decoder/support/prbs.h \
	   	           ./decoders/drm-decoder/support/protlevels.h \
	   	           ./decoders/drm-decoder/support/qam16-metrics.h \
	                   ./decoders/drm-decoder/support/qam4-metrics.h \
	                   ./decoders/drm-decoder/support/qam64-metrics.h \
	                   ./decoders/drm-decoder/support/viterbi-drm.h 

	SOURCES		+= ./decoders/drm-decoder/drm-decoder.cpp  \
	                   ./decoders/drm-decoder/eqdisplay.cpp \
	                   ./decoders/drm-decoder/iqdisplay.cpp \
	                   ./decoders/drm-decoder/up-converter.cpp \
#	                   ./decoders/drm-decoder/rate-converter.cpp \
	                   ./decoders/drm-decoder/basics.cpp \
	                   ./decoders/drm-decoder/data/data-processor.cpp \
	                   ./decoders/drm-decoder/data/message-processor.cpp \
	                   ./decoders/drm-decoder/data/up-filter.cpp \
	                   ./decoders/drm-decoder/fac/fac-tables.cpp \
	                   ./decoders/drm-decoder/fac/fac-processor.cpp \
	                   ./decoders/drm-decoder/sdc/sdc-processor.cpp \
	                   ./decoders/drm-decoder/sdc/sdc-streamer.cpp \
	                   ./decoders/drm-decoder/msc/backend-controller.cpp \
	                   ./decoders/drm-decoder/msc/msc-handler.cpp \
	                   ./decoders/drm-decoder/msc/msc-handler-qam16.cpp \
	                   ./decoders/drm-decoder/msc/msc-handler-qam64.cpp \
	                   ./decoders/drm-decoder/msc/msc-processor.cpp \
	                   ./decoders/drm-decoder/msc/msc-streamer.cpp \
	   	           ./decoders/drm-decoder/ofdm/correlator.cpp \
	                   ./decoders/drm-decoder/ofdm/freqsyncer.cpp \
	   	           ./decoders/drm-decoder/ofdm/reader.cpp \
	   	           ./decoders/drm-decoder/ofdm/timesync.cpp \
	   	           ./decoders/drm-decoder/ofdm/word-collector.cpp \
	   	           ./decoders/drm-decoder/equalizer/equalizer-1.cpp \
	   	           ./decoders/drm-decoder/equalizer/equalizer-base.cpp \
#	                   ./decoders/drm-decoder/equalizer/estimator-2.cpp \
	   	           ./decoders/drm-decoder/equalizer/estimator-1.cpp \
	                   ./decoders/drm-decoder/equalizer/matrix2.cpp \
	   	           ./decoders/drm-decoder/equalizer/referenceframe.cpp \
	   	           ./decoders/drm-decoder/parameters/msc-config.cpp \
	   	           ./decoders/drm-decoder/parameters/puncture-tables.cpp \
	                   ./decoders/drm-decoder/parameters/state-descriptor.cpp \
	                   ./decoders/drm-decoder/support/checkcrc.cpp \
	   	           ./decoders/drm-decoder/support/deinterleaver.cpp \
	   	           ./decoders/drm-decoder/support/drm-shifter.cpp \
	   	           ./decoders/drm-decoder/support/fft-complex.cpp \
	   	           ./decoders/drm-decoder/support/mapper.cpp \
	                   ./decoders/drm-decoder/support/mer16-values.cpp \
	   	           ./decoders/drm-decoder/support/mer4-values.cpp \
	   	           ./decoders/drm-decoder/support/mer64-values.cpp \
	   	           ./decoders/drm-decoder/support/prbs.cpp \
	   	           ./decoders/drm-decoder/support/protlevels.cpp \
	   	           ./decoders/drm-decoder/support/qam16-metrics.cpp \
	   	           ./decoders/drm-decoder/support/qam4-metrics.cpp \
	   	           ./decoders/drm-decoder/support/qam64-metrics.cpp \
	   	           ./decoders/drm-decoder/support/viterbi-drm.cpp

	INCLUDEPATH     += /usr/local/include/fdk-aac
	HEADERS         += ./decoders/drm-decoder/data/aac-processor-fdk.h \
                           ./decoders/drm-decoder/data/xheaac-processor.h \
                           ./decoders/drm-decoder/aac-handler.h
	SOURCES         += ./decoders/drm-decoder/data/aac-processor-fdk.cpp \
                           ./decoders/drm-decoder/data/xheaac-processor.cpp  \
                           ./decoders/drm-decoder/aac-handler.cpp
}


