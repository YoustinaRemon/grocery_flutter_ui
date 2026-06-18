import 'package:flutter/material.dart';

class ExpandedText extends StatefulWidget {
  final String text;
  final String? description;
  final Widget? trailingWidget;
  final Widget? customContent;

  const ExpandedText({
    super.key,
    required this.text,
    this.description,
    this.trailingWidget,
    this.customContent,
  });

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() => showDescription = !showDescription);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  if (widget.trailingWidget != null) widget.trailingWidget!,

                  if (widget.trailingWidget != null) const SizedBox(width: 8),

                  Icon(
                    showDescription
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 24,
                  ),
                ],
              ),
            ],
          ),
        ),

        if (showDescription) const SizedBox(height: 10),

        if (showDescription)
          widget.customContent ??
              Text(
                widget.description ?? '',
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF7C7C7C),
                  height: 1.5,
                ),
              ),
      ],
    );
  }
}
