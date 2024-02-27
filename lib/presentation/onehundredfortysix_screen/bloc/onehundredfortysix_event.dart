// ignore_for_file: must_be_immutable

part of 'onehundredfortysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onehundredfortysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredfortysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Onehundredfortysix widget is first created.
class OnehundredfortysixInitialEvent extends OnehundredfortysixEvent {
  @override
  List<Object?> get props => [];
}
