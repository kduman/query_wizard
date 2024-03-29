import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QueryGroupingsState extends Equatable {
  const QueryGroupingsState({required this.groupings});

  final List<QueryGrouping> groupings;

  @override
  List<Object?> get props => [groupings];
}

class QueryGroupingsInitial extends QueryGroupingsState {
  QueryGroupingsInitial({List<QueryGrouping>? groupings})
      : super(groupings: groupings ?? []);
}

class QueryGroupingsChanged extends QueryGroupingsState {
  const QueryGroupingsChanged({required List<QueryGrouping> groupings})
      : super(groupings: groupings);
}
