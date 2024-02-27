// ignore_for_file: must_be_immutable

part of 'thirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyfourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtyfour widget is first created.
class ThirtyfourInitialEvent extends ThirtyfourEvent {
  @override
  List<Object?> get props => [];
}
