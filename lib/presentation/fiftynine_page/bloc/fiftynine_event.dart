// ignore_for_file: must_be_immutable

part of 'fiftynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftynineEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftynine widget is first created.
class FiftynineInitialEvent extends FiftynineEvent {
  @override
  List<Object?> get props => [];
}
