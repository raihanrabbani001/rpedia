import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rpedia/widget/textfield_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle loginCaption = textTheme.labelMedium!.copyWith(fontSize: 10);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 12),
          child: Image.asset(
            'images/rpedia-logos/logo-no-background.png',
            semanticLabel: 'Rpedia Logo',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Column(
            children: [
              TextFieldWidget(
                preIcon: Icons.people_alt,
                placeholder: 'Username / Email',
              ),
              SizedBox(
                height: 5,
              ),
              TextFieldWidget(
                preIcon: Icons.lock,
                suIcon: Icon(Icons.remove_red_eye),
                placeholder: 'Password',
                obscureText: true,
              ),
            ],
          ),
        ),
        SizedBox(
            width: 200,
            height: 40,
            child: FilledButton(onPressed: () {}, child: const Text('Login'))),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              const Expanded(
                  child: Divider(
                thickness: 1,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Or",
                  style: loginCaption,
                ),
              ),
              const Expanded(
                  child: Divider(
                thickness: 1,
              )),
            ],
          ),
        ),
        SizedBox(
            height: 40,
            child: FilledButton.tonalIcon(
              onPressed: () {},
              icon: Image.asset('images/icons/google-icon.png'),
              label: Text(
                'Continue with google',
                style: textTheme.labelMedium,
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  style: loginCaption,
                  children: [
                    const TextSpan(
                      text: "Doesn't have an account? ",
                    ),
                    TextSpan(
                      text: 'Register',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go('/register'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
