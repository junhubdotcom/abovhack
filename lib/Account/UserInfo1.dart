import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abovhack/SocialMedia/Customise%20Widget/listOfInterest.dart';
import 'package:easy_debounce/easy_debounce.dart';

Color primaryBackground = const Color.fromRGBO(241, 244, 248, 1);
Color secondaryBackground = const Color.fromRGBO(57, 210, 192, 1);
Color alternate = const Color.fromRGBO(224, 227, 231, 1);
Color secondaryText = const Color.fromRGBO(87, 99, 108, 1);
Color error = const Color.fromRGBO(255, 89, 89, 1);
Color primary = const Color.fromRGBO(75, 56, 239, 1);

class UserInfoWidget extends StatefulWidget {
  const UserInfoWidget({super.key});

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  late UserInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = UserInfoModel();

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Tell us more about you!',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 24,
                      ),
                ),
                const SizedBox(height: 30),
                const Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'What is your reason of investing?',
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(21, 0, 21, 0),
                      child: Column(
                        children: [
                            InterestButton(interestName: "Capital Preservation"),
                            InterestButton(interestName: "Income Generation"),
                            InterestButton(interestName: "Goal Alignment"),
                            InterestButton(interestName: "Learning Experience"), 
                            InterestButton(interestName: "Portfolio Diversification"), 
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'How much risk are you willing to take?',
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                          ),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: secondaryBackground,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: alternate,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: alternate,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintStyle: const TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 12,
                        ),
                        hintText: 'Please select...',
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: secondaryText,
                          size: 24,
                        ),
                      ),
                      value: _model.dropDownValue1,
                      onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                      items: ['High', 'Medium', 'Low']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'How long do you want to invest for?',
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                          ),
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: secondaryBackground,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: alternate,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: alternate,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintStyle: const TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 12,
                        ),
                        hintText: 'Please select...',
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: secondaryText,
                          size: 24,
                        ),
                      ),
                      value: _model.dropDownValue2,
                      onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                      items: [
                        'Long-term (10+ years)',
                        'Medium-term (3-10 years)',
                        'Short-term (1-3 years)',
                        'Ultra-Short-term (Less than a year)'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'How much is your starting capital?',
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        onChanged: (value) {
                          EasyDebounce.debounce(
                            '_model.textController1',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          );
                        },
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Type here...',
                          labelStyle: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12,
                                  ),
                          hintStyle: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12,
                                  ),
                          errorStyle:
                              TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: error,
                                    fontSize: 14,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: alternate,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: primary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: const Icon(
                            Icons.attach_money_rounded,
                          ),
                          suffixIcon: _model.textController1!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.textController1?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: secondaryText,
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                  ),
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'How much is your regular savings?',
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 18,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: secondaryBackground,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: alternate,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: alternate,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: 'Period',
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: secondaryText,
                                size: 24,
                              ),
                            ),
                            value: _model.dropDownValue3,
                            onChanged: (val) => setState(() => _model.dropDownValue3 = val),
                            items: ['Annually', 'Monthly', 'Weekly']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            style: const TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 12,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode2,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController2',
                                  const Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                textInputAction: TextInputAction.done,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Type here...',
                                  labelStyle: const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12,
                                      ),
                                  hintStyle:
                                      const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12,
                                      ),
                                  errorStyle: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: error,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: alternate,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: primary,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: error,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: error,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.attach_money_rounded,
                                  ),
                                  suffixIcon: _model
                                          .textController2!.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.textController2?.clear();
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: secondaryText,
                                            size: 22,
                                          ),
                                        )
                                      : null,
                                ),
                                style: const TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12,
                                ),
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, 'SummaryPage');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfoModel extends ChangeNotifier {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  String? dropDownValue2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(String?)? textController2Validator;

  /// Initialization and disposal methods.

  UserInfoModel() {
    // Initialize state fields here.
    choiceChipsValues = [];

    textController1 = TextEditingController();

    textFieldFocusNode1 = FocusNode();

    textController2 = TextEditingController();

    textFieldFocusNode2 = FocusNode();

    textController1Validator = (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    };

    textController2Validator = (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    };

    // Dispose state fields here.
    @override
    void dispose() {
      unfocusNode.dispose();
      textFieldFocusNode1?.dispose();
      textController1?.dispose();

      textFieldFocusNode2?.dispose();
      textController2?.dispose();

      super.dispose();
    }
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
