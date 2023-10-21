import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    bool isLoginView = (GoRouterState.of(context).path.toString() == '/login');
    return Container(
      height: isLoginView ? 450 : 500,
    width: isLoginView ? 300 : 800,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: colorScheme.onSurface.withOpacity(0.05),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow/BoxShadow
        ],
      ),
      child: child,
    );
  }
}
