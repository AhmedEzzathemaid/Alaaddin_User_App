// ignore_for_file: must_be_immutable

part of 'fiftyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftyfour widget is first created.
class FiftyfourInitialEvent extends FiftyfourEvent {
  @override
  List<Object?> get props => [];
}
