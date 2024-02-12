import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/state/session.dart';

class MyAvatar extends ConsumerWidget {
  final double size;

  const MyAvatar({
    this.size = 18,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user =
        ref.watch(sessionNotifierProvider.select((value) => value.user));

    return CircleAvatar(
      radius: size,
      foregroundImage:
          user?.imageUrl == null ? null : NetworkImage(user!.imageUrl!),
    );
  }
}
