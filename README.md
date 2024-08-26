# Animated Carousel Scroll

`animated_carousel_scroller` is a Flutter package that provides a highly customizable carousel scroll widget with smooth animations. It allows you to display a horizontal list of images, where the currently selected image is highlighted with an animated size and opacity effect.

## Features

- **Customizable Size and Animation**: Define the width, height, and animation duration for the selected and non-selected images.
- **Easy to Use**: Simple integration into your Flutter app with easy-to-configure parameters.
- **Flexible**: Adjust the carousel’s height, image sizes, and animation speed to fit your design needs.

## Installation
To use `animated_carousel_scroller`, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  animated_carousel_scroller: ^0.0.3
```

## Usage
```
import 'package:flutter/material.dart';
import 'package:custom_animated_carousel/custom_animated_carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Animated Carousel'),
        ),
        body: AnimatedCarouselScroll(
          images: [
            'assets/image1.jpg',
            'assets/image2.jpg',
            'assets/image3.jpg',
            'assets/image4.jpg',
            'assets/image5.jpg',
          ],
          initialIndex: 2,
          duration: Duration(milliseconds: 600),
          height: 200,
          currentCrouselWidth: 180,
          otherCrouselWidth: 60,
        ),
      ),
    );
  }
}
```


## Parameters
- **images**: List<String> - A list of image asset paths to display in the carousel.
- **initialIndex**: int - The index of the image to be initially selected.
- **duration**: Duration - The duration of the animation when the image size and opacity change.
- **height**: double - The height of each image in the carousel.
- **currentCrouselWidth**: double - The width of the currently selected image.
- **otherCrouselWidth**: double - The width of the non-selected images.

# Contact
- **Lindedin**: https://www.linkedin.com/in/fahad-aziz-khan-2a1723261/
- **GitHub**: https://github.com/fahadazizz




