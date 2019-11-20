TEMPLATE = subdirs

SUBDIRS = \
          HelloInternet\
          HelloWorld\
          HelloWorldRaw\
          ThumbNailer\
          ThreadWeaver

HelloInternet.subdir = examples/HelloInternet
HelloWorld.subdir = examples/HelloWorld
HelloWorldRaw.subdir = examples/HelloWorldRaw
ThumbNailer.subdir = examples/ThumbNailer
ThreadWeaver.subdir = ThreadWeaver

HelloInternet.depends = ThreadWeaver
HelloWorld.depends = ThreadWeaver
HelloWorldRaw.depends = ThreadWeaver
ThumbNailer.depends = ThreadWeaver
