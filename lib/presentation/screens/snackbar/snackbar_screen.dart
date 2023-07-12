import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbardScreen extends StatelessWidget {
  static const String name = "snackbar_screen";
  const SnackbardScreen({super.key});

  void ShowCustomSnackbard(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBard = SnackBar(
      content: const Text("hola mundo"),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBard);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("estas seguro"),
        content: const Text(
            "Non consequat tempor occaecat duis non labore do irure. Velit velit occaecat consectetur reprehenderit. Laboris nulla laborum pariatur velit fugiat aliqua amet non proident nulla Lorem. Sit aliqua voluptate incididunt reprehenderit irure reprehenderit dolore deserunt. Aliquip ea minim nulla dolore qui ad. Aliquip aliqua occaecat consectetur est ea elit velit quis."),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text("cancelar")),
          FilledButton(
              onPressed: () => context.pop(), child: const Text("Aceptar")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbard dialogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        "Laborum in Lorem qui consequat mollit ipsum ut anim commodo et. Exercitation deserunt commodo qui culpa aute elit est dolore. Consectetur eiusmod incididunt id ut duis ipsum eiusmod reprehenderit ad elit. Ea dolore elit in in ullamco ullamco ea voluptate pariatur aliqua commodo voluptate. Et velit incididunt laboris velit culpa anim ex in voluptate eiusmod mollit ad magna non. Duis deserunt nisi amet reprehenderit pariatur.")
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogo de pantall')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Monastrar Snackbard"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => ShowCustomSnackbard(context),
      ),
    );
  }
}
