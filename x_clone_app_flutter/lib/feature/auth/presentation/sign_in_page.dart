import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/model/email_auth.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';

@RoutePage()
class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

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
            'ログイン',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'メールアドレス',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: 'パスワード',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            child: const Text('ログイン'),
            onPressed: () async {
              final result = await ref.read(emailAuthProvider).signIn(
                  email: emailController.text,
                  password: passwordController.text);

              if (result && context.mounted) {
                context.router.pushAndPopUntil(
                  const HomeRoute(),
                  predicate: (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
