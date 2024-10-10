import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'document_action_card_model.dart';
export 'document_action_card_model.dart';

class DocumentActionCardWidget extends StatefulWidget {
  const DocumentActionCardWidget({
    super.key,
    required this.fileName,
    required this.deleteAction,
  });

  final String? fileName;
  final Future Function()? deleteAction;

  @override
  State<DocumentActionCardWidget> createState() =>
      _DocumentActionCardWidgetState();
}

class _DocumentActionCardWidgetState extends State<DocumentActionCardWidget> {
  late DocumentActionCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocumentActionCardModel());

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
      height: 48.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFFD3E3FD),
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.insert_drive_file_outlined,
              color: Color(0xFF0B57D0),
              size: 24.0,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  widget!.fileName!,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF0B57D0),
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.delete_rounded,
                color: Color(0xFFC1C1C1),
                size: 24.0,
              ),
              showLoadingIndicator: true,
              onPressed: () async {
                await widget.deleteAction?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
