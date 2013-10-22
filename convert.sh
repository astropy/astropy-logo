#!/bin/bash

# Remove old files
rm generated/*

# Convert form Inkscape SVG to PNG
inkscape astropy_logo.svg --export-png=generated/astropy_logo.png
inkscape astropy_logo_linkout.svg --export-png=generated/astropy_logo_linkout.png
inkscape astropy_logo_docs.svg --export-png=generated/astropy_logo_docs.png
inkscape astropy_logo_small.svg --export-png=generated/astropy_logo_small.png
inkscape astropy_logo_word.svg --export-png=generated/astropy_logo_word.png
inkscape dmg_background.svg --export-dpi=72 --export-png=generated/dmg_background.png
inkscape wininst_background.svg --export-png=generated/wininst_background.png
inkscape astropy_logo_notext.svg --export-png=generated/astropy_logo_notext.png
inkscape astropy_powered.svg --export-png=generated/astropy_powered.png
inkscape astropy_powered_white.svg --export-png=generated/astropy_powered_white.png

# Convert form Inkscape SVG to Plain SVG (for web use)
inkscape astropy_logo.svg --export-plain-svg=generated/astropy_logo_plain.svg
inkscape astropy_logo_linkout.svg --export-plain-svg=generated/astropy_logo_linkout_plain.svg
inkscape astropy_logo_docs.svg --export-plain-svg=generated/astropy_logo_docs_plain.svg
inkscape astropy_logo_small.svg --export-plain-svg=generated/astropy_logo_small_plain.svg
inkscape astropy_logo_word.svg --export-plain-svg=generated/astropy_logo_word_plain.svg

# Convert to PNGs required by Astropy website/docs
convert -intent Saturation -colorspace sRGB -filter Lanczos -resize 1000x96 -trim generated/astropy_logo.png generated/astropy_banner_96.png
convert -colorspace sRGB -filter Box -resize 1000x31 -trim generated/astropy_logo_docs.png generated/astropy_docs_32.png
convert -colorspace sRGB -filter Box -resize 1000x20 -trim generated/astropy_logo_linkout.png generated/astropy_linkout_20.png
convert -colorspace sRGB -filter Box -resize 1000x32 -trim generated/astropy_logo_word.png generated/astropy_word_32_tmp.png
convert -background transparent generated/astropy_word_32_tmp.png generated/astropy_word_32_tmp1.png
convert -background transparent -splice 0x5 generated/astropy_word_32_tmp1.png generated/astropy_word_32_tmp2.png
convert -background transparent -gravity south -splice 0x4 generated/astropy_word_32_tmp2.png generated/astropy_word_32.png
convert -filter Lanczos -resize 16x16 -trim generated/astropy_logo_notext.png generated/astropy_logo.ico

# Convert PNG to BMP required by Windows installer
convert generated/wininst_background.png generated/wininst_background.bmp

# Remove full-res PNGs since these aren't needed
rm generated/astropy_logo.png
rm generated/astropy_logo_docs.png
rm generated/astropy_logo_linkout.png
rm generated/astropy_logo_word.png
rm generated/astropy_word_32_tmp.png
rm generated/astropy_word_32_tmp1.png
rm generated/astropy_word_32_tmp2.png
rm generated/wininst_background.png
