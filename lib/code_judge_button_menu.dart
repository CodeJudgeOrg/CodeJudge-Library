import 'package:flutter/material.dart';

// Always show a certain button and depending on show show x more
class CodeJudgeButtonMenu extends StatelessWidget{
  final bool show;
  final IconData icon;
  final String label;
  final VoidCallback onDeselectPressed;
  final VoidCallback onUploadPressed;
  final VoidCallback onDeletePressed;
  final VoidCallback onButtonPressed;

  const CodeJudgeButtonMenu({
    super.key,
    required this.show,
    required this.icon,
    required this.label,
    required this.onDeselectPressed,
    required this.onUploadPressed,
    required this.onDeletePressed,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Animation while showing the other buttons
        AnimatedSwitcher(
            duration: Duration(milliseconds: 1000),
            child: show
              ? Padding(
                padding: const EdgeInsets.only(bottom: 12, right: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  spacing: 6.0,
                  children: [
                    // Deselect button
                    FloatingActionButton.small(
                      heroTag: "deselectButton",
                      onPressed: onDeselectPressed,
                      child: Icon(Icons.close_outlined)
                    ),
                    // Upload button
                    FloatingActionButton.small(
                      heroTag: "uploadButton",
                      onPressed: onUploadPressed,
                      child: Icon(Icons.upload_file_outlined),
                    ),
                    // Delete button
                    FloatingActionButton.small(
                      heroTag: "deleteButton",
                      onPressed: onDeletePressed,
                      child: Icon(Icons.delete_forever_outlined),
                    ),
                  ],
                ),
              )
              : SizedBox.shrink(),
          ),
          // Always shown button
          FloatingActionButton.extended(
            icon: Icon(icon),
            label: Text(label),
            onPressed: onButtonPressed,
          ),
      ],
    );
  }
}
