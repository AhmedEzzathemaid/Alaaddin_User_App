// ignore_for_file: must_be_immutable

part of 'fiftythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftythreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftythree widget is first created.
class FiftythreeInitialEvent extends FiftythreeEvent {
  @override
  List<Object?> get props => [];
}
