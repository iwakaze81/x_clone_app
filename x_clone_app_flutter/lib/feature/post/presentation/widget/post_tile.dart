import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_client/x_clone_app_client.dart';
import 'package:x_clone_app_flutter/feature/post/controller/favorite_post.dart';
import 'package:x_clone_app_flutter/feature/post/model/post_favorites.dart';
import 'package:x_clone_app_flutter/feature/post/model/post_is_favorite.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

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
            GestureDetector(
              onTap: () {
                context.router.push(UserRoute(userId: post.userInfoId));
              },
              child: const CircleAvatar(
                radius: 18,
              ),
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
                              post.userInfo?.userName ?? '名無し',
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
                        _FavoriteButton(
                          postId: post.id!,
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

class _FavoriteButton extends ConsumerWidget {
  final int postId;

  const _FavoriteButton({required this.postId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteCount = ref.watch(postFavoriteCountProvider(postId));
    final isFavorite =
        ref.watch(postIsFavoriteProvider(postId)).valueOrNull ?? false;

    return _IconAndTextButton(
      icon: isFavorite ? Icons.favorite : Icons.favorite_outline,
      text: '${favoriteCount.valueOrNull ?? 0}',
      iconColor: isFavorite ? Colors.red : null,
      onPressed: () {
        ref.read(favoritePostProvider).toggleFavorite(postId);
      },
    );
  }
}

class _IconAndTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final Color? iconColor;

  const _IconAndTextButton({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        child: Row(
          children: [
            Icon(icon, size: 14, color: iconColor),
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
