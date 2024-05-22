import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageScrollTemplate extends StatefulWidget {
  final List<String> imageScrollList;
  final double height;
  final double? width;
  final BoxFit? fit;
  final bool isScrollIndicatorVisible;
  final bool isTimer;
  final double? borderRadius;
  const ImageScrollTemplate(
      {super.key,
      required this.imageScrollList,
      required this.height,
      this.width,
      this.isScrollIndicatorVisible = true,
      this.isTimer = true,
      this.borderRadius,
      this.fit});

  @override
  State<ImageScrollTemplate> createState() => _ImageScrollTemplateState();
}

class _ImageScrollTemplateState extends State<ImageScrollTemplate> {
  final PageController _pageViewController = PageController(initialPage: 0);
  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _stopTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      if (widget.isTimer) {
        setState(() {
          _currentPage = (_currentPage + 1) % 3;
          _pageViewController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
          );
        });
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: widget.height,
              width: widget.width,
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageViewController,
                  onPageChanged: (int index) {
                    setState(() {});
                  },
                  itemCount: widget.imageScrollList.length,
                  itemBuilder: (context, index) {
                    return widget.imageScrollList.map((page) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).highlightColor,
                          borderRadius: BorderRadius.circular(
                              widget.borderRadius ?? Dimensions.radiusDefault),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.imageScrollList[index],
                            ),
                            fit: widget.fit ?? BoxFit.none,
                          ),
                        ),
                      );
                    }).toList()[index];
                  },
                ),
              ),
            ),
            if (widget.isScrollIndicatorVisible)
              Positioned(
                
                child: Container(
                  padding:
                      EdgeInsets.all(Dimensions.paddingSizeDefault),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).hintColor
                        ),
                        child: SmoothPageIndicator(
                          controller: _pageViewController,
                          count: widget.imageScrollList.length,
                          effect: ExpandingDotsEffect(
                            dotHeight: 5,
                            dotWidth: 5,
                            spacing: 4.0,
                            radius: 50,
                            dotColor: Colors.white
                                .withOpacity(
                                  0.25,
                                ),
                            activeDotColor:
                                Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ],
    );
  }
}
