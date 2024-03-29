import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryConditionsTabState extends Equatable {
  const QueryConditionsTabState({required this.conditions});

  final List<QueryCondition> conditions;

  @override
  List<Object?> get props => [conditions];
}

class QueryConditionsInitial extends QueryConditionsTabState {
  QueryConditionsInitial({List<QueryCondition>? conditions})
      : super(conditions: conditions ?? []);
}

class QueryConditionsChanged extends QueryConditionsTabState {
  const QueryConditionsChanged({required List<QueryCondition> conditions})
      : super(conditions: conditions);
}
