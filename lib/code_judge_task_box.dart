import 'package:flutter/material.dart';

class CodeJudgeTaskBox extends StatelessWidget{
  final Widget child;
  final String task;
  final VoidCallback? onButtonPressed;
  final bool showButton;
  final IconData? buttonIcon;

  const CodeJudgeTaskBox({
    super.key, 
    required this.child,
    required this.task,
    this.onButtonPressed,
    this.showButton = false,
    this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Draw a nice box containing a button and the task
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: theme.colorScheme.outline, width: 1),
              ),
              child: Row(
                spacing: 16,
                children: [
                  // Display the task
                  Expanded(
                    child: Text(
                      task,
                      softWrap: true,
                    ),
                  ),
                  // Display a button with the correct icon
                  showButton
                    ? FloatingActionButton.small(
                        heroTag: "hint",
                        onPressed: onButtonPressed,
                        child: Icon(buttonIcon)
                      )
                    : SizedBox.shrink(),
                ],
              ),
            ),
            // Display the child
            child,
          ],
        ),
      ),
    );
  }
}