// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatStruct extends BaseStruct {
  ChatStruct({
    String? message,
    bool? isAi,
    String? responseId,
    bool? isDebugVisible,
  })  : _message = message,
        _isAi = isAi,
        _responseId = responseId,
        _isDebugVisible = isDebugVisible;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "is_ai" field.
  bool? _isAi;
  bool get isAi => _isAi ?? false;
  set isAi(bool? val) => _isAi = val;

  bool hasIsAi() => _isAi != null;

  // "response_id" field.
  String? _responseId;
  String get responseId => _responseId ?? '';
  set responseId(String? val) => _responseId = val;

  bool hasResponseId() => _responseId != null;

  // "isDebugVisible" field.
  bool? _isDebugVisible;
  bool get isDebugVisible => _isDebugVisible ?? true;
  set isDebugVisible(bool? val) => _isDebugVisible = val;

  bool hasIsDebugVisible() => _isDebugVisible != null;

  static ChatStruct fromMap(Map<String, dynamic> data) => ChatStruct(
        message: data['message'] as String?,
        isAi: data['is_ai'] as bool?,
        responseId: data['response_id'] as String?,
        isDebugVisible: data['isDebugVisible'] as bool?,
      );

  static ChatStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'is_ai': _isAi,
        'response_id': _responseId,
        'isDebugVisible': _isDebugVisible,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'is_ai': serializeParam(
          _isAi,
          ParamType.bool,
        ),
        'response_id': serializeParam(
          _responseId,
          ParamType.String,
        ),
        'isDebugVisible': serializeParam(
          _isDebugVisible,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        isAi: deserializeParam(
          data['is_ai'],
          ParamType.bool,
          false,
        ),
        responseId: deserializeParam(
          data['response_id'],
          ParamType.String,
          false,
        ),
        isDebugVisible: deserializeParam(
          data['isDebugVisible'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatStruct &&
        message == other.message &&
        isAi == other.isAi &&
        responseId == other.responseId &&
        isDebugVisible == other.isDebugVisible;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([message, isAi, responseId, isDebugVisible]);
}

ChatStruct createChatStruct({
  String? message,
  bool? isAi,
  String? responseId,
  bool? isDebugVisible,
}) =>
    ChatStruct(
      message: message,
      isAi: isAi,
      responseId: responseId,
      isDebugVisible: isDebugVisible,
    );
