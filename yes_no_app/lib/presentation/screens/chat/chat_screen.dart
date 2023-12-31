import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/474x/74/e9/33/74e9339e0388fd796859f672152fd669.jpg'),
          ),
        ),
        title: const Text('Mi amiga'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList
                    .length, // Numero de objetos que va a contener la lista
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? const HerMessageBubble()
                      : MyMessageBubble(message: message);
                },
              ),
            ),

            /// Caja de texto de mensajes
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            ),
          ],
        ),
      ),
    );
  }
}
