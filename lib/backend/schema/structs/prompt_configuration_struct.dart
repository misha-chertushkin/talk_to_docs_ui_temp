// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromptConfigurationStruct extends BaseStruct {
  PromptConfigurationStruct({
    String? promptName,
    String? promptValue,
    String? promptDisplayName,
  })  : _promptName = promptName,
        _promptValue = promptValue,
        _promptDisplayName = promptDisplayName;

  // "prompt_name" field.
  String? _promptName;
  String get promptName => _promptName ?? '';
  set promptName(String? val) => _promptName = val;

  bool hasPromptName() => _promptName != null;

  // "prompt_value" field.
  String? _promptValue;
  String get promptValue => _promptValue ?? '';
  set promptValue(String? val) => _promptValue = val;

  bool hasPromptValue() => _promptValue != null;

  // "prompt_display_name" field.
  String? _promptDisplayName;
  String get promptDisplayName => _promptDisplayName ?? '';
  set promptDisplayName(String? val) => _promptDisplayName = val;

  bool hasPromptDisplayName() => _promptDisplayName != null;

  static PromptConfigurationStruct fromMap(Map<String, dynamic> data) =>
      PromptConfigurationStruct(
        promptName: data['prompt_name'] as String?,
        promptValue: data['prompt_value'] as String?,
        promptDisplayName: data['prompt_display_name'] as String?,
      );

  static PromptConfigurationStruct? maybeFromMap(dynamic data) => data is Map
      ? PromptConfigurationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'prompt_name': _promptName,
        'prompt_value': _promptValue,
        'prompt_display_name': _promptDisplayName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prompt_name': serializeParam(
          _promptName,
          ParamType.String,
        ),
        'prompt_value': serializeParam(
          _promptValue,
          ParamType.String,
        ),
        'prompt_display_name': serializeParam(
          _promptDisplayName,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromptConfigurationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PromptConfigurationStruct(
        promptName: deserializeParam(
          data['prompt_name'],
          ParamType.String,
          false,
        ),
        promptValue: deserializeParam(
          data['prompt_value'],
          ParamType.String,
          false,
        ),
        promptDisplayName: deserializeParam(
          data['prompt_display_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromptConfigurationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromptConfigurationStruct &&
        promptName == other.promptName &&
        promptValue == other.promptValue &&
        promptDisplayName == other.promptDisplayName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([promptName, promptValue, promptDisplayName]);
}

PromptConfigurationStruct createPromptConfigurationStruct({
  String? promptName,
  String? promptValue,
  String? promptDisplayName,
}) =>
    PromptConfigurationStruct(
      promptName: promptName,
      promptValue: promptValue,
      promptDisplayName: promptDisplayName,
    );
