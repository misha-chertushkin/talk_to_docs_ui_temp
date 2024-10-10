import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prompt_questions_model.dart';
export 'prompt_questions_model.dart';

class PromptQuestionsWidget extends StatefulWidget {
  const PromptQuestionsWidget({
    super.key,
    this.promptQuestion,
  });

  final String? promptQuestion;

  @override
  State<PromptQuestionsWidget> createState() => _PromptQuestionsWidgetState();
}

class _PromptQuestionsWidgetState extends State<PromptQuestionsWidget> {
  late PromptQuestionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromptQuestionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent4,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(50.0, 16.0, 50.0, 16.0),
        child: Text(
          valueOrDefault<String>(
            widget!.promptQuestion,
            'promptQuestionHere',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
