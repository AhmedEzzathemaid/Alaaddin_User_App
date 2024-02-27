// ignore_for_file: must_be_immutable

part of 'fiftyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Fiftyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FiftyoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Fiftyone widget is first created.
class FiftyoneInitialEvent extends FiftyoneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FiftyoneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
