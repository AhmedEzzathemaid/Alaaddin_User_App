// ignore_for_file: must_be_immutable

part of 'sixtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sixtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SixtytwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Sixtytwo widget is first created.
class SixtytwoInitialEvent extends SixtytwoEvent {
  @override
  List<Object?> get props => [];
}
