import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';

class ReminderCard extends StatefulWidget {
  final String titulo;
  final String horario;
  final String categoria;
  final String status;

  const ReminderCard({
    super.key,
    required this.titulo,
    required this.horario,
    required this.categoria,
    required this.status,
  });

  @override
  State<ReminderCard> createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  late bool isConcluido;

    @override
    void initState() {
      super.initState();

      isConcluido = widget.status == "Concluído";
    }

    void alterarStatus() {
      setState(() {
        isConcluido = !isConcluido;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 4))],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isConcluido ? Color(0xFFe2f7e9) : AppColors.secundaria,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.book,
              color: isConcluido ? AppColors.sucesso : AppColors.principal,
            ),
          ),

          SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration: isConcluido ? TextDecoration.lineThrough : null,
                  ),
                ),

                SizedBox(height: 6),

                Row(
                  children: [
                    Icon(Icons.access_time, size: 16, color: AppColors.textoSecundario),
                    SizedBox(width: 4),
                    Text(widget.horario),
                    SizedBox(width: 10),
                    Icon(Icons.label, size: 16, color: AppColors.textoSecundario),
                    SizedBox(width: 10),
                    Text(widget.categoria),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: isConcluido ? Color(0xFFe2f7e9) : AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            onPressed: (){
              setState(() {
                isConcluido = !isConcluido;
              });
            }, 
            child: Text(
              isConcluido ? "Concluido" :"Pendente",
              style: TextStyle(
                color: isConcluido ? AppColors.sucesso : AppColors.principal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
