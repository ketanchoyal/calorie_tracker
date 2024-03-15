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
    Keys? keys,
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

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class Keys with _$Keys {
  factory Keys({
    required String openAiToken,
    required String orgId,
  }) = _Keys;

  Keys._();

  factory Keys.fromJson(Map<String, dynamic> json) => _$KeysFromJson(json);

  Map<String, dynamic> toJson() => _$KeysToJson(this);
}
