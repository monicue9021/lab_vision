# Introduction to Images in Matlab

## Setup

1.  Start the virtual machine
2.  Clone the original lab vision repository

    ```bash
    git clone https://github.com/diego0020/lab_vision.git lab_vision_orig
    ```
3.  Clone your fork from the repository

    ```bash
    git clone https://github.com/<USER>/lab_vision.git lab_vision
    ```
4.  Copy the folder lab2_matlab to your repository

    ```bash
    cp -rf lab_vision_orig/lab2_matlab lab_vision
    ```
5.  Delete the original repository from your machine

    ```bash
    rm -rf lab_vision_orig
    ```
6.  Commit changes to your repository

    ```bash
    cd lab_vision
    git status
    git add *
    git commit -m "added matlab lab"
    ```
7.  Push changes

    ```bash
    git push
    ```    
8.  Download and uncompress the sipi_images misc folder in your home folder

    ```bash
    cd ~
    scp -r vision@guitaca.uniandes.edu.co:/home/vision/sipi_images/misc.tar.gz .
    # alternative
    # wget http://sipi.usc.edu/database/misc.tar.gz
    tar -xzf misc.tar.gz
    ```    
9.  Open matlab

    ```bash
    /usr/local/MATLAB/R2014b/bin/matlab
    ```

Note: On windows you can use [github for windows](https://windows.github.com/) or [git-scm](http://git-scm.com/)

**IMPORTANT**
This file contains questions, you should write your answers here and don't forget to **commit** and **push** to
your github account.

## Working directory

The following commands can be used inside matlab, just like in bash

    -   pwd
    -   ls
    -   cd

For more file system see http://www.mathworks.com/help/matlab/file-operations.html

Note the current directory is also shown at the top of the graphical interface

1.  Change to the *misc* directory, which contains the uncompressed sipi_images
2.  List the contents of the directory

## Reading Images

The [imread](http://www.mathworks.com/help/matlab/ref/imread.html) command is used in matlab to read images. 

1.  Look at the manual page for the command
2.  Read the ``5.1.12`` image
    
    What is the dimension of the output?

<<<<<<< HEAD
    >   256X256 uint 8  (es en blanco y negro)
=======
    >   Answer
>>>>>>> FETCH_HEAD

3.  Read the ``4.2.03`` image
    What is the dimension of the output?

<<<<<<< HEAD
    >   512X512X3 uint 8 (es a color por eso tiene el X3)
=======
    >   Answer
>>>>>>> FETCH_HEAD

## Displaying Images

The following commands can be used for displaying images

-   [image](http://www.mathworks.com/help/matlab/ref/image.html)
-   [imshow](http://www.mathworks.com/help/images/ref/imshow.html)

1.  Look at their manual pages
2.  Try displaying the images read in the previous point using both commands
3.  What are the differences?

<<<<<<< HEAD
    >   El command de image muestra la imagen mucho más pequeña que el command de imshow. Por esta razón se ve como si estuviese comprimida. La imagen de imshow no tiene un eje marcado mientras que la de image si.
=======
    >   Answer
>>>>>>> FETCH_HEAD

## Writing Images

The [imwrite](http://www.mathworks.com/help/matlab/ref/imwrite.html) image is used for writing images to disk

1.  Look at the manual page
2.  Write one of the images from before as png and as jpg
<<<<<<< HEAD
   
 > File names: my4.2.03.png, my.2.4.2.03.jpg

3.  Write a matlab function that takes the path of an image and converts it to jpg
   
 >
      A=imread('4.2.03.tiff');
      imwrite(A,'my.2.4.2.03.jpg')

=======
3.  Write a matlab function that takes the path of an image and converts it to jpg
>>>>>>> FETCH_HEAD

## Matlab and the shell

### Shell from Matlab

It is possible to excecute bash commands from matlab by using the [system](http://www.mathworks.com/help/matlab/ref/system.html) command
or by using a [bang](http://www.mathworks.com/help/matlab/matlab_env/run-external-commands-scripts-and-programs.html)

1.  Look at the manual pages
2.  Try it (for example ``!ps``)

### Matlab from the shell

It is also possible to invoke matlab in a non interactive mode to run a script from the terminal. If the matlab
binary is on the system PATH you can do something like this

```bash
matlab -nodisplay -nosplash -r "write_jpg('boat.512.tiff'); exit"
# or
matlab -nodisplay -nosplash script.m"
```
If the command or script doesn't end in ``exit`` the matlab shell will stay open, and will block the bash script.

### Exercise

1.  Create a script for converting all tiff images to jpeg
    -   You may create a bash script that calls matlab
    -   Or a matlab script that calls bash 
    -   Or both
2.  Save this script in the matlab lab folder of your git repository

<<<<<<< HEAD
        $sudo apt-get install imagemagick
        $convert File.tif File.jpg
        $for f in $(find-name *.tiff);
        do echo "converting $f";
        convert "$f" "$(basename "$f".tif).jpg"; done
   
 Referencia: http://askubuntu.com/questions/60401/batch-processing-tif-images-converting-tif-to-jpeg

=======
>>>>>>> FETCH_HEAD
## Filters

### Adding noise

The [imnoise](http://www.mathworks.com/help/images/ref/imnoise.html) command can be used to add noise to images.
We can do this to simulate difficult capture conditions, and evaluate the algorithms over difficult situations.

1.  Read the manual page
2.  Try the diffente noise types, and save the noisy images to the repository (5 images)
<<<<<<< HEAD
   
 >   Ejemplo:
        A = imread('7.1.08.tiff');
        J = imnoise(A,'salt & pepper');
         figure, imshow(A)
         figure, imshow(J)

        Problema: cuando uso este script para crear la imagen con el ruido "localvar" me sale el siguiente error en Matlab:
         Error using imnoise>ParseInputs (line 200)
         Too few inputs for 'localvar' noise.
        Error in imnoise (line 84)
         [a, code, classIn, classChanged, p3, p4] =
         ParseInputs(varargin{:});

      Nose como arreglarlo.


3.  Try saving noisy images as jpg, what happens?

    > La imagen se guarda sin ningun problema pero la dimensión del output cambia de 512X512 a 603X682X3 porque se crea un borde blanco al rededor de la imagen con ruido. Sin embargo, la cantidad de ruido o el resto de las propiedades de la imagen no cambian.
=======
3.  Try saving noisy images as jpg, what happens?

    > Answer
>>>>>>> FETCH_HEAD

### Median filter

These filters can be applied to a an image in order to remove noise. 
-   To apply a mean filter create it with the function [fspecial](http://www.mathworks.com/help/images/ref/fspecial.html)
    and apply it with [imfilter](http://www.mathworks.com/help/images/ref/imfilter.html) 
-   To apply a median filter use the function [medfilt2](http://www.mathworks.com/help/images/ref/medfilt2.html)

1.  Read the manuals for the functions described above
2.  Try applying both kinds of filters to noisy images. Be sure to zoom in to see the effects
3.  Try different sizes for the filters
4.  Which filter works best for salt & pepper noise?

<<<<<<< HEAD
    > El filtro que tiene el mejor efeco sobre el ruido de salt&pepper es el "average" de imfilter. El medfilt2 parece ser mejor pero al hacerle zoom a la imagen, esta se ve distorcionada y los bordes se empiezan a torcer.  
=======
    > Answer
>>>>>>> FETCH_HEAD

For more on noise removal read http://www.mathworks.com/help/images/noise-removal.html

### Blur

To blur or smooth an image we can use the mean filter described above. We can also use the gaussian filter
which can be otained from [fspecial](http://www.mathworks.com/help/images/ref/fspecial.html).

1.  Smooth an image using average and gaussian filters
2.  Try different sizes for the filters
3.  What differences do you notice?

<<<<<<< HEAD
    > Los dos filtros son bastante similares. Sin embargo, si existe una diferencia y esto tiene que ver con los "neighbor pixels". En el average filter, los pixeles al rededor del pixel que se está filtrando tienen el mismo grado de contribución al efecto del filtro mientras que en el gaussian filter los "neighbor pixels" tienen diferentes grados de contribución basados en una distribución gaussiana donde los pixeles que están más cerca tienen mayor contribución a los que están más lejos. (Respuesta basada en lo que ví y la teoría que aprendimos en clase).
    
=======
    > Answer
>>>>>>> FETCH_HEAD

### Sharpen

The [imsharpen](http://www.mathworks.com/help/images/ref/imsharpen.html) function lets us sharpen an image. 

1.  Sharp the ``5.1.12`` image. What do you notice?

<<<<<<< HEAD
    > El contraste aumenta, es decir, los pixeles negros ahora se ven más negros y los blancos ahora se ven más blancos. Sin embargo la imagen como tal no se ve significativamente nítida. 

2.  Sharp a blurred image. What do you notice?

    > El contraste aumenta pero la imagen continua siendo borrosa.
=======
    > Answer

2.  Sharp a blurred image. What do you notice?

    > Answer
>>>>>>> FETCH_HEAD

### Edge detection

The following filters from fspecil can be used to enhance edges in an image
-   laplacian
-   log
-   prewitt
-   sobel

Notice that the last two filters detect horizontal edges, in order to detect vertical edges you have to transpose them.

<<<<<<< HEAD
1.  Try applying these filters
2.  What is the difference between prewitt and sobel?

    > No hay un diferencia muy notable entre prewitt y sobel. Lo único que se puede ver es que Sobel crea un mayor contraste que prewitt para los edges horizontales.
=======
1.  Try applying this filters
2.  What is the difference between prewitt and sobel?

    > Answer
>>>>>>> FETCH_HEAD

More sophisticated methods for finding edges can be found in the following pages
    -   http://www.mathworks.com/discovery/edge-detection.html
    -   http://www.mathworks.com/help/images/ref/edge.html

### More

For more filtering operations look at http://www.mathworks.com/help/images/linear-filtering.html

## Color Spaces

As seen on the section on reading image, color images are represented by matrices with 4 dimensios.
The [color](http://www.mathworks.com/help/images/color.html) matlab module contains functions for moving between
color spaces.

1.  Load the ``4.2.03.tiff`` image (Mandril).
2.  Split it into the three color channels
    
    ```matlab
    img=imread('4.2.03.tiff');
    r = img(:,:,1);
    g = img(:,:,2);
    b = img(:,:,3);
    ```
3.  Look at the three channels simultaneusly

    ```matlab
    figure;
    subplot(2,2,1), subimage(img);
    subplot(2,2,2), subimage(r);
    subplot(2,2,3), subimage(g);
    subplot(2,2,4), subimage(b);
    ```
    
4.  Save the mosaic as a png file
    
    ```matlab
    print ('-dpng','rgb_mosaic.png');
    ```
5.  Transform the image to the following color spaces and repeat the exercise
    -   ycbcr
    -   lab
    -   hsv (use [rgb2hsv](http://www.mathworks.com/help/matlab/ref/rgb2hsv.html))

6.  Save all the mosaics in your github repository

## Pyramids

The [impyramid](http://www.mathworks.com/help/images/ref/impyramid.html) function creates gaussian pyramids from an image.

1.  Read the manual page
2.  Create a four level pyramid from the ``5.1.12`` clock  image
<<<<<<< HEAD
3.  At what level do the people in the picture dissappear?

    >   Las personas desaparecen de la imagen (demasiado pixelado) en el tercer nivel.
    
4.  At what level do the numbers in the clock disappear?

    >   Los numeros del reloj se empiezan a ver borrosos despues del segundo nivel y su forma desaparece completamente después del tercero.
=======
3.  At what level does the people in the picture dissappear?

    >   Answer
    
4.  At what level does the numbers in the clock disappear?

    >   Answer
>>>>>>> FETCH_HEAD

## Template Matching

The [norm2corrx](http://www.mathworks.com/help/images/ref/normxcorr2.htm) can be used to look for patterns in an image.

1.  Download the ``sequences.tar.gz`` file (from guitaca or sipi) and decompress it
2.  Go to the sequences directory
3.  Read the ``motion04.512.tiff`` image
4.  Use the ``imcrop`` comand to crop the train at the right side of the figure
    
    ```matlab
    [train,square] = imcrop(image);
    ```
<<<<<<< HEAD
5.  Now use [normxcorr2](http://www.mathworks.com/help/images/ref/normxcorr2.html) to locate the train back in the image
=======
5.  Now use [normxcorr2](http://www.mathworks.com/help/images/ref/normxcorr2.htm) to locate the train back in the image
>>>>>>> FETCH_HEAD

    ```matlab
    c=normxcorr2(train,image);
    % c is correlation from -1 to 1
    [sx,sy] = size(image);
    d=floor(size(train)/2);
    dx=d(1);
    dy=d(2);
    %Remove borders from c2 to make it the same size as image
    c2=c(dx+1:sx+dx,dy+1:sy+dy);
    %lets accentuate it more
    c3=c2.^3;
    %convert it into an image from 0 to 1
    cr=0.5+0.5*c3;
    %leave the original image as the luminance channel
    y=mat2gray(image);
    %empty cb channel
    cb=0.5*ones(size(image));
    %join the three channels
    ycbcr=cat(3,y,cb,cr);
    rgb=ycbcr2rgb(ycbcr);
    imshow(rgb);
    ```
6.  Explain what the above code does

<<<<<<< HEAD
    > El código crea un template del tren basado en la imagen dada y luego hace el template matching de este grupo de pixeles dentro de la imagen para crear un match.
=======
    > Answer
>>>>>>> FETCH_HEAD
    
7.  Now lets find the train in the next frame, read image ``motion05.512.tiff``.
8.  Apply the procedure written above to it (use the train template from the past frame)
9.  What are the limitations of this method?

<<<<<<< HEAD
    > Las limitaciones de este método es que el template se hizo de la misma imagen que se "scaneo" después para encontrar el tren. Es decir, obviamente iba a haber un match basicamente perfecto porque es la misma imagen pero si este template se hubiese usado para otra imagen completamente diferente (que tambien tenga un tren), es muy probable que el match no sea tan bueno.
=======
    > Answer
>>>>>>> FETCH_HEAD

See [here](http://www.mathworks.com/help/images/examples/registering-an-image-using-normalized-cross-correlation.html)
another example.

## End

Don't forget to commit and push your answers and images to github
