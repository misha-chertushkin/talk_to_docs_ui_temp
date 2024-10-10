// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsStruct extends BaseStruct {
  DocumentsStruct({
    String? documentId,
    String? documentFilename,
    String? documentClientProjectId,
    String? documentUri,
  })  : _documentId = documentId,
        _documentFilename = documentFilename,
        _documentClientProjectId = documentClientProjectId,
        _documentUri = documentUri;

  // "document_id" field.
  String? _documentId;
  String get documentId => _documentId ?? '';
  set documentId(String? val) => _documentId = val;

  bool hasDocumentId() => _documentId != null;

  // "document_filename" field.
  String? _documentFilename;
  String get documentFilename => _documentFilename ?? '';
  set documentFilename(String? val) => _documentFilename = val;

  bool hasDocumentFilename() => _documentFilename != null;

  // "document_client_project_id" field.
  String? _documentClientProjectId;
  String get documentClientProjectId => _documentClientProjectId ?? '';
  set documentClientProjectId(String? val) => _documentClientProjectId = val;

  bool hasDocumentClientProjectId() => _documentClientProjectId != null;

  // "document_uri" field.
  String? _documentUri;
  String get documentUri => _documentUri ?? '';
  set documentUri(String? val) => _documentUri = val;

  bool hasDocumentUri() => _documentUri != null;

  static DocumentsStruct fromMap(Map<String, dynamic> data) => DocumentsStruct(
        documentId: data['document_id'] as String?,
        documentFilename: data['document_filename'] as String?,
        documentClientProjectId: data['document_client_project_id'] as String?,
        documentUri: data['document_uri'] as String?,
      );

  static DocumentsStruct? maybeFromMap(dynamic data) => data is Map
      ? DocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'document_id': _documentId,
        'document_filename': _documentFilename,
        'document_client_project_id': _documentClientProjectId,
        'document_uri': _documentUri,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'document_id': serializeParam(
          _documentId,
          ParamType.String,
        ),
        'document_filename': serializeParam(
          _documentFilename,
          ParamType.String,
        ),
        'document_client_project_id': serializeParam(
          _documentClientProjectId,
          ParamType.String,
        ),
        'document_uri': serializeParam(
          _documentUri,
          ParamType.String,
        ),
      }.withoutNulls;

  static DocumentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocumentsStruct(
        documentId: deserializeParam(
          data['document_id'],
          ParamType.String,
          false,
        ),
        documentFilename: deserializeParam(
          data['document_filename'],
          ParamType.String,
          false,
        ),
        documentClientProjectId: deserializeParam(
          data['document_client_project_id'],
          ParamType.String,
          false,
        ),
        documentUri: deserializeParam(
          data['document_uri'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocumentsStruct &&
        documentId == other.documentId &&
        documentFilename == other.documentFilename &&
        documentClientProjectId == other.documentClientProjectId &&
        documentUri == other.documentUri;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [documentId, documentFilename, documentClientProjectId, documentUri]);
}

DocumentsStruct createDocumentsStruct({
  String? documentId,
  String? documentFilename,
  String? documentClientProjectId,
  String? documentUri,
}) =>
    DocumentsStruct(
      documentId: documentId,
      documentFilename: documentFilename,
      documentClientProjectId: documentClientProjectId,
      documentUri: documentUri,
    );
