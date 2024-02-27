// ignore_for_file: must_be_immutable

part of 'onehundredsixtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredsixtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredsixtysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredsixtysix widget is first created.
class OnehundredsixtysixInitialEvent extends OnehundredsixtysixEvent {
  @override
  List<Object?> get props => [];
}
