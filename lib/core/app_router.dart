import 'package:go_router/go_router.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/splach_view.dart';

abstract class AppRouter {
  static const Notes_Page = "/notes_view";
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplachView(),
    ),
    GoRoute(
      path: "/notes_view",
      builder: (context, state) => const NotesView(),
    )
  ]);
}
