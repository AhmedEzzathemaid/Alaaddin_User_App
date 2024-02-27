// ignore_for_file: must_be_immutable

part of 'onehundredfortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortysevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortyseven widget is first created.
class OnehundredfortysevenInitialEvent extends OnehundredfortysevenEvent {
  @override
  List<Object?> get props => [];
}
