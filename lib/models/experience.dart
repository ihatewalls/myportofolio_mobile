import 'package:json_annotation/json_annotation.dart';

part 'experience.g.dart';

/// Portfolio experience synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Experience {
  const Experience({
    required this.title,
    required this.description,
    required this.category,
    this.id,
  });

  // TODO: Implement factory Experience.fromJson(Map<String, dynamic> json)
  // delegating to _$ExperienceFromJson(json)
  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  final String category;

  // TODO: Implement Map<String, dynamic> toJson() delegating to _$ExperienceToJson(this)
  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}