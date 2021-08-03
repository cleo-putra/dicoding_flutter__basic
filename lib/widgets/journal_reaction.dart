import 'package:flutter/material.dart';

class JournalReaction extends StatefulWidget {
  final bool? likeReaction;

  JournalReaction({
    Key? key,
    this.likeReaction = true,
  }) : super(key: key);

  @override
  _JournalReactionState createState() => _JournalReactionState();
}

class _JournalReactionState extends State<JournalReaction> {
  bool isActive = false;

  void _changeState() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        (!isActive)
            ? ((widget.likeReaction!)
                ? Icons.thumb_up_outlined
                : Icons.thumb_down_outlined)
            : ((widget.likeReaction!) ? Icons.thumb_up : Icons.thumb_down),
        color: Colors.red,
      ),
      onPressed: _changeState,
    );
  }
}
