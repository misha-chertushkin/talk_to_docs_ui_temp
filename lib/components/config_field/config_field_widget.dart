import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'config_field_model.dart';
export 'config_field_model.dart';

class ConfigFieldWidget extends StatefulWidget {
  const ConfigFieldWidget({
    super.key,
    String? title,
    String? value,
    bool? isDropdown,
    bool? viewDetailsAction,
    this.onViewClick,
    bool? isReadOnly,
  })  : this.title = title ?? 'ConfigTitle',
        this.value = value ??
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        this.isDropdown = isDropdown ?? false,
        this.viewDetailsAction = viewDetailsAction ?? false,
        this.isReadOnly = isReadOnly ?? false;

  final String title;
  final String value;
  final bool isDropdown;
  final bool viewDetailsAction;
  final Future Function()? onViewClick;
  final bool isReadOnly;

  @override
  State<ConfigFieldWidget> createState() => _ConfigFieldWidgetState();
}

class _ConfigFieldWidgetState extends State<ConfigFieldWidget> {
  late ConfigFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfigFieldModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget!.title,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  if (widget!.viewDetailsAction == true)
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.mode_edit_outlined,
                        color: Color(0xFF444746),
                        size: 20.0,
                      ),
                      onPressed: () async {
                        await widget.onViewClick?.call();
                      },
                    ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xFFE1E1E1),
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget!.value,
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: valueOrDefault<Color>(
                                      widget!.isReadOnly
                                          ? Color(0xFF777777)
                                          : Color(0xFF121212),
                                      Color(0xFF121212),
                                    ),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      if (widget!.isDropdown == true)
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFFC1C1C1),
                          size: 24.0,
                        ),
                    ],
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
