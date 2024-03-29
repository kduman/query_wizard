import 'package:equatable/equatable.dart';

import 'package:query_wizard/models.dart';

abstract class QuerySourcesState extends Equatable {
  const QuerySourcesState({required this.sources});

  final List<DbElement> sources;

  @override
  List<Object?> get props => [sources];
}

class QuerySourcesInitial extends QuerySourcesState {
  QuerySourcesInitial({List<DbElement>? sources})
      : super(sources: sources ?? []);
}

class QuerySourcesLoadInProgress extends QuerySourcesState {
  QuerySourcesLoadInProgress() : super(sources: []);
}

class QuerySourcesLoadSuccess extends QuerySourcesState {
  const QuerySourcesLoadSuccess({required sources}) : super(sources: sources);

  @override
  List<Object> get props => [sources];
}

class QuerySourcesLoadFailure extends QuerySourcesState {
  QuerySourcesLoadFailure() : super(sources: []);
}

class QuerySourcesChanged extends QuerySourcesState {
  const QuerySourcesChanged({required List<DbElement> sources})
      : super(sources: sources);
}
