# Digital Image Processing (DIP), Color Normalization of Retinal Images, Mini-Project 7

# English

Question)

Color imaging in different lighting conditions results in different images from the same scene. This causes machine vision systems to have problems in some applications, despite this problem. One of the solutions to overcome this problem is to normalize the color in the images. In one of the methods introduced for this purpose, we first move the image from the RGB color space to a new color space where the brightness component is separated from the color. Then, considering the color components of an image as a reference, we try to convert the histogram of the color components of other images into the histogram of the color components of the reference image. Of course, this can be done using the histogram matching technique.

1- Read the following article and apply color normalization to the images Im282_1 to Im288_1 using the Lαβ color space, considering the image Im281_1 as a reference.

2- Discuss the obtained result.

3- Can you suggest another method to normalize the color of retinal images.

Paper:Reinhard E, Pouli T, "Colour Spaces for Colour Transfer", Lecture Notes in Computer Science, Vol. 6626, pp. 1-15, 2011


Abstract)

Color imaging in different lighting conditions results in different images from the same scene. This causes machine vision systems to have problems in some applications, despite this problem. One of the solutions to overcome this problem is to normalize the color in the images.
For this purpose, we first convert the image from the RGB color space to the Lαβ color space, where the brightness component is separated from the color. Then, considering the color components of an image as a reference, we try to convert the color components of other images into the color components of the reference image.
We use Matlab to implement this project.


Result)

Im281_1 = Target Image

<img width="117" alt="Screen Shot 2023-07-28 at 10 31 16 pm" src="https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/4b0d10b4-e19a-4bee-9344-9811c3ed9469">


Normalizing the retinal image for better viewing of vessels:

![Screen Shot 2023-07-28 at 10 36 28 pm](https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/0b0da0d8-674e-478a-9782-ebaf85dda32a)

![Screen Shot 2023-07-28 at 10 38 03 pm](https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/0785650c-66ce-4755-92d9-eadf79c8b1d2)

<img width="683" alt="Screen Shot 2023-07-28 at 10 39 40 pm" src="https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/103971e5-b444-43a6-97bc-ffbb1582de76">

------------------------
Hesamoddin Hosseini


# Persian


سوال)

تصویربرداری رنگی در شرایط نورپردازی مختلف باعث بدست آمدن تصاویر متفاوت از صحنه‌ی یکسان می‌شود. همین امر موجب می‌شود که سیستم‌های بینایی ماشین در برخی کاربردها، با وجود این مساله دچار مشکل شوند. یکی از راه‌حل‌های غلبه بر این مشکل این است که رنگ را در تصاویر نرمالیزه کنیم. در یکی از روش‌های معرفی شده برای این منظور، ابتدا تصویر را از فضای رنگ RGB به فضای رنگ جدیدی می‌ببریم که در آن مولفه روشنایی از رنگ جدا شود. سپس با در نظر گرفتن مولفه‌های رنگ یک تصویر به عنوان مرجع، سعی می‌کنیم هیستوگرام مولفه‌های رنگ دیگر تصاویر را به هیستوگرام مولفه‌های رنگ تصویر مرجع تبدیل کنیم. که البته اینکار می‌تواند با استفاده از تکنیک انطباق هیستوگرام انجام شود.

1-	مقاله‌ی زیر را مطالعه و با استفاده از فضای رنگ Lαβ، با درنظر گرفتن تصویر Im281_1 به عنوان مرجع، عمل نرمالیزه کردن رنگ را به تصاویر Im282_1 تا Im288_1 اعمال کنید.

2-	بر روی نتیجه بدست آمده بحث کنید.

3-	آیا می‌توانید روش دیگری نیز برای نرمالیزه کردن رنگ تصاویر شبکیه پیشنهاد کنید.

Paper:Reinhard E, Pouli T, "Colour Spaces for Colour Transfer", Lecture Notes in Computer Science, Vol. 6626, pp. 1-15, 2011



خلاصه)

تصویربرداری رنگی در شرایط نورپردازی مختلف باعث بدست آمدن تصاویر متفاوت از صحنه‌ی یکسان می‌شود. همین امر موجب می‌شود که سیستم‌های بینایی ماشین در برخی کاربردها، با وجود این مساله دچار مشکل شوند. یکی از راه‌حل‌های غلبه بر این مشکل این است که رنگ را در تصاویر نرمالیزه کنیم. 
برای این منظور، ابتدا تصویر را از فضای رنگ RGB به فضای رنگ Lαβ می‌ببریم که در آن مولفه روشنایی از رنگ جدا شود. سپس با در نظر گرفتن مولفه‌های رنگ یک تصویر به عنوان مرجع، سعی می‌کنیم مولفه‌های رنگ دیگر تصاویر را به مولفه‌های رنگ تصویر مرجع تبدیل کنیم.
برای پیاده سازی این پروژه از Matlab استفاده می نماییم.

 نتایح)

 
Im281_1 =  تصویر هدف

<img width="117" alt="Screen Shot 2023-07-28 at 10 31 16 pm" src="https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/4b0d10b4-e19a-4bee-9344-9811c3ed9469">


 نرمالیزه نمودن تصویر شبکیه چشم برای مشاهده بهتر رگ ها:

 ![Screen Shot 2023-07-28 at 10 36 28 pm](https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/0b0da0d8-674e-478a-9782-ebaf85dda32a)

![Screen Shot 2023-07-28 at 10 38 03 pm](https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/0785650c-66ce-4755-92d9-eadf79c8b1d2)

<img width="683" alt="Screen Shot 2023-07-28 at 10 39 40 pm" src="https://github.com/HesamoddinHosseini/Color_normalization_of_retinal_images/assets/89314766/103971e5-b444-43a6-97bc-ffbb1582de76">

--------------------
Hesamoddin Hosseini
