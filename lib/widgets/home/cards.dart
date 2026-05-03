import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_text_styles.dart';
import 'package:lembrei/utils/format_date.dart';
import 'package:lembrei/utils/reminder_card.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hoje - ${formatDate(DateTime.now())}",
          style: AppTextStyles.tituloMedio,
        ),

        SizedBox(height: 5,),

        SizedBox(
          height: 350,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return ReminderCard(
                titulo: "Estudar Flutter", 
                horario: "16:00", 
                categoria: "Estudos", 
                status:  "Pendente",
              );
            }
          ),
        ),

        SizedBox(height: 10,),

        Text(
          "Amanhã - ${formatDate(DateTime.now().add(Duration(days: 1)))}",
          style: AppTextStyles.tituloMedio,
        ),

        SizedBox(height: 5,),

        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return ReminderCard(
                titulo: "Estudar Flutter", 
                horario: "16:00", 
                categoria: "Estudos", 
                status:  "Pendente",
              );
            }
          ),
        ),
      ],
    );
  }
}
