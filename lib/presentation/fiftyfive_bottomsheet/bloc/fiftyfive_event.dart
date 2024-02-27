// ignore_for_file: must_be_immutable

part of 'fiftyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftyfive widget is first created.
class FiftyfiveInitialEvent extends FiftyfiveEvent {
  @override
  List<Object?> get props => [];
}
