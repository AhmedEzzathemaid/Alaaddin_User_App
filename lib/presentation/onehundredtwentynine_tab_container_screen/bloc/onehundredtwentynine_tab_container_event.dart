// ignore_for_file: must_be_immutable

part of 'onehundredtwentynine_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnehundredtwentynineTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnehundredtwentynineTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnehundredtwentynineTabContainer widget is first created.
class OnehundredtwentynineTabContainerInitialEvent
    extends OnehundredtwentynineTabContainerEvent {
  @override
  List<Object?> get props => [];
}
