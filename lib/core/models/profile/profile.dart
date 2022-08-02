import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class Profile with _$Profile {
  factory Profile({
    Goals? goals,
  }) = _Profile;

  Profile._();

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class Goals with _$Goals {
  factory Goals({
    required double calories,
    required double protein,
    required double fat,
    required double carbs,
  }) = _Goals;

  Goals._();

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsToJson(this);
}
