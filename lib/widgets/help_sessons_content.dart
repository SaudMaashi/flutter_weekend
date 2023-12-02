import 'package:flutter/material.dart';
import 'package:flutter_weekend/widgets/help_session_cell.dart';

class HelpSessonsContent extends StatelessWidget {
  const HelpSessonsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: helpSessionContentList.length,
      itemBuilder: (BuildContext context, int index) {
        return HelpSessionCell(
          subject: helpSessionContentList[index]['subject'],
          date: helpSessionContentList[index]['date'],
          time_start: helpSessionContentList[index]['time_start'],
          time_end: helpSessionContentList[index]['time_end'],
          status: helpSessionContentList[index]['state'],
          color: helpSessionContentList[index]['state'] == 'Online'
              ? Colors.greenAccent.shade100
              : helpSessionContentList[index]['state'] == 'Finished'
                  ? Colors.teal.shade100
                  : Colors.grey.shade300,
          buttonText: helpSessionContentList[index]['state'] == 'Online'
              ? 'Join'
              : helpSessionContentList[index]['state'] == 'Finished'
                  ? 'Watch'
                  : 'Upcoming',
          buttonColor: helpSessionContentList[index]['state'] == 'Online'
              ? Colors.greenAccent.shade200
              : helpSessionContentList[index]['state'] == 'Finished'
                  ? Colors.teal.shade200
                  : const Color.fromARGB(255, 195, 195, 195),
          borderColor: helpSessionContentList[index]['state'] == 'Online'
              ? Colors.greenAccent.shade700
              : helpSessionContentList[index]['state'] == 'Finished'
                  ? Colors.teal.shade300
                  : Colors.grey.shade500,
        );
      },
    );
  }
}
