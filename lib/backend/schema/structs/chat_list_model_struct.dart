// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatListModelStruct extends BaseStruct {
  ChatListModelStruct({
    String? projectName,
    List<ChatStruct>? chatList,
    List<String>? questions,
  })  : _projectName = projectName,
        _chatList = chatList,
        _questions = questions;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "chat_list" field.
  List<ChatStruct>? _chatList;
  List<ChatStruct> get chatList => _chatList ?? const [];
  set chatList(List<ChatStruct>? val) => _chatList = val;

  void updateChatList(Function(List<ChatStruct>) updateFn) {
    updateFn(_chatList ??= []);
  }

  bool hasChatList() => _chatList != null;

  // "questions" field.
  List<String>? _questions;
  List<String> get questions => _questions ?? const [];
  set questions(List<String>? val) => _questions = val;

  void updateQuestions(Function(List<String>) updateFn) {
    updateFn(_questions ??= []);
  }

  bool hasQuestions() => _questions != null;

  static ChatListModelStruct fromMap(Map<String, dynamic> data) =>
      ChatListModelStruct(
        projectName: data['project_name'] as String?,
        chatList: getStructList(
          data['chat_list'],
          ChatStruct.fromMap,
        ),
        questions: getDataList(data['questions']),
      );

  static ChatListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'project_name': _projectName,
        'chat_list': _chatList?.map((e) => e.toMap()).toList(),
        'questions': _questions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'project_name': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'chat_list': serializeParam(
          _chatList,
          ParamType.DataStruct,
          isList: true,
        ),
        'questions': serializeParam(
          _questions,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ChatListModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatListModelStruct(
        projectName: deserializeParam(
          data['project_name'],
          ParamType.String,
          false,
        ),
        chatList: deserializeStructParam<ChatStruct>(
          data['chat_list'],
          ParamType.DataStruct,
          true,
          structBuilder: ChatStruct.fromSerializableMap,
        ),
        questions: deserializeParam<String>(
          data['questions'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ChatListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatListModelStruct &&
        projectName == other.projectName &&
        listEquality.equals(chatList, other.chatList) &&
        listEquality.equals(questions, other.questions);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([projectName, chatList, questions]);
}

ChatListModelStruct createChatListModelStruct({
  String? projectName,
}) =>
    ChatListModelStruct(
      projectName: projectName,
    );
