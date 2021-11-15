// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanban_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KanbanCard _$KanbanCardFromJson(Map<String, dynamic> json) => KanbanCard(
      json['id'] as int,
      $enumDecode(_$KanbanRowEnumMap, json['row']),
      json['seq_num'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$KanbanCardToJson(KanbanCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': _$KanbanRowEnumMap[instance.row],
      'seq_num': instance.sequenceNumber,
      'text': instance.text,
    };

const _$KanbanRowEnumMap = {
  KanbanRow.onHold: '0',
  KanbanRow.inProgress: '1',
  KanbanRow.needsReview: '2',
  KanbanRow.approved: '3',
};
