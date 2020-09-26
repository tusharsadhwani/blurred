library blurred;

import 'dart:ui';

import 'package:flutter/material.dart';

/// Convenience widget to create blurred images.
/// `BlurredImage.asset` behaves like `Image.asset`, and
/// `BlurredImage.network` behaves like `Image.network`.
class BlurredImage extends StatelessWidget {
  BlurredImage.asset({
    Key key,
    String imagePath,
    this.blurValue,
  })  : imageWidget = Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        super(key: key);

  BlurredImage.network({
    Key key,
    String url,
    this.blurValue,
  })  : imageWidget = Image.network(
          url,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        super(key: key);

  final double blurValue;
  final Widget imageWidget;

  @override
  Widget build(BuildContext context) {
    return Blurred(
      child: imageWidget,
      blurValue: blurValue,
    );
  }
}

/// Wrapper widget that blurs its children.
/// The higher the `blurValue`, the stronger the blur effect.
class Blurred extends StatelessWidget {
  const Blurred({Key key, this.child, this.blurValue}) : super(key: key);

  final Widget child;
  final double blurValue;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: <Widget>[
          child,
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
