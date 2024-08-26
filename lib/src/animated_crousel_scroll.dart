import 'package:flutter/material.dart';

class AnimatedCarouselScroller extends StatefulWidget {
  final List<String> images;
  final int initialIndex;
  final Duration duration;
  final double height;
  final double currentCrouselWidth;
  final double otherCrouselWidth;

  AnimatedCarouselScroller({
    Key? key,
    required this.images,
    required this.initialIndex,
    required this.duration,
    required this.height,
    required this.currentCrouselWidth,
    required this.otherCrouselWidth,
  }) : super(key: key);

  @override
  State<AnimatedCarouselScroller> createState() =>
      _AnimatedCarouselScrollerState();
}

class _AnimatedCarouselScrollerState extends State<AnimatedCarouselScroller> {
  late int _currentIndex;

  @override
  void initState() {
    _currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Carousel Scroll'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.images.asMap().entries.map((entry) {
              int thisIndex = entry.key;
              String image = entry.value;
              return _containeredImage(thisIndex, image);
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _containeredImage(int thisIndex, String image) {
    bool isSelected = _currentIndex == thisIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = thisIndex;
        });
      },
      child: AnimatedOpacity(
        opacity: _currentIndex == thisIndex ? 1 : 0.5,
        duration: widget.duration,
        child: AnimatedContainer(
          duration: widget.duration,
          width: isSelected
              ? widget.currentCrouselWidth
              : widget.otherCrouselWidth,
          height: widget.height,
          margin: const EdgeInsets.all(3.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white10,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
