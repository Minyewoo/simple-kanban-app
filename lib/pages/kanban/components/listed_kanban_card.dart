import 'package:flutter/material.dart';
import 'package:kanban/data/models/kanban_card.dart';

class ListedKanbanCard extends StatelessWidget {
  final KanbanCard card;
  final String? idLabel;
  const ListedKanbanCard({Key? key, required this.card, this.idLabel = 'ID'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      subtitle: Text('$idLabel:${card.id}'),
      title: Text(card.text),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
