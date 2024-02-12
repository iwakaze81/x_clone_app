import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/feature/auth/model/email_auth.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';
import 'package:x_clone_app_flutter/utility_widgets/app_logo.dart';

@RoutePage()
class VerificationCodePage extends ConsumerWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text('キャンセル'),
        ),
        title: const Hero(
          tag: 'app_logo',
          child: AppLogo(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              '認証コードを入力',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: VerificationCode(
              length: 8,
              itemSize: 38,
              onEditing: (_) {},
              onCompleted: (code) async {
                final result =
                    await ref.read(emailAuthProvider).verifyCode(code: code);

                if (result && context.mounted) {
                  context.router.replaceAll([const HomeRoute()]);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
