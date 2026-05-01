import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';

class AppTextStyles {
  static const TextStyle tituloGrande = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textoPrincipal,
  );

  static const TextStyle tituloMedio = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textoPrincipal,
  );

  static const TextStyle textoMedio = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textoSecundario,
  );

  static const TextStyle textoPequeno = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textoSecundario,
  );
}