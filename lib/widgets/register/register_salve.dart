import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';

class RegisterSalve extends StatelessWidget {
  final VoidCallback onPressed;
  const RegisterSalve({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.principal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          "Salvar lembrete",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
