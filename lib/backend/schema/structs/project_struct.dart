// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectStruct extends BaseStruct {
  ProjectStruct({
    String? projectName,
    String? createdOn,
    String? updatedOn,
  })  : _projectName = projectName,
        _createdOn = createdOn,
        _updatedOn = updatedOn;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "createdOn" field.
  String? _createdOn;
  String get createdOn => _createdOn ?? '';
  set createdOn(String? val) => _createdOn = val;

  bool hasCreatedOn() => _createdOn != null;

  // "updatedOn" field.
  String? _updatedOn;
  String get updatedOn => _updatedOn ?? '';
  set updatedOn(String? val) => _updatedOn = val;

  bool hasUpdatedOn() => _updatedOn != null;

  static ProjectStruct fromMap(Map<String, dynamic> data) => ProjectStruct(
        projectName: data['projectName'] as String?,
        createdOn: data['createdOn'] as String?,
        updatedOn: data['updatedOn'] as String?,
      );

  static ProjectStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProjectStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'projectName': _projectName,
        'createdOn': _createdOn,
        'updatedOn': _updatedOn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'projectName': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'createdOn': serializeParam(
          _createdOn,
          ParamType.String,
        ),
        'updatedOn': serializeParam(
          _updatedOn,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectStruct(
        projectName: deserializeParam(
          data['projectName'],
          ParamType.String,
          false,
        ),
        createdOn: deserializeParam(
          data['createdOn'],
          ParamType.String,
          false,
        ),
        updatedOn: deserializeParam(
          data['updatedOn'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectStruct &&
        projectName == other.projectName &&
        createdOn == other.createdOn &&
        updatedOn == other.updatedOn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([projectName, createdOn, updatedOn]);
}

ProjectStruct createProjectStruct({
  String? projectName,
  String? createdOn,
  String? updatedOn,
}) =>
    ProjectStruct(
      projectName: projectName,
      createdOn: createdOn,
      updatedOn: updatedOn,
    );
