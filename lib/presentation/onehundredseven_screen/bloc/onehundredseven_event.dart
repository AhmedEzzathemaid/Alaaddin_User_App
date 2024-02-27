// ignore_for_file: must_be_immutable

part of 'onehundredseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredseven widget is first created.
class OnehundredsevenInitialEvent extends OnehundredsevenEvent {
  @override
  List<Object?> get props => [];
}
