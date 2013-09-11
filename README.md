Python NSIS template
====================

This is a template for an [NSIS](http://nsis.sourceforge.net/) installer for a Python
application. It bundles a copy of the Python interpreter, so you can make an installer
to share with people who don't have Python installed.

Using NSIS, it's also possible to make Windows installers from a Linux or Mac machine.

This uses bits cribbed from the NSIS wiki page [Embedding other installers](http://nsis.sourceforge.net/Embedding_other_installers).

Possible extensions
-------------------

This template is very basic. Here are some suggestions for extra features:

- Find and prepare a set of Python modules required by an application for packaging into
  the installer.
- Recipes for other dependencies, e.g. PyQt4.
- Check whether a suitable version of Python is installed before extracting it.
- Download Python if required at install time, so the installer is as small as possible.
