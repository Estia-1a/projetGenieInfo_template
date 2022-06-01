# estia-image
This library provide three main functions:
-   read_image_data : read an image from the filesystem
-   write_image_data : write an image to the filesystem
-   free_image_data : free the buffer from read_image_data

The data is provided as a one dimensionnal array of R G B R G B...

-   This library does not provide a smart way to access the pixels
    -   No access x, y
    -   No access to R, G, B directly
    -   a solution to this problem is provided in the branch libestia-image-getPixels but **SHOULD NOT BE MERGED**

-   A struct / object like version could be provided (see branch libestia-image-struct) but this is not advised yet seeing the C level from the students. This could be open to discussion

- [ ]   Todo : complete with full documentation
- [ ]   read and write should adapt from the extension of the provided filename

# Contributing
Please keep the following standard :
-   **Snake Case**: write functions, variables names with underscore rather than uppercase for multi-word names.  
-   **Do not use abbreviation**: Keep full name for variables, function names etc.
-   **Small commits**: Commits should contains only one improvement/feature addition and so on so that they can easily be cherry pick. Commit often or commmit only selected line
-   **Uniform commit structure** Title of the commit should be
> [Topic] One liner
precision about the commits
