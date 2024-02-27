// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [s16_item_widget] screen.
class S16ItemModel extends Equatable {S16ItemModel({this.s, this.isSelected, }) { s = s  ?? "S";isSelected = isSelected  ?? false; }

String? s;

bool? isSelected;

S16ItemModel copyWith({String? s, bool? isSelected, }) { return S16ItemModel(
s : s ?? this.s,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [s,isSelected];
 }
