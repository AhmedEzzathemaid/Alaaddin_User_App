// ignore_for_file: must_be_immutable

part of 'onehundredsixtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtyseven widget is first created.
class OnehundredsixtysevenInitialEvent extends OnehundredsixtysevenEvent {
  @override
  List<Object?> get props => [];
}
