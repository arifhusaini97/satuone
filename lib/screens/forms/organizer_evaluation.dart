import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:satuone/screens/forms/forms_items/event_evaluation_state_bloc.dart';
import 'package:satuone/screens/forms/forms_items/form_bloc_listener.dart';
import 'package:satuone/screens/forms/forms_items/scale_radio.dart';
import 'package:satuone/screens/forms/forms_items/text_field_bloc_builder.dart';
import 'package:satuone/screens/forms/forms_items/util.dart/dropdown_field_bloc_builder.dart';
import 'package:satuone/screens/forms/forms_items/widget/loading_dialog.dart';
import 'package:satuone/screens/forms/forms_items/widget/notifications.dart';

class OrganizerEvaluation extends StatefulWidget {
  @override
  _OrganizerEvaluationState createState() => _OrganizerEvaluationState();
}

class _OrganizerEvaluationState extends State<OrganizerEvaluation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Survey For Organizer (2/2)",
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 4.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Event : ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Hari Keluarga Tahun 2019",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Date   : ",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "23/04/2019 (Saturday)",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            BlocProvider<EvaluationStateBloc>(
              create: (context) => EvaluationStateBloc(),
              child: Builder(
                builder: (context) {
                  final formBloc =
                      BlocProvider.of<EvaluationStateBloc>(context);

                  SelectFieldBloc<String> candidatesList1 =
                      formBloc.selectField3;
                  SelectFieldBloc<String> candidatesList2 =
                      formBloc.selectField4;
                  SelectFieldBloc<String> candidatesList3 =
                      formBloc.selectField5;
                  SelectFieldBloc<String> candidatesList4 =
                      formBloc.selectField6;

                  return FormBlocListener<EvaluationStateBloc, String, String>(
                    onSubmitting: (context, state) =>
                        LoadingDialog.show(context),
                    onSuccess: (context, state) {
                      LoadingDialog.hide(context);
                      Notifications.showSnackBarWithSuccess(
                          context, state.successResponse);
                    },
                    onFailure: (context, state) {
                      LoadingDialog.hide(context);
                      Notifications.showSnackBarWithError(
                          context, state.failureResponse);
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 25.0, right: 1.0),
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "1. Please rate the organizer team:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.0,
                                  ),
                                ),
                                // padding: EdgeInsets.symmetric(
                                //   horizontal: 50.0,
                                // ),
                                alignment: Alignment.topCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 80.0,
                                    ),
                                    _radioButtonExample("1", "The\nworst"),
                                    _radioButtonExample("2", "Very\nworst"),
                                    _radioButtonExample("3", "Worst"),
                                    _radioButtonExample("4", "Bad"),
                                    _radioButtonExample("5", "Neutral"),
                                    _radioButtonExample("6", "Good"),
                                    _radioButtonExample("7", "Very\ngood"),
                                    _radioButtonExample("8", "Best"),
                                    _radioButtonExample("9", "The\nbest"),
                                    _radioButtonExample("10", "Perfect"),
                                  ],
                                ),
                              ),
                              _radioButtonScale("Communication"),
                              _radioButtonScale("Focus"),
                              _radioButtonScale("Fair Contribution"),
                              _radioButtonScale("Support E. O."),
                              _radioButtonScale("Team Diversity"),
                              _radioButtonScale("Leadership"),
                              _radioButtonScale("Systematic"),
                              _radioButtonScale("Fun"),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "2. Choose the best organizer to receive these awards:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              _dropDownAwards(
                                "i.  Friendly",
                                candidatesList1,
                              ),
                              _dropDownAwards(
                                "ii. Idealistic",
                                candidatesList2,
                              ),
                              _dropDownAwards(
                                "iii.Speaker",
                                candidatesList3,
                              ),
                              _dropDownAwards(
                                "iv. Commitment",
                                candidatesList4,
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "3. My suggestion for future improvement in a word.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              TextFieldBlocBuilder(
                                decoration: InputDecoration(
                                    hintText: "Need to improvise the ..."),
                                maxLength: 50,
                                textFieldBloc: formBloc.textField,
                                // decoration: InputDecoration(
                                //   labelText: 'TextFieldBlocBuilder',
                                //   // prefixIcon:
                                //   //     Icon(Icons.sentiment_very_satisfied),
                                // ),
                                errorBuilder: (context, error) {
                                  switch (error) {
                                    case FieldBlocValidatorsErrors
                                        .requiredTextFieldBloc:
                                      return 'You must give any suggestion.';
                                      break;
                                    default:
                                      return 'This text is not valid.';
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        RaisedButton(
                          onPressed: formBloc.submit,
                          child: Text('Submit'),
                          color: Colors.purple,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _radioButtonExample(value, name) {
    return Container(
      height: 25.0,
      width: 25.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontSize: 7.0,
              color: Colors.grey[600],
            ),
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 7.0,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _radioButtonScale(_name) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1.0,
          ),
          left: BorderSide(
            width: 1.0,
          ),
          bottom: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.0,
      ),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 75.5,
            alignment: Alignment.centerLeft,
            child: Text(
              _name,
              style: TextStyle(fontSize: 10.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 250,
            child: ScaleRadio(4, 10, 0.0, 25.3),
          ),
        ],
      ),
    );
  }

  _dropDownAwards(_category, input) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            _category,
            style: TextStyle(fontSize: 11.0),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                right: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
                left: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.7,
            height: 50.0,
            child: DropdownFieldBlocBuilder<String>(
              showEmptyItem: true,
              padding: EdgeInsets.only(right: 0.0),
              selectFieldBloc: input,
              itemBuilder: (context, value) => value,
            ),
          ),
        ],
      ),
    );
  }
}
