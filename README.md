Uncompress kernel image
-----------------------

A small shell script that uncompresses a linux kernel image. It searches 
for the gzip header (using grep), copies the compressed part to a tmp 
file and gunzips it.

Usage
-----

Usually just:

    ./uncompress-kernel-image.sh /vmlinuz

Call the script with the vmlinuz file as parameter. It will do some
magic and create a file image (in the current directory) that contains
the kernel ELF binary contained in the vmlinuz file.

Tested with an Ubuntu kernel, if you find any bugs or have any other comments, 
write me an eMail to: johannes.thoma@gmx.at

License
-------

This is GPL. See www.gnu.org for more details.

Author
------

This was written by Johannes Thoma <johannes.thoma@gmx.at>
