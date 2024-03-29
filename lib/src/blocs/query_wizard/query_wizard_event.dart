import 'package:equatable/equatable.dart';

abstract class QueryWizardEvent extends Equatable {
  const QueryWizardEvent();

  @override
  List<Object> get props => [];
}

class QuerySchemaRequested extends QueryWizardEvent {
  const QuerySchemaRequested(this.query);

  final String query;

  @override
  List<Object> get props => [query];
}
