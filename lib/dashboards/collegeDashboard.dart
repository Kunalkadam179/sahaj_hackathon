
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeDashboard extends StatefulWidget {
  static String id='college_dashboard';
  @override
  _CollegeDashboardState createState() => _CollegeDashboardState();
}

class _CollegeDashboardState extends State<CollegeDashboard>
    with TickerProviderStateMixin {
  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF3D6EDB),
        automaticallyImplyLeading: false,
        title: Text(
          'College View',
          style: FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.55),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Student List',
                  options: FFButtonOptions(
                    width: 175,
                    height: 40,
                    color: Color(0xFF4CA6C9),
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Roboto',
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.15),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Project List',
                  options: FFButtonOptions(
                    width: 175,
                    height: 40,
                    color: Color(0xFF4CA6C9),
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Roboto',
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ).animated([animationsMap['buttonOnPageLoadAnimation']]),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.3),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Company Requests',
                  options: FFButtonOptions(
                    width: 175,
                    height: 40,
                    color: Color(0xFF4CA6C9),
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}