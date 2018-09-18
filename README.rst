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

Note that this requires the ImageMagick command ``convert`` and
InkScape (with the command-line ``inkscape`` command) to be installed.

File Descriptions
-----------------

=================================  ======================================== 
Filename                           Description
=================================  ========================================
astropy_logo.svg                   icon + "astropy" + tagline
astropy_logo_small.svg             icon + "astropy"
astropy_logo_small_nogradient.svg  icon + "astropy" (no gradient in icon)
astropy_logo_docs.svg              icon + "astropy:docs"
astropy_logo_notext.svg            icon
astropy_logo_word.svg              "astropy"
astropy_logo_linkout.svg           "astropy" + (linkout icon)
astropy_powered.svg                icon + "astropy-powered" + URL
dmg_background.svg                 MacOSX Disk image installer background
wininst_background.svg             Windows installer background
=================================  ========================================
