import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterTextformfield extends StatelessWidget {
  final String nome;
  final String exemplo;
  final int linhas;

  const RegisterTextformfield({
    super.key,
    required this.nome,
    required this.exemplo,
    required this.linhas,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nome,
            style: AppTextStyles.tituloMedio,
          ),
      
          SizedBox(height: 10,),
      
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty){
                return "Campo obrigatório";
              }
              return null;
            },
            maxLines: linhas,
            decoration: InputDecoration(
              labelText: exemplo,
              alignLabelWithHint: true,
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.textoSecundario),
              )
            ),
          ),
        ],
      ),
    );
  }
}