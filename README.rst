About
-----

This directory contains the fonts and SVG source files for the logo used 
in the core astropy repository.

The logo uses the Source Sans Pro font, which is an open source font 
created by Adobe. In order to edit the source files for the logo, you 
will need to ensure that this font is installed. For convenience, the 
font files are included in this repository in the ``Source_Sans_Pro`` 
directory.

The fonts are also available online:

* https://github.com/adobe/Source-Sans-Pro
* http://www.google.com/webfonts/specimen/Source+Sans+Pro

Editing
-------

The SVG files in the root directory are in Inkscape SVG format (i.e. they
contain Inkscape-specific tags). These should be edited with Inkscape once the
fonts have been installed (see above). The ``generated/`` directory contains
Plain SVG files (with Inkscape tags removed) and PNGs with the correct
size/padding for the website and docs. Once you've edited the main files, you
can re-generate the Plain SVG and PNG files with:

    ./convert.sh
