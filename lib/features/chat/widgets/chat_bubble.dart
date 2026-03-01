import 'package:flutter/material.dart';
import 'package:mochy/core/constants/app_colors.dart';
import 'package:mochy/data/models/chat_mesages.dart';

class ChatBubble extends StatelessWidget {
  final ChatMesages messages;
  final String avatar;

  const ChatBubble({super.key, required this.messages, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: messages.isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!messages.isUser) ...[
            CircleAvatar(
              backgroundColor: AppColors.backgroundIcon,
              child: Text(avatar, style: const TextStyle(fontSize: 20)),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: messages.isUser
                    ? AppColors.primaryBlue
                    : AppColors.bubbleAi,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: messages.isUser
                      ? const Radius.circular(20)
                      : const Radius.circular(0),
                  bottomRight: messages.isUser
                      ? const Radius.circular(0)
                      : const Radius.circular(20),
                ),
              ),
              child: Text(
                messages.text,
                style: TextStyle(
                  color: messages.isUser
                      ? AppColors.textBlack
                      : AppColors.textWhite,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          if (messages.isUser) const SizedBox(width: 8),
        ],
      ),
    );
  }
}
