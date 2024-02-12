import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/model/email_auth.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';
import 'package:x_clone_app_flutter/utility_widgets/app_logo.dart';

@RoutePage()
class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = useTextEditingController();
    final email = useTextEditingController();
    final password = useTextEditingController();

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
            child: AppLogo(),
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
            controller: userName,
            decoration: InputDecoration(
              hintText: '名前',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'メールアドレス',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              hintText: 'パスワード',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            child: const Text('登録'),
            onPressed: () async {
              final result = await ref.read(emailAuthProvider).signUp(
                  userName: userName.text,
                  email: email.text,
                  password: password.text);

              if (result && context.mounted) {
                context.router.push(const VerificationCodeRoute());
              }
            },
          ),
        ],
      ),
    );
  }
}
