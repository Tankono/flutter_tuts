import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
import 'app_text_theme.dart';

class TextFormFieldCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final double radius;
  final String? errorText;
  final EdgeInsets padding;
  final bool? enable;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool readOnly;
  final bool alignCenter;
  final TextStyle? style;
  final Function()? onTap;
  final double? cursorHeight;
  final double? cursorWidth;
  final FocusNode? focusNode;

  const TextFormFieldCustom(
      {Key? key,
      this.controller,
      required this.hintText,
      this.errorText,
      this.minLines = 1,
      this.maxLines = 1,
      this.keyboardType = TextInputType.text,
      this.prefix,
      this.suffix,
      this.validator,
      this.onChanged,
      this.onSubmitted,
      this.onTap,
      this.enable = true,
      this.obscureText = false,
      this.padding = const EdgeInsets.all(16),
      this.radius = 12.0,
      this.readOnly = false,
      this.inputFormatters,
      this.alignCenter = false,
      this.style,
      this.initialValue,
      this.cursorHeight,
      this.cursorWidth,
      this.focusNode})
      : super(key: key);

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  @override
  void initState() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorHeight: widget.cursorHeight,
        cursorWidth: widget.cursorWidth ?? 2,
        initialValue: widget.initialValue,
        enabled: widget.enable,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        obscureText: widget.obscureText,
        inputFormatters: widget.inputFormatters,
        cursorColor: CustomColors.primary1,
        autocorrect: false,
        autofocus: false,
        focusNode: widget.focusNode,
        readOnly: widget.readOnly,
        textAlign: widget.alignCenter ? TextAlign.center : TextAlign.start,
        enableSuggestions: false,
        style: widget.style ??
            h14.copyWith(
                fontSize: 14,
                color: CustomColors.neutral1,
                fontWeight: FontWeight.w600),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          fillColor: CustomColors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            borderSide:
                const BorderSide(width: 1.5, color: CustomColors.primary1),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            borderSide:
                const BorderSide(width: 1.5, color: CustomColors.neutral3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            borderSide:
                const BorderSide(width: 1.5, color: CustomColors.primary1),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
              borderSide: const BorderSide(
                width: 1.5,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
              borderSide: const BorderSide(width: 1.5, color: Colors.black)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
              borderSide: const BorderSide(width: 1.5, color: Colors.red)),
          hintText: widget.hintText,
          hintStyle: h14.copyWith(
              color: CustomColors.neutral2, fontWeight: FontWeight.w600),
          prefixIcon: widget.prefix != null
              ? Row(mainAxisSize: MainAxisSize.min, children: [
                  const SizedBox(width: 8),
                  widget.prefix ?? const SizedBox()
                ])
              : null,
          suffixIcon: widget.suffix,
        ),
        validator: widget.validator ??
            (String? value) {
              return (value?.isNotEmpty == true) ? null : widget.errorText;
            });
  }
}
