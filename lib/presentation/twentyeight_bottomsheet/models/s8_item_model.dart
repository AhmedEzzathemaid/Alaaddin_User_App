// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s8_item_widget] screen.
class S8ItemModel extends Equatable {S8ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S8ItemModel copyWith({String? s, bool? isSelected, }) { return S8ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
