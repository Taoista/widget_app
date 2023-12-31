import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = "ui_controls_screen";
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Cotnrols"),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBraeakfast = false;
  bool wantsLunchBraeakfast = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("developer mode"),
          subtitle: const Text("controles Adicionales"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
              title: const Text("By Car"),
              subtitle: const Text("Viajar en vehiculo"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text("By Boat"),
              subtitle: const Text("Viajar en barco"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text("By Plane"),
              subtitle: const Text("Viajar en Avion"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text("By Submarine"),
              subtitle: const Text("Viajar en submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text("Desayuno"),
          value: wantsBraeakfast,
          onChanged: (value) => setState(() {
            wantsBraeakfast = !wantsBraeakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text("Almuerzo"),
          value: wantsLunchBraeakfast,
          onChanged: (value) => setState(() {
            wantsLunchBraeakfast = !wantsLunchBraeakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text("Cena"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
