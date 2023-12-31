import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: " varios botones",
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: "contenedor estilizado",
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: "Generales y controlados",
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: "Indicadores en pantalla",
    link: '/snakbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: "Stateful widget animado",
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI Controsl + tiles',
    subTitle: "Una serie de controles de flutter",
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
];

//
