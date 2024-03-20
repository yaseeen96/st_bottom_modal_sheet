import 'package:flutter/material.dart';

class STBottomModalSheet extends StatefulWidget {
  const STBottomModalSheet({
    super.key,
    this.height = 200.0,
    required this.child,
    this.buttonPadding = const EdgeInsets.all(15),
    this.buttonStyle,
    this.contentDecoration,
    this.contentPadding = const EdgeInsets.all(15),
  });
  final double height;
  final Widget child;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonStyle;
  final BoxDecoration? contentDecoration;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<STBottomModalSheet> createState() => _STBottomModalSheetState();
}

class _STBottomModalSheetState extends State<STBottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) {
              return Container(
                padding: widget.contentPadding,
                height: widget.height,
                width: double.infinity,
              );
            });
      },
      child: Ink(
        decoration: widget.buttonStyle,
        padding: widget.buttonPadding,
        child: widget.child,
      ),
    );
  }
}
