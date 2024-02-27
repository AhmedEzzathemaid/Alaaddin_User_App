// ignore_for_file: must_be_immutable

part of 'sixtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtythree widget is first created.
class SixtythreeInitialEvent extends SixtythreeEvent {
  @override
  List<Object?> get props => [];
}
