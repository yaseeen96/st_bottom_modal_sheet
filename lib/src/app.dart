import 'package:flutter/material.dart';

class STBottomSheetButton extends StatefulWidget {
  const STBottomSheetButton(
      {super.key,
      this.contentHeight = 200.0,
      required this.child,
      required this.content,
      this.buttonPadding = const EdgeInsets.all(15),
      this.buttonStyle,
      this.buttonHeight = 50,
      this.contentStyle,
      this.buttonWidth = 150,
      this.contentPadding = const EdgeInsets.all(10),
      this.buttonAlignment = Alignment.center,
      this.showDragHandle = true,
      this.sheetBackgroundColor = Colors.white});
  final double contentHeight;
  final Widget child;
  final Widget content;

  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonStyle;
  final BoxDecoration? contentStyle;
  final EdgeInsetsGeometry? contentPadding;
  final double buttonHeight;
  final double buttonWidth;
  final Alignment buttonAlignment;
  final bool showDragHandle;
  final Color sheetBackgroundColor;

  @override
  State<STBottomSheetButton> createState() => _STBottomSheetButtonState();
}

class _STBottomSheetButtonState extends State<STBottomSheetButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: widget.sheetBackgroundColor,
            isScrollControlled: true,
            showDragHandle: widget.showDragHandle,
            context: context,
            builder: (context) {
              return Container(
                decoration: widget.contentStyle ??
                    const BoxDecoration(
                      color: Colors.transparent,
                    ),
                padding: widget.contentPadding,
                height: widget.contentHeight,
                width: double.infinity,
                child: widget.content,
              );
            });
      },
      child: Ink(
        height: widget.buttonHeight,
        width: widget.buttonWidth,
        decoration: widget.buttonStyle ??
            const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
        padding: widget.buttonPadding,
        child: Align(alignment: widget.buttonAlignment, child: widget.child),
      ),
    );
  }
}
