// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateProjectResponseModelStruct extends BaseStruct {
  CreateProjectResponseModelStruct({
    String? clientProjectId,
  }) : _clientProjectId = clientProjectId;

  // "client_project_id" field.
  String? _clientProjectId;
  String get clientProjectId => _clientProjectId ?? '';
  set clientProjectId(String? val) => _clientProjectId = val;

  bool hasClientProjectId() => _clientProjectId != null;

  static CreateProjectResponseModelStruct fromMap(Map<String, dynamic> data) =>
      CreateProjectResponseModelStruct(
        clientProjectId: data['client_project_id'] as String?,
      );

  static CreateProjectResponseModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? CreateProjectResponseModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'client_project_id': _clientProjectId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'client_project_id': serializeParam(
          _clientProjectId,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreateProjectResponseModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreateProjectResponseModelStruct(
        clientProjectId: deserializeParam(
          data['client_project_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreateProjectResponseModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateProjectResponseModelStruct &&
        clientProjectId == other.clientProjectId;
  }

  @override
  int get hashCode => const ListEquality().hash([clientProjectId]);
}

CreateProjectResponseModelStruct createCreateProjectResponseModelStruct({
  String? clientProjectId,
}) =>
    CreateProjectResponseModelStruct(
      clientProjectId: clientProjectId,
    );
