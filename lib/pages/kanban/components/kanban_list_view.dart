import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanban/data/models/kanban_card.dart';

import 'listed_kanban_card.dart';

class KanbanListView extends ListView {
  final List<KanbanCard> cards;
  final String idLabel;
  KanbanListView({Key? key, EdgeInsetsGeometry? padding, this.cards = const [], this.idLabel = 'ID'})
      : super.separated(
          key: key,
          padding: padding,
          itemBuilder: (context, index) =>
              ListedKanbanCard(card: cards[index], idLabel: idLabel),
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemCount: cards.length,
        );
}
