// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [twentynine_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentynineModel extends Equatable {TwentynineModel({this.radioList = const []}) {  }

List<String> radioList;

TwentynineModel copyWith({List<String>? radioList}) { return TwentynineModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
