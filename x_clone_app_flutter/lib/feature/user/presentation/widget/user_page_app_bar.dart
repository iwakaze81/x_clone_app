import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserPageAppBar extends HookConsumerWidget {
  static const _expandedHeight = 64.0;
  static const _baseToolbarHeight = 42.0;

  const UserPageAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      automaticallyImplyLeading: false,
      pinned: true,
      toolbarHeight: _baseToolbarHeight,
      expandedHeight: _expandedHeight,
      leading: Center(
        child: _AppBarActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.pop();
          },
        ),
      ),
      actions: [
        _AppBarActionButton(
          child: const Icon(Icons.search),
          onPressed: () {},
        ),
        const SizedBox(width: 8),
        _AppBarActionButton(
          child: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
        const SizedBox(width: 12),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final viewInsetsTop = MediaQuery.viewPaddingOf(context).top;
          final currentToolbarHeight =
              constraints.biggest.height - viewInsetsTop;
          final avatarSize = _avatarHeight(currentToolbarHeight);
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                width: 80,
                top: constraints.biggest.height + 8 - avatarSize,
                child: Center(
                  child: CircleAvatar(
                    radius: avatarSize,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  double _avatarHeight(double currentToolbarHeight) {
    const maxAvatarHeight = 26.0;

    return maxAvatarHeight *
        (currentToolbarHeight - _baseToolbarHeight) /
        (_expandedHeight - _baseToolbarHeight);
  }
}

class _AppBarActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _AppBarActionButton({
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 28,
      child: IconButton.filledTonal(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.black.withOpacity(0.33),
          ),
          iconColor: const MaterialStatePropertyAll(Colors.white),
          iconSize: const MaterialStatePropertyAll(18),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        ),
        onPressed: onPressed,
        icon: child,
      ),
    );
  }
}
