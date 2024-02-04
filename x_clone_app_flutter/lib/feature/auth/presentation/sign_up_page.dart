import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(32.0),
        child: AppBar(
          forceMaterialTransparency: true,
          leadingWidth: 96,
          leading: TextButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            child: const Text('キャンセル'),
          ),
          title: const Hero(
            tag: 'app_logo',
            child: FlutterLogo(size: 32),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32).copyWith(top: 32),
        children: [
          Text(
            'アカウントを作成',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: '名前',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'メールアドレス',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'パスワード',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            child: const Text('登録'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
