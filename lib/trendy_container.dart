import 'package:flutter/material.dart';

class TrendyContainer extends StatelessWidget {
  const TrendyContainer({
    super.key,
    required this.title,
    required this.height,
    required this.width,
    this.subTitle,
    this.color1,
    this.color2,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.padding,
    this.centerTitle = false,
    this.isCircle = false,
    this.isRectangle = false,
  });

  final String title;
  final String? subTitle;
  final double height, width;
  final bool centerTitle;
  final Color? color1;
  final Color? color2;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final EdgeInsetsGeometry? padding;
  final bool isCircle;
  final bool isRectangle;

  @override
  Widget build(BuildContext context) {
    BoxDecoration buildBoxDecoration() {
      if (isCircle) {
        return BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color1 ?? const Color(0xFF64B5F6),
              color2 ?? const Color(0xFF1976D2),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        );
      } else if (isRectangle) {
        return BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            topRight: Radius.elliptical(50, 50),
            bottomLeft: Radius.elliptical(25, 25),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color1 ?? const Color(0xFF64B5F6),
              color2 ?? const Color(0xFF1976D2),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        );
      } else {
        return BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color1 ?? const Color(0xFF64B5F6),
              color2 ?? const Color(0xFF1976D2),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        );
      }
    }

    return Container(
      height: height,
      width: width,
      decoration: buildBoxDecoration(),
      padding: padding ?? const EdgeInsets.all(16.0),
      child: centerTitle
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleTextStyle?.merge(TextStyle(
                          color: titleTextStyle?.color ?? Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )) ??
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  if (subTitle != null && subTitle!.isNotEmpty)
                    Text(
                      subTitle!,
                      style: subtitleTextStyle?.merge(TextStyle(
                            color: subtitleTextStyle?.color ?? Colors.white,
                            fontSize: 14.0,
                          )) ??
                          const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                    ),
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleTextStyle?.merge(TextStyle(
                        color: titleTextStyle?.color ?? Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )) ??
                      const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (subTitle != null && subTitle!.isNotEmpty)
                  Text(
                    subTitle!,
                    style: subtitleTextStyle?.merge(TextStyle(
                          color: subtitleTextStyle?.color ?? Colors.white,
                          fontSize: 14.0,
                        )) ??
                        const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                  ),
              ],
            ),
    );
  }
}
