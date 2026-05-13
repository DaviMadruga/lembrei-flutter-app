import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_text_styles.dart';
import 'package:lembrei/utils/format_date.dart';
import 'package:lembrei/utils/reminder_card.dart';
import 'package:lembrei/models/lembrete.dart';

class Cards extends StatelessWidget {
  final List<Lembrete> lembretes;

  const Cards({
    super.key,
    required this.lembretes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hoje - ${formatDate(DateTime.now())}",
          style: AppTextStyles.tituloMedio,
        ),

        SizedBox(height: 5),

        Expanded(
          child: lembretes.isEmpty
              ? const Center(
                  child: Text(
                    "Nenhum lembrete cadastrado",
                    style: AppTextStyles.tituloMedio,
                  ),
                )
              : ListView.builder(
                  itemCount: lembretes.length,
                  itemBuilder: (context, index) {
                    final lembrete = lembretes[index];

                    return ReminderCard(
                      titulo: lembrete.titulo,
                      horario: lembrete.hora,
                      categoria: lembrete.categoria,
                      status: lembrete.status,
                    );
                  },
                ),
        ),
      ],
    );
  }
}
