import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';

class Categorias extends StatelessWidget {
  Categorias({
    super.key,
    required this.categoria,
    required this.isSelected,
    required this.onPressed,
  });

  final String categoria;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          decoration: BoxDecoration(
            color: isSelected ? CustomColors.customSwatchColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text(
            categoria,
            style:  TextStyle(
              color: isSelected ? Colors.white : Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: isSelected ? 16 : 14
            ),
          ),
        ),
      ),
    );
  }
}
