��    M      �  g   �      �  u  �    �  �   	  �   �	  �   t
       <     �   V  �   �  9   �  `  �  �   .     �  w     �   {     Y  .  j     �  �   �  �  �  �   .  �   �  �   �  D    �   b  [   �  ?  E  �   �  �   !  C    C  _  c   �  8    J   @  )  �  B   �   .   �   F   '!  J   n!     �!  �  �!  �   \'  =  2(  �   p*  �  @+  �  �/  �  �1  c  �5    :     .<  �   5<  s   �<  6   1=  3   h=  C   �=  F   �=  N   '>  B   v>  �  �>  �  p@  �   B  �   �B  L   rC    �C  �   �D  m   uE  c   �E  }   GF     �F     �F     �F     �F     �F     �F  	   �F      G  *  	G  �  4H  O  �I  �   (K  �   L  �   �L     �M  B   �M  �   �M  �   ~N  N   9O  �  �O  �   Q     �Q  �    R    �R     �S  �  �S     JU  )  \U  �  �V  �   X  �   �X  �   �Y  �  jZ  �   �[  m   �\  \  �\  �   S^     �^  [  `  [  {a  }   �b  ^  Uc  G   �d  V  �d  L   Sf  4   �f  y   �f  [   Og     �g  �  �g  �   �n  �  �o  �   r  ;  s  2  =y  f  p{  S  �  X  +�     ��  �   ��  �   =�  C   ш  P   �  R   f�  S   ��  [   �  H   i�  �  ��  �  ��  �   ��  �   S�  `   :�  O  ��  �   �  h   ��  r   �  �   ��     �     �     "�     )�     0�     B�  	   J�     T�     5           E   H   =   $         	      .   7              &       A          -           I                  ;       
   9   C   "      M   #                  :       4          J   /       )   *   D      3   +       0       '      K   >   B                      ,      G   @            8   %   6      (                 L       2   ?       <   1                   F   !           Automatically save the alignments file after a set amount of frames. By default the alignments file is only saved at the end of the extraction process. NB: If extracting in 2 passes then the alignments file will only start to be saved out during the second pass. WARNING: Don't interrupt the script when writing the file because it might get corrupted. Set to 0 to turn off Batch size. This is the number of images processed through the model for each side per iteration. NB: As the model is fed 2 sides at a time, the actual number of images within the model at any one time is double the number that you set here. Larger batches require more GPU RAM. Color augmentation helps make the model less susceptible to color differences between the A and B sets, at an increased training time cost. Enable this option to disable color augmentation. DEPRECATED - This option will be removed in a future update. Path to alignments file for training set A. Defaults to <input-A>/alignments.json if not provided. DEPRECATED - This option will be removed in a future update. Path to alignments file for training set B. Defaults to <input-B>/alignments.json if not provided. Data Disable multiprocessing. Slower but less resource intensive. Disables TensorBoard logging. NB: Disabling logs means that you will not be able to use the graph or analysis for this session in the GUI. Don't run extraction in parallel. Will run each part of the extraction process separately (one after the other) rather than all at the smae time. Useful if VRAM is at a premium. Draw landmarks on the ouput faces for debugging purposes. Enable On-The-Fly Conversion. NOT recommended. You should generate a clean alignments file for your destination video. However, if you wish you can generate the alignments on-the-fly by enabling this option. This will use an inferior extraction pipeline and will lead to substandard results. If an alignments file is found, this option will be ignored. Extract every 'nth' frame. This option will skip frames when extracting faces. For example a value of 1 will extract faces from every frame, a value of 10 will extract faces from every 10th frame. Face Processing Filters out faces detected below this size. Length, in pixels across the diagonal of the bounding box. Set to 0 for off For use with the optional nfilter/filter files. Threshold for positive face recognition. Lower values are stricter. NB: Using face filter will significantly decrease extraction speed and its accuracy cannot be guaranteed. Frame Processing Frame ranges to apply transfer to e.g. For frames 10 to 50 and 90 to 100 use --frame-ranges 10-50 90-100. Frames falling outside of the selected range will be discarded unless '-k' (--keep-unchanged) is selected. NB: If you are converting from images, then the filenames must end with the frame-number! Global Options If a face isn't found, rotate the images to try to find a face. Can find more faces at the cost of extraction speed. Pass in a single number to use increments of that size up to 360, or pass in a list of numbers to enumerate exactly what angles to check. If you have not cleansed your alignments file, then you can filter out faces by defining a folder here that contains the faces extracted from your input files/video. If this folder is defined, then only faces that exist within your alignments file and also exist within the specified folder will be converted. Leaving this blank will convert all faces that exist within the alignments file. Input directory or video. Either a directory containing the image files you wish to process or path to a video file. NB: This should be the source video/frames NOT the source faces. Input directory. A directory containing training images for face A. This is the original face, i.e. the face that you want to remove and replace with face B. Input directory. A directory containing training images for face B. This is the swap face, i.e. the face that you want to place onto the head of person A. Length of training in iterations. This is only really used for automation. There is no 'correct' number of iterations a model should be trained for. You should stop training when you are happy with the previews. However, if you want the model to stop automatically at a set number of iterations, you can set that value here. Log level. Stick with INFO or VERBOSE unless you need to file an error report. Be careful with TRACE as it will generate a lot of data Model directory. The directory containing the trained model you wish to use for conversion. Model directory. This is where the training data will be stored. You should always specify a new folder for new models. If starting a new model, select either an empty folder, or a folder which does not exist (which will be created). If continuing to train an existing model, specify the location of the existing model. Only required if converting from images to video. Provide The original video that the source frames were extracted from (for extracting the fps and audio). Optional for creating a timelapse. Timelapse will save an image of your selected faces into the timelapse-output folder at every save iteration. If the input folders are supplied but no output folder, it will default to your model folder /timelapse/ Optional for creating a timelapse. Timelapse will save an image of your selected faces into the timelapse-output folder at every save iteration. This should be the input folder of 'A' faces that you would like to use for creating the timelapse. You must also supply a --timelapse-output and a --timelapse-input-B parameter. Optional for creating a timelapse. Timelapse will save an image of your selected faces into the timelapse-output folder at every save iteration. This should be the input folder of 'B' faces that you would like to use for creating the timelapse. You must also supply a --timelapse-output and a --timelapse-input-A parameter. Optional path to an alignments file. Leave blank if the alignments file is at the default location. Optionally filter out people who you do not wish to process by passing in an image of that person. Should be a front portrait with a single person in the image. Multiple images can be added space separated. NB: Using face filter will significantly decrease extraction speed and its accuracy cannot be guaranteed. Optionally overide the saved config with the path to a custom config file. Optionally select people you wish to process by passing in an image of that person. Should be a front portrait with a single person in the image. Multiple images can be added space separated. NB: Using face filter will significantly decrease extraction speed and its accuracy cannot be guaranteed. Output directory. This is where the converted files will be saved. Output to Shell console instead of GUI console Path to store the logfile. Leave blank to store in the faceswap folder Percentage amount to scale the preview by. 100%% is the model output size. Plugins R|Additional Masker(s) to use. The masks generated here will all take up GPU RAM. You can select none, one or multiple masks, but the extraction may take longer the more you select. NB: The Extended and Components (landmark based) masks are automatically generated on extraction.
L|vgg-clear: Mask designed to provide smart segmentation of mostly frontal faces clear of obstructions. Profile faces and obstructions may result in sub-par performance.
L|vgg-obstructed: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been specifically trained to recognize some facial obstructions (hands and eyeglasses). Profile faces may result in sub-par performance.
L|unet-dfl: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been trained by community members and will need testing for further description. Profile faces may result in sub-par performance.
The auto generated masks are as follows:
L|components: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks to create a mask.
L|extended: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks and the mask is extended upwards onto the forehead.
(eg: `-M unet-dfl vgg-clear`, `--masker vgg-obstructed`) R|Aligner to use.
L|cv2-dnn: A CPU only landmark detector. Faster, less resource intensive, but less accurate. Only use this if not using a GPU and time is important.
L|fan: Best aligner. Fast on GPU, slow on CPU. R|Detector to use. Some of these have configurable settings in '/config/extract.ini' or 'Settings > Configure Extract 'Plugins':
L|cv2-dnn: A CPU only extractor which is the least reliable and least resource intensive. Use this if not using a GPU and time is important.
L|mtcnn: Good detector. Fast on CPU, faster on GPU. Uses fewer resources than other GPU detectors but can often return more false positives.
L|s3fd: Best detector. Slow on CPU, faster on GPU. Can detect more faces and fewer false positives than other GPU detectors, but is a lot more resource intensive. R|Exclude GPUs from use by Faceswap. Select the number(s) which correspond to any GPU(s) that you do not wish to be made available to Faceswap. Selecting all GPUs here will force Faceswap into CPU mode.
L|{} R|Masker to use. NB: The mask you require must exist within the alignments file. You can add additional masks with the Mask Tool.
L|none: Don't use a mask.
L|components: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks to create a mask.
L|extended: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks and the mask is extended upwards onto the forehead.
L|vgg-clear: Mask designed to provide smart segmentation of mostly frontal faces clear of obstructions. Profile faces and obstructions may result in sub-par performance.
L|vgg-obstructed: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been specifically trained to recognize some facial obstructions (hands and eyeglasses). Profile faces may result in sub-par performance.
L|unet-dfl: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been trained by community members and will need testing for further description. Profile faces may result in sub-par performance. R|Performing normalization can help the aligner better align faces with difficult lighting conditions at an extraction speed cost. Different methods will yield different results on different sets. NB: This does not impact the output face, just the input to the aligner.
L|none: Don't perform normalization on the face.
L|clahe: Perform Contrast Limited Adaptive Histogram Equalization on the face.
L|hist: Equalize the histograms on the RGB channels.
L|mean: Normalize the face colors to the mean. R|Performs color adjustment to the swapped face. Some of these options have configurable settings in '/config/convert.ini' or 'Settings > Configure Convert Plugins':
L|avg-color: Adjust the mean of each color channel in the swapped reconstruction to equal the mean of the masked area in the original image.
L|color-transfer: Transfers the color distribution from the source to the target image using the mean and standard deviations of the L*a*b* color space.
L|manual-balance: Manually adjust the balance of the image in a variety of color spaces. Best used with the Preview tool to set correct values.
L|match-hist: Adjust the histogram of each color channel in the swapped reconstruction to equal the histogram of the masked area in the original image.
L|seamless-clone: Use cv2's seamless clone function to remove extreme gradients at the mask seam by smoothing colors. Generally does not give very satisfactory results.
L|none: Don't perform color adjustment. R|Select which trainer to use. Trainers can be configured from the Settings menu or the config folder.
L|original: The original model created by /u/deepfakes.
L|dfaker: 64px in/128px out model from dfaker. Enable 'warp-to-landmarks' for full dfaker method.
L|dfl-h128: 128px in/out model from deepfacelab
L|dfl-sae: Adaptable model from deepfacelab
L|dlight: A lightweight, high resolution DFaker variant.
L|iae: A model that uses intermediate layers to try to get better details
L|lightweight: A lightweight model for low-end cards. Don't expect great results. Can train as low as 1.6GB with batch size 8.
L|realface: A high detail, dual density model based on DFaker, with customizable in/out resolution. The autoencoders are unbalanced so B>A swaps won't work so well. By andenixa et al. Very configurable.
L|unbalanced: 128px in/out model from andenixa. The autoencoders are unbalanced so B>A swaps won't work so well. Very configurable.
L|villain: 128px in/out model from villainguy. Very resource hungry (You will require a GPU with a fair amount of VRAM). Good for details, but more susceptible to color differences. R|The plugin to use to output the converted images. The writers are configurable in '/config/convert.ini' or 'Settings > Configure Convert Plugins:'
L|ffmpeg: [video] Writes out the convert straight to video. When the input is a series of images then the '-ref' (--reference-video) parameter must be set.
L|gif: [animated image] Create an animated gif.
L|opencv: [images] The fastest image writer, but less options and formats than other plugins.
L|pillow: [images] Slower than opencv, but has more options and supports more formats. Saving Scale the final output frames by this amount. 100%% will output the frames at source dimensions. 50%% at half size 200%% at double size Sets the number of iterations before saving a backup snapshot of the model in it's current state. Set to 0 for off. Sets the number of iterations between each model save. Show training preview output. in a separate window. Skip frames that already have detected faces in the alignments file Skip saving the detected faces to disk. Just create an alignments file Skips frames that have already been extracted and exist in the alignments file Swap the model. Instead converting from of A -> B, converts B -> A The maximum number of parallel processes for performing conversion. Converting images is system RAM heavy so it is possible to run out of memory if you have a lot of processes and not enough RAM to accommodate them all. Setting this to 0 will use the maximum available. No matter what you set this to, it will never attempt to use more processes than are available on your system. If singleprocess is enabled this setting will be ignored. The number of times to re-feed the detected face into the aligner. Each time the face is re-fed into the aligner the bounding box is adjusted by a small amount. The final landmarks are then averaged from each iteration. Helps to remove 'micro-jitter' but at the cost of slower extraction speed. The more times the face is re-fed into the aligner, the less micro-jitter should occur but the longer extraction will take. The output size of extracted faces. Make sure that the model you intend to train supports your required size. This will only need to be changed for hi-res models. To effectively learn, a random set of images are flipped horizontally. Sometimes it is desirable for this not to occur. Generally this should be left off except for during 'fit training'. Use the Tensorflow Mirrored Distrubution Strategy to train on multiple GPUs. Warping is integral to training the Neural Network. This option should only be enabled towards the very end of training to try to bring out more detail. Think of it as 'fine-tuning'. Enabling this option from the beginning is likely to kill a model and lead to terrible results. Warps training faces to closely matched Landmarks from the opposite face-set rather than randomly warping the face. This is the 'dfaker' way of doing warping. When used with --frame-ranges outputs the unchanged frames that are not processed instead of discarding them. Writes the training result to a file. The image will be stored in the root of your FaceSwap folder. [LEGACY] This only needs to be selected if a legacy model is being loaded or if there are multiple models in the model folder augmentation faces model output preview settings timelapse training Project-Id-Version: 
PO-Revision-Date: 2021-02-19 00:11+0000
Last-Translator: 
Language-Team: 
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.4.2
Plural-Forms: nplurals=2; plural=(n != 1);
 Guardar automáticamente el archivo de alineaciones después de una cantidad determinada de cuadros. Por defecto, el archivo de alineaciones sólo se guarda al final del proceso de extracción. Nota: Si se extrae en 2 pases, el archivo de alineaciones sólo se empezará a guardar durante el segundo pase. ADVERTENCIA: No interrumpa el script al escribir el archivo porque podría corromperse. Poner a 0 para desactivar Tamaño del lote. Este es el número de imágenes procesadas a través del modelo para cada lado por iteración. Nota: Como el modelo se alimenta de 2 lados a la vez, el número real de imágenes dentro del modelo en cualquier momento es el doble del número que se establece aquí. Los lotes más grandes requieren más RAM de la GPU. El aumento del color ayuda a que el modelo sea menos susceptible a las diferencias de color entre los conjuntos A y B, con un mayor coste de tiempo de entrenamiento. Activa esta opción para desactivar el aumento de color. DEPRECIADO - Esta opción se eliminará en una futura actualización. Ruta al archivo de alineaciones para el conjunto de entrenamiento A. Por defecto es <input-A>/alignments.json si no se proporciona. DEPRECIADO - Esta opción se eliminará en una futura actualización. Ruta al archivo de alineaciones para el conjunto de entrenamiento B. Por defecto es <input-B>/alignments.json si no se proporciona. Datos Desactiva el multiproceso. Es más lento, pero usa menos recursos. Desactiva el registro de TensorBoard. NB: Desactivar los registros significa que no podrá utilizar el gráfico o el análisis de esta sesión en la GUI. No ejecute la extracción en paralelo. Ejecutará cada parte del proceso de extracción por separado (una tras otra) en lugar de hacerlo todo al mismo tiempo. Útil si la VRAM es escasa. Dibujar puntos de referencia en las caras de salida para fines de depuración. Activar la conversión sobre la marcha. NO se recomienda. Debe generar un archivo de alineación limpio para su vídeo de destino. Sin embargo, si lo desea, puede generar las alineaciones sobre la marcha activando esta opción. Esto utilizará una tubería de extracción inferior y conducirá a resultados de baja calidad. Si se encuentra un archivo de alineaciones, esta opción será ignorada. Extraer cada 'enésimo' fotograma. Esta opción omitirá los fotogramas al extraer las caras. Por ejemplo, un valor de 1 extraerá las caras de cada fotograma, un valor de 10 extraerá las caras de cada 10 fotogramas. Proceso de Caras Filtra las caras detectadas por debajo de este tamaño. Longitud, en píxeles a lo largo de la diagonal del cuadro delimitador. Establecer a 0 para desactivar Para usar con los archivos opcionales nfilter/filter. Umbral para el reconocimiento positivo de caras. Los valores más bajos son más estrictos. NB: El uso del filtro facial disminuirá significativamente la velocidad de extracción y no se puede garantizar su precisión. Proceso de fotogramas Rangos de fotogramas a los que aplicar la transferencia, por ejemplo, para los fotogramas de 10 a 50 y de 90 a 100 utilice --frame-ranges 10-50 90-100. Los fotogramas que queden fuera del rango seleccionado se descartarán a menos que se seleccione '-k' (--keep-unchanged). Nota: Si está convirtiendo imágenes, ¡los nombres de los archivos deben terminar con el número de fotograma! Opciones Globales Si no se encuentra una cara, gira las imágenes para intentar encontrar una cara. Puede encontrar más caras a costa de la velocidad de extracción. Pase un solo número para usar incrementos de ese tamaño hasta 360, o pase una lista de números para enumerar exactamente qué ángulos comprobar. Si no ha limpiado su archivo de alineaciones, puede filtrar las caras definiendo aquí una carpeta que contenga las caras extraídas de sus archivos/vídeos de entrada. Si se define esta carpeta, sólo se convertirán las caras que existan en el archivo de alineaciones y también en la carpeta especificada. Si se deja en blanco, se convertirán todas las caras que existan en el archivo de alineaciones. Directorio o vídeo de entrada. Un directorio que contenga los archivos de imagen que desea procesar o la ruta a un archivo de vídeo. NB: Debe ser el vídeo/los fotogramas de origen, NO las caras de origen. Directorio de entrada. Un directorio que contiene imágenes de entrenamiento para la cara A. Esta es la cara original, es decir, la cara que se quiere eliminar y sustituir por la cara B. Directorio de entrada. Un directorio que contiene imágenes de entrenamiento para la cara B. Esta es la cara de intercambio, es decir, la cara que se quiere colocar en la cabeza de la persona A. Duración del entrenamiento en iteraciones. Esto sólo se utiliza realmente para la automatización. No hay un número 'correcto' de iteraciones para las que deba entrenarse un modelo. Debe dejar de entrenar cuando esté satisfecho con las previsiones. Sin embargo, si desea que el modelo se detenga automáticamente en un número determinado de iteraciones, puede establecer ese valor aquí. Nivel de registro. Dejarlo en INFO o VERBOSE, a menos que necesite informar de un error. Tenga en cuenta que TRACE generará muchísima información Directorio del modelo. El directorio que contiene el modelo entrenado que desea utilizar para la conversión. Directorio del modelo. Aquí es donde se almacenarán los datos de entrenamiento. Siempre debe especificar una nueva carpeta para los nuevos modelos. Si se inicia un nuevo modelo, seleccione una carpeta vacía o una carpeta que no exista (que se creará). Si continúa entrenando un modelo existente, especifique la ubicación del modelo existente. Sólo es necesario si se convierte de imágenes a vídeo. Proporcione el vídeo original del que se extrajeron los fotogramas de origen (para extraer los fps y el audio). Opcional para crear un timelapse. Timelapse guardará una imagen de las caras seleccionadas en la carpeta timelapse-output en cada iteración de guardado. Si se suministran las carpetas de entrada pero no la carpeta de salida, se guardará por defecto en la carpeta del modelo /timelapse/ Opcional para crear un timelapse. Timelapse guardará una imagen de las caras seleccionadas en la carpeta timelapse-output en cada iteración de guardado. Esta debe ser la carpeta de entrada de las caras "A" que desea utilizar para crear el timelapse. También debe suministrar un parámetro --timelapse-output y un parámetro --timelapse-input-B. Opcional para crear un timelapse. Timelapse guardará una imagen de las caras seleccionadas en la carpeta timelapse-output en cada iteración de guardado. Esta debe ser la carpeta de entrada de las caras "B" que desea utilizar para crear el timelapse. También debe suministrar un parámetro --timelapse-output y un parámetro --timelapse-input-A. Ruta opcional a un archivo de alineaciones. Dejar en blanco si el archivo de alineaciones está en la ubicación por defecto. Opcionalmente, puede filtrar las personas que no desea procesar pasando una imagen de esa persona. Debe ser un retrato frontal con una sola persona en la imagen. Se pueden añadir varias imágenes separadas por espacios. NB: El uso del filtro de caras disminuirá significativamente la velocidad de extracción y no se puede garantizar su precisión. Usar un fichero alternativo de configuración, almacenado en esta ruta. Opcionalmente, seleccione las personas que desea procesar pasando una imagen de esa persona. Debe ser un retrato frontal con una sola persona en la imagen. Se pueden añadir varias imágenes separadas por espacios. NB: El uso del filtro facial disminuirá significativamente la velocidad de extracción y no se puede garantizar su precisión. Directorio de salida. Aquí es donde se guardarán los archivos convertidos. Salida a la consola Shell en lugar de la consola GUI Ruta para almacenar el fichero de registro. Dejarlo en blanco para almacenarlo en la carpeta pde instalación de faceswap Cantidad porcentual para escalar la vista previa. 100%% es el tamaño de salida del modelo. Extensiones R|Enmascarador(es) adicional(es) a usar. Las máscaras generadas aquí usarán todas RAM de la GPU. Puede seleccionar una, varias o ninguna máscaras, pero la extracción tardará más cuanto más marque. Las máscaras Extended y Components son siempre generadas durante la extracción.
L|vgg-clear: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales y libres de obstrucciones. Los rostros de perfil y las obstrucciones pueden dar lugar a un rendimiento inferior.
L|vgg-obstructed: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales. El modelo de la máscara ha sido entrenado específicamente para reconocer algunas obstrucciones faciales (manos y gafas). Los rostros de perfil pueden dar lugar a un rendimiento inferior.
L|unet-dfl: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales. El modelo de máscara ha sido entrenado por los miembros de la comunidad y necesitará ser probado para una mayor descripción. Los rostros de perfil pueden dar lugar a un rendimiento inferior.
Las máscaras que siempre se generan son:
L|components: Máscara diseñada para proporcionar una segmentación facial basada en el posicionamiento de las ubicaciones de los puntos de referencia. Se construye un casco convexo alrededor del exterior de los puntos de referencia para crear una máscara.
L|extended: Máscara diseñada para proporcionar una segmentación facial basada en el posicionamiento de las ubicaciones de los puntos de referencia. Se construye un casco convexo alrededor del exterior de los puntos de referencia y la máscara se extiende hacia arriba en la frente.
(eg: `-M unet-dfl vgg-clear`, `--masker vgg-obstructed`) R|Alineador a usar.
L|cv2-dnn: Detector que usa sólo la CPU. Más rápido, usa menos recursos, pero es menos preciso. Elegir este si necesita rapidez y no usar la GPU.
L|fan: El mejor alineador. Rápido en la GPU, y lento en la CPU. R|Detector de caras a usar. Algunos tienen ajustes configurables en '/config/extract.ini' o 'Ajustes > Configurar Extensiones de Extracción:
L|cv2-dnn: Extractor que usa sólo la CPU. Es el menos fiable y el que menos recursos usa. Elegir este si necesita rapidez y no usar la GPU.
L|mtcnn: Buen detector. Rápido en la CPU y más rápido en la GPU. Usa menos recursos que otros detectores basados en GPU, pero puede devolver más falsos positivos.
L|s3fd: El mejor detector. Lento en la CPU, y más rápido en la GPU. Puede detectar más caras y tiene menos falsos positivos que otros detectores basados en GPU, pero uso muchos más recursos. R|Excluir GPUs de su uso por Faceswap. Seleccione el/los número(s) que correpondan a cualquier GPU(s) que no desee que esté disponible para su uso con Faceswap. Marcar todas las GPUs forzará a Faceswap a usar sólo la CPU,
L|{} R|Máscara a utilizar. NB: La máscara que necesita debe existir en el archivo de alineaciones. Puede añadir máscaras adicionales con la herramienta de máscaras.
L|ninguna: No utilizar una máscara.
L|components: Máscara diseñada para proporcionar una segmentación facial basada en el posicionamiento de las ubicaciones de los puntos de referencia. Se construye un casco convexo alrededor del exterior de los puntos de referencia para crear una máscara.
L|extended: Máscara diseñada para proporcionar una segmentación facial basada en el posicionamiento de las ubicaciones de los puntos de referencia. Se construye un casco convexo alrededor del exterior de los puntos de referencia y la máscara se extiende hacia arriba en la frente.
L|vgg-clear: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales y libres de obstrucciones. Los rostros de perfil y las obstrucciones pueden dar lugar a un rendimiento inferior.
L|vgg-obstructed: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales. El modelo de la máscara ha sido entrenado específicamente para reconocer algunas obstrucciones faciales (manos y gafas). Los rostros de perfil pueden dar lugar a un rendimiento inferior.
L|unet-dfl: Máscara diseñada para proporcionar una segmentación inteligente de rostros principalmente frontales. El modelo de máscara ha sido entrenado por los miembros de la comunidad y necesitará ser probado para una mayor descripción. Los rostros de perfil pueden dar lugar a un rendimiento inferior. R|Realizar la normalización puede ayudar al alineador a alinear mejor las caras con condiciones de iluminación difíciles a un coste de velocidad de extracción. Diferentes métodos darán diferentes resultados en diferentes conjuntos. NB: Esto no afecta a la cara de salida, sólo a la entrada del alineador.
L|none: No realice la normalización en la cara.
L|clahe: Realice la ecualización adaptativa del histograma con contraste limitado en el rostro.
L|hist: Iguala los histogramas de los canales RGB.
L|mean: Normalizar los colores de la cara a la media. R|Realiza un ajuste de color a la cara intercambiada. Algunas de estas opciones tienen ajustes configurables en '/config/convert.ini' o 'Ajustes > Configurar Extensiones de Conversión':
L|avg-color: Ajuste la media de cada canal de color en la reconstrucción intercambiada para igualar la media del área enmascarada en la imagen original.
L|color-transfer: Transfiere la distribución del color de la imagen de origen a la de destino utilizando la media y las desviaciones estándar del espacio de color L*a*b*.
L|manual-balance: Ajuste manualmente el equilibrio de la imagen en una variedad de espacios de color. Se utiliza mejor con la herramienta de vista previa para establecer los valores correctos.
L|match-hist: Ajuste el histograma de cada canal de color en la reconstrucción intercambiada para igualar el histograma del área enmascarada en la imagen original.
L|seamless-clone: Utilice la función de clonación sin costuras de cv2 para eliminar los gradientes extremos en la costura de la máscara, suavizando los colores. Generalmente no da resultados muy satisfactorios.
L|none: No realice el ajuste de color. R|Seleccione el entrenador que desea utilizar. Los entrenadores se pueden configurar desde el menú de configuración o la carpeta de configuración.
L|original: El modelo original creado por /u/deepfakes.
L|dfaker: Modelo de 64px in/128px out de dfaker. Habilitar 'warp-to-landmarks' para el método completo de dfaker.
L|dfl-h128: modelo de 128px in/out de deepfacelab
L|dfl-sae: Modelo adaptable de deepfacelab
L|dlight: Una variante de DFaker ligera y de alta resolución.
L|iae: Un modelo que utiliza capas intermedias para tratar de obtener mejores detalles.
L|lightweight: Un modelo ligero para tarjetas de gama baja. No esperes grandes resultados. Puede entrenar hasta 1,6GB con tamaño de lote 8.
L|realface: Un modelo de alto detalle y doble densidad basado en DFaker, con resolución de entrada y salida personalizable. Los autocodificadores están desequilibrados, por lo que los intercambios B>A no funcionan tan bien. Por andenixa et al. Muy configurable
L|Unbalanced: modelo de 128px de entrada/salida de andenixa. Los autocodificadores están desequilibrados por lo que los intercambios B>A no funcionarán tan bien. Muy configurable
L|villain: Modelo de 128px de entrada/salida de villainguy. Requiere muchos recursos (se necesita una GPU con una buena cantidad de VRAM). Bueno para los detalles, pero más susceptible a las diferencias de color. R|El plugin a utilizar para dar salida a las imágenes convertidas. Los escritores son configurables en '/config/convert.ini' o 'Ajustes > Configurar Extensiones de Conversión:'
L|ffmpeg: [video] Escribe la conversión directamente en vídeo. Cuando la entrada es una serie de imágenes, el parámetro '-ref' (--reference-video) debe ser establecido.
L|gif: [imagen animada] Crea un gif animado.
L|opencv: [images] El escritor de imágenes más rápido, pero con menos opciones y formatos que otros plugins.
L|pillow: [images] Más lento que opencv, pero tiene más opciones y soporta más formatos. Guardar Escala los fotogramas finales de salida en esta cantidad. 100%% dará salida a los fotogramas a las dimensiones de origen. 50%% a la mitad de tamaño. 200%% al doble de tamaño Establece el número de iteraciones antes de guardar una copia de seguridad del modelo en su estado actual. Establece 0 para que esté desactivado. Establece el número de iteraciones entre cada guardado del modelo. Mostrar la salida de la vista previa del entrenamiento. en una ventana separada. Omitir los fotogramas que ya tienen caras detectadas en el archivo de alineaciones No guardar las caras detectadas en el disco. Crear sólo un archivo de alineaciones Omite los fotogramas que ya han sido extraídos y que existen en el archivo de alineaciones Intercambiar el modelo. En vez de convertir de A a B, convierte de B a A El número máximo de procesos paralelos para realizar la conversión. La conversión de imágenes requiere mucha RAM del sistema, por lo que es posible que se agote la memoria si tiene muchos procesos y no hay suficiente RAM para acomodarlos a todos. Si se ajusta a 0, se utilizará el máximo disponible. No importa lo que establezca, nunca intentará utilizar más procesos que los disponibles en su sistema. Si 'singleprocess' está habilitado, este ajuste será ignorado. El número de veces que hay que volver a introducir la cara detectada en el alineador. Cada vez que la cara se vuelve a introducir en el alineador, el cuadro delimitador se ajusta en una pequeña cantidad. Los puntos de referencia finales se promedian en cada iteración. Esto ayuda a eliminar el 'micro-jitter', pero a costa de una menor velocidad de extracción. Cuantas más veces se vuelva a introducir la cara en el alineador, menos microfluctuaciones se producirán, pero la extracción será más larga. El tamaño de salida de las caras extraídas. Asegúrese de que el modelo que pretende entrenar admite el tamaño deseado. Esto sólo tendrá que ser cambiado para los modelos de alta resolución. Para aprender de forma efectiva, se voltea horizontalmente un conjunto aleatorio de imágenes. A veces es deseable que esto no ocurra. Por lo general, esto debería dejarse sin efecto, excepto durante el 'entrenamiento de ajuste'. Utilice la estrategia de distribución en espejo de Tensorflow para entrenar en múltiples GPUs. La deformación es fundamental para el entrenamiento de la red neuronal. Esta opción sólo debería activarse hacia el final del entrenamiento para tratar de obtener más detalles. Piense en ello como un 'ajuste fino'. Si se activa esta opción desde el principio, es probable que arruine el modelo y se obtengan resultados terribles. Deforma las caras de entrenamiento a puntos de referencia muy parecidos del conjunto de caras opuestas en lugar de deformar la cara al azar. Esta es la forma 'dfaker' de hacer la deformación. Cuando se usa con --frame-ranges, la salida incluye los fotogramas no procesados en vez de descartarlos. Escribe el resultado del entrenamiento en un archivo. La imagen se almacenará en la raíz de su carpeta FaceSwap. [LEGACY] Sólo es necesario seleccionar esta opción si se está cargando un modelo heredado si hay varios modelos en la carpeta de modelos aumento caras modelo salida previsualización ajustes intervalo entrenamiento 