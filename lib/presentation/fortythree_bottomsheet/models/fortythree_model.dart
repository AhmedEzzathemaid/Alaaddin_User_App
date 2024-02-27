// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [fortythree_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FortythreeModel extends Equatable {FortythreeModel({this.radioList = const []}) {  }

List<String> radioList;

FortythreeModel copyWith({List<String>? radioList}) { return FortythreeModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
