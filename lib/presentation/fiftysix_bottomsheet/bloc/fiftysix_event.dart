// ignore_for_file: must_be_immutable

part of 'fiftysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftysixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftysix widget is first created.
class FiftysixInitialEvent extends FiftysixEvent {
  @override
  List<Object?> get props => [];
}
