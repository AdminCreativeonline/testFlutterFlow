import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Text(
                      functions.nextPage(
                          textController1.text, textController2.text),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: TextFormField(
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: '1. ชื่อร้านค้า',
                        labelStyle: FlutterFlowTheme.bodyText1,
                        hintText: 'กรอกชื่อร้านค้าที่ท่านติดต่อ',
                        hintStyle: FlutterFlowTheme.bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.bodyText1,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'กรุณากรอกข้อมูลด้วย';
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: TextFormField(
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: '2. ชื่อการค้า',
                        labelStyle: FlutterFlowTheme.bodyText1,
                        hintText: 'กรอกชื่อแบรนด์สินค้าที่ท่านต้องการ',
                        hintStyle: FlutterFlowTheme.bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.bodyText1,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field is required';
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: TextFormField(
                      controller: textController3,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: '3. ชื่อเครื่องหมายการค้า (ภาษาไทย)',
                        labelStyle: FlutterFlowTheme.bodyText1,
                        hintText: 'กรอกชื่อแบรนด์สินค้าที่ท่านต้องการ',
                        hintStyle: FlutterFlowTheme.bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.bodyText1,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field is required';
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: TextFormField(
                      controller: textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: '4. ชื่อเครื่องหมายการค้า (ภาษาอังกฤษ)',
                        labelStyle: FlutterFlowTheme.bodyText1,
                        hintText: 'กรอกชื่อแบรนด์สินค้าที่ท่านต้องการ',
                        hintStyle: FlutterFlowTheme.bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF188B2E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      style: FlutterFlowTheme.bodyText1,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Field is required';
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: InkWell(
                      onTap: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                          textColor: Color(0xFF188B2E),
                          pickerFontFamily: 'Kanit',
                        );
                        if (selectedMedia != null &&
                            validateFileFormat(
                                selectedMedia.storagePath, context)) {
                          showUploadMessage(context, 'Uploading file...',
                              showLoading: true);
                          final downloadUrl = await uploadData(
                              selectedMedia.storagePath, selectedMedia.bytes);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          if (downloadUrl != null) {
                            setState(() => uploadedFileUrl = downloadUrl);
                            showUploadMessage(context, 'Success!');
                          } else {
                            showUploadMessage(
                                context, 'Failed to upload media');
                            return;
                          }
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.tertiaryColor,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo_outlined,
                              color: Color(0xD3494848),
                              size: 80,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                '5. อัพโหลดใบอนุญาตขายปุ๋ย',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'บันทึก',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Kanit',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton1,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Button',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Kanit',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton2,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
