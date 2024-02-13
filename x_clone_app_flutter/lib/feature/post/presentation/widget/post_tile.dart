import 'package:flutter/material.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';

class PostTile extends StatelessWidget {
  final Post post;

  const PostTile({required this.post, super.key});

  String get postedAt {
    final now = DateTime.now();
    final diff = now.difference(post.createdAt);

    if (diff.inDays > 0) {
      return '${diff.inDays}日前';
    } else if (diff.inHours > 0) {
      return '${diff.inHours}時間前';
    } else if (diff.inMinutes > 0) {
      return '${diff.inMinutes}分前';
    } else {
      return 'たった今';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 18,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.user?.userInfo?.userName ?? '名無し',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '・$postedAt',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(height: 20 / 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 18,
                          ),
                          onPressed: () {
                            print('ontap post more');
                          },
                        ),
                      ),
                    ],
                  ),
                  Text(post.content),
                  SizedBox(
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _IconAndTextButton(
                          icon: Icons.chat_bubble_outline,
                          text: '0',
                          onPressed: () {},
                        ),
                        _IconAndTextButton(
                          icon: Icons.recycling_outlined,
                          text: '0',
                          onPressed: () {},
                        ),
                        _IconAndTextButton(
                          icon: Icons.favorite_outline,
                          text: '0',
                          onPressed: () {},
                        ),
                        _IconAndTextButton(
                          icon: Icons.bar_chart_outlined,
                          text: '0',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconAndTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const _IconAndTextButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        child: Row(
          children: [
            Icon(icon, size: 14),
            const SizedBox(width: 2),
            Text(
              text,
              style: const TextStyle(fontSize: 12, height: 14 / 12),
            ),
          ],
        ),
      ),
    );
  }
}
