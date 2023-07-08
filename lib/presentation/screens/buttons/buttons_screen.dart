import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = "buttons_screen";
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("texto elevado")),
            const ElevatedButton(
                onPressed: null, child: const Text("texto elevado")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text("ElevatedButton")),
            FilledButton(onPressed: () {}, child: const Text("texto elevado")),
            FilledButton.icon(
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: () {},
                label: const Text("texto elevado")),
            OutlinedButton(
                onPressed: () {}, child: const Text("texto elevado")),
            OutlinedButton.icon(
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: () {},
                label: const Text("texto elevado")),
            TextButton(
              onPressed: () {},
              child: Text("hola mundo"),
            ),
            TextButton.icon(
                icon: const Icon(Icons.access_alarm_rounded),
                onPressed: () {},
                label: const Text("texto elevado")),
            const CustomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary)))
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Boton personalizado",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
