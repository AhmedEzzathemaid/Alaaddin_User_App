// ignore_for_file: must_be_immutable

part of 'thirtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtyfiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtyfive widget is first created.
class ThirtyfiveInitialEvent extends ThirtyfiveEvent {
  @override
  List<Object?> get props => [];
}
