import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterCategory extends StatefulWidget {
  final String? categoriaSelecionada;
  final ValueChanged<String> onCategoriaSelecionada;

  const RegisterCategory({
    super.key,
    required this.categoriaSelecionada,
    required this.onCategoriaSelecionada,
  });

  @override
  State<RegisterCategory> createState() => _RegisterCategoryState();
}

class _RegisterCategoryState extends State<RegisterCategory> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categoria", style: AppTextStyles.tituloMedio),

          SizedBox(height: 5),

          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Saúde" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Saúde");
                },
                child: Text(
                  "Saúde",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Saúde" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Trabalho" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Trabalho");
                },
                child: Text(
                  "Trabalho",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Trabalho" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Estudos" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Estudos");
                },
                child: Text(
                  "Estudos",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Estudos" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Pessoal" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Pessoal");
                },
                child: Text(
                  "Pessoal",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Pessoal" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Esporte" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Esporte");
                },
                child: Text(
                  "Esporte",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Esporte" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.categoriaSelecionada == "Água" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  widget.onCategoriaSelecionada("Água");
                },
                child: Text(
                  "Água",
                  style: TextStyle(
                    color: widget.categoriaSelecionada == "Água" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
