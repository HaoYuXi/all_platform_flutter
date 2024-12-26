import 'package:all_platfrom_flutter/component/message_model.dart';
import 'package:flutter/material.dart';

mixin MessageComponent on Widget {
  MessageModel get message;
}

extension MessageComponentWidget on Widget {
  MessageComponent appendMessageComponent(MessageModel message) {
    return Empty(message: message,child: this);
  }
}

extension MessageComponentX on MessageComponent{

}



class Empty extends StatelessWidget with MessageComponent {
  @override
  final MessageModel message;
  final Widget child;

  const Empty({super.key, required this.message, required this.child});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
