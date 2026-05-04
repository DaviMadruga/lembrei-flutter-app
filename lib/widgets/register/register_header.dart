import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back, 
            color: AppColors.principal, 
            size: 32
          ),
        ),

        SizedBox(width: 50),

        Text("Novo Lembrete", style: AppTextStyles.tituloGrande),
      ],
    );
  }
}
