import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_clone_app_flutter/router/app_router.dart';
import 'package:x_clone_app_flutter/utility_widgets/divider_with_text.dart';

@RoutePage()
class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Hero(
                tag: 'app_logo',
                child: FlutterLogo(size: 32),
              ),
              Text(
                '今、運命の一瞬を彩る魔法を\n見つけよう。',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w900),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedButton.icon(
                    icon: Text(
                      'G',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    label: Text(
                      'Googleのアカウントで続ける',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.apple, color: Colors.black),
                    label: Text(
                      'Appleのアカウントで続ける',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 8),
                  DividerWithText(
                    text: Text(
                      'または',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    indent: 12,
                    endIndent: 12,
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    child: Text(
                      'アカウントを作成',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {
                      context.router.push(const SignUpRoute());
                    },
                  ),
                  const SizedBox(height: 24),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: '登録すると'),
                        TextSpan(
                          text: '利用規約',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO: Open the terms of service page
                            },
                        ),
                        const TextSpan(text: '、'),
                        TextSpan(
                          text: 'プライバシーポリシー',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO: Open the privacy policy page
                            },
                        ),
                        const TextSpan(text: '、'),
                        TextSpan(
                          text: 'Cookieの使用',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO: Open the cookie policy page
                            },
                        ),
                        const TextSpan(text: 'に同意したものとみなされます。'),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 40),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: 'アカウントをお持ちの方は'),
                        TextSpan(
                          text: 'ログイン',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.push(const SignInRoute());
                            },
                        ),
                      ],
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
