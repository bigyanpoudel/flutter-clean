import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/auth/auth_provider/google_signin_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            const Text("Login Screen"),
            const SizedBox(
              height: 20,
            ),
            Consumer(
              builder: (context, ref, child) {
                final googlePrgress = ref.watch(googleAuthProvider);
                return MaterialButton(
                  onPressed: () async {
                    await ref.read(googleAuthProvider).loginWithGoogle();
                  },
                  color: Colors.yellow.shade600,
                  child: const Text("Signin with google"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
