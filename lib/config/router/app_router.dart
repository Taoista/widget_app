import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: "/",
      builder: ((context, state) => const HomeScreen()),
    ),
    GoRoute(
      name: ButtonScreen.name,
      path: "/buttons",
      builder: ((context, state) => const ButtonScreen()),
    ),
    GoRoute(
      name: CardsScreens.name,
      path: "/cards",
      builder: ((context, state) => const CardsScreens()),
    ),
    GoRoute(
      name: ProgressScreeen.name,
      path: "/progress",
      builder: ((context, state) => const ProgressScreeen()),
    ),
    GoRoute(
      name: SnackbardScreen.name,
      path: "/snakbars",
      builder: ((context, state) => const SnackbardScreen()),
    ),
  ],
);
