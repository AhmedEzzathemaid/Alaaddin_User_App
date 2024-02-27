// ignore_for_file: must_be_immutable

part of 'thirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Thirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThirtythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Thirtythree widget is first created.
class ThirtythreeInitialEvent extends ThirtythreeEvent {
  @override
  List<Object?> get props => [];
}
