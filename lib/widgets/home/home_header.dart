import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Olá, Davi", style: AppTextStyles.tituloGrande,),
        Text("Você tem 3 lembretes para hoje", style: AppTextStyles.textoMedio,)
      ],
    );
  }
}