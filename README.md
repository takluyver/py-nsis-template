Python NSIS template
====================

This is a template for an [NSIS](http://nsis.sourceforge.net/) installer for a Python
application. It bundles a copy of the Python interpreter, so you can make an installer
to share with people who don't have Python installed.

To make the example installer, download the [Python 3.3 MSI](http://python.org/ftp/python/3.3.2/python-3.3.2.msi),
place it in this folder, and run `makensis installpy.nsi`. To customise it for your own
use, modify `installpy.nsi`. The NSIS script format is
[documented here](http://nsis.sourceforge.net/Docs/Contents.html).

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
