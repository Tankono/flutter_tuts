import 'package:flutter/material.dart';
import 'colors.dart';

class ButtonEffectWidget extends StatefulWidget {
  final Function()? onPressed;
  final Widget child;
  final double height;
  final double width;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color disableColor;
  final Color overlayColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderSide borderSide;
  final double radius;
  const ButtonEffectWidget(
      {Key? key,
      this.onPressed,
      required this.child,
      this.height = 50,
      this.radius = 12,
      this.width = double.infinity,
      this.overlayColor = Colors.white,
      this.foregroundColor = Colors.white,
      this.backgroundColor = CustomColors.primary1,
      this.disableColor = CustomColors.neutral3,
      this.padding = const EdgeInsets.symmetric(horizontal: 24),
      this.margin = EdgeInsets.zero,
      this.borderSide = BorderSide.none})
      : super(key: key);
  @override
  _ButtonEffectWidgetState createState() => _ButtonEffectWidgetState();
}

class _ButtonEffectWidgetState extends State<ButtonEffectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      constraints: BoxConstraints(minHeight: widget.height),
      margin: widget.margin,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.child,
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(
                widget.overlayColor.withOpacity(0.2)),
            foregroundColor:
                MaterialStateProperty.all<Color>(widget.foregroundColor),
            backgroundColor: MaterialStateProperty.all<Color>(
                widget.onPressed == null
                    ? widget.disableColor
                    : widget.backgroundColor),
            padding:
                MaterialStateProperty.all<EdgeInsetsGeometry>(widget.padding),
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    side: widget.borderSide))),
      ),
    );
  }
}

class TextButtonCustom extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  // ignore: use_key_in_widget_constructors
  const TextButtonCustom(Key? key, {required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: onPressed == null
                    ? Colors.white24
                    : CustomColors.neutral2)),
      ),
      onPressed: onPressed,
    );
  }
}
