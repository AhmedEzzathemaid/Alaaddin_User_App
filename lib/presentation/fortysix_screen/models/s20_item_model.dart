// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s20_item_widget] screen.
class S20ItemModel extends Equatable {S20ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S20ItemModel copyWith({String? s, bool? isSelected, }) { return S20ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
