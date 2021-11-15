import 'package:json_annotation/json_annotation.dart';

part 'kanban_card.g.dart';

enum KanbanRow {
  @JsonValue('0')
  onHold,
  @JsonValue('1')
  inProgress,
  @JsonValue('2')
  needsReview,
  @JsonValue('3')
  approved
}

@JsonSerializable()
class KanbanCard {
  final int id;
  final KanbanRow row;
  @JsonKey(name: 'seq_num')
  final int sequenceNumber;
  final String text;

  KanbanCard(this.id, this.row, this.sequenceNumber, this.text);

  factory KanbanCard.fromJson(Map<String, dynamic> json) => _$KanbanCardFromJson(json);

  Map<String, dynamic> toJson() => _$KanbanCardToJson(this);
}
