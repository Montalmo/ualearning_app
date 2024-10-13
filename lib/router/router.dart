import 'package:go_router/go_router.dart';
import 'package:ualearning_app/pages/auth/signin/presentation/sign_in_page.dart';
import 'package:ualearning_app/pages/welcome/presentation/welcome_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'Wecloma Page',
    builder: (context, state) => WelcomePage(),
  ),
  GoRoute(
      path: '/auth',
      name: 'Sign In Page',
      builder: (context, state) => SignInPage()),
]);
