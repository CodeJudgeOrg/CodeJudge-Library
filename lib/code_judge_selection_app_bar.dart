import 'package:flutter/material.dart';

// Show and hide the AppBar depending on show
class CodeJudgeSelectionAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final bool show;
  final VoidCallback onClosePressed;
  final VoidCallback onUploadPressed;
  final VoidCallback onDeletePressed;
  final List<Widget>? actions;

  const CodeJudgeSelectionAppBar({
    super.key,
    required this.show,
    required this.title,
    required this.onClosePressed,
    required this.onUploadPressed,
    required this.onDeletePressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 250),
      child: show
        ? AppBar(
            title: Text(title),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              onPressed: onClosePressed,
              icon: Icon(Icons.close_outlined),
            ),
            actions: [
              IconButton(
                onPressed: onUploadPressed,
                icon: Icon(Icons.upload_file_outlined),
              ),
              // Button to delete all selected exercises
              IconButton(
                onPressed: onDeletePressed,
                icon: Icon(Icons.delete_forever_outlined),
              ),
            ],
          )
        : SizedBox.shrink()
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}