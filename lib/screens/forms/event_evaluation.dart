import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:satuone/screens/forms/forms_items/event_evaluation_state_bloc.dart';
import 'package:satuone/screens/forms/forms_items/form_bloc_listener.dart';
import 'package:satuone/screens/forms/forms_items/radio_button_group_field_bloc.dart';
import 'package:satuone/screens/forms/forms_items/scale_radio.dart';
import 'package:satuone/screens/forms/forms_items/text_field_bloc_builder.dart';
import 'package:satuone/screens/forms/forms_items/widget/loading_dialog.dart';
import 'package:satuone/screens/forms/forms_items/widget/notifications.dart';
import 'package:satuone/screens/forms/organizer_evaluation.dart';

class EventEvaluation extends StatefulWidget {
  @override
  EventEvaluationState createState() => EventEvaluationState();
}

class EventEvaluationState extends State<EventEvaluation> {
  double _sliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Survey For Organizer (1/2)",
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                  return FormBlocListener<EvaluationStateBloc, String,
                      String>(
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
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "1. Please rate the following items:",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "The level of service received",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    _radioButtonExample("Strongly Disagree"),
                                    _radioButtonExample("Disagree"),
                                    _radioButtonExample("Neutral"),
                                    _radioButtonExample("Agree"),
                                    _radioButtonExample("Strongly Agree"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "All participants are being professional and able to adapt with the situation.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              ScaleRadio(2, 5, 5.0, 50),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "All participants are being active in the programme.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              ScaleRadio(2, 5, 5.0, 50),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "All participants are very panctual with the tentative of the programmme.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              ScaleRadio(2, 5, 5.0, 50),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "2. All participants show that they already have a very high.",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: RadioButtonGroupFieldBlocBuilder<String>(
                                  selectFieldBloc: formBloc.selectField1,
                                  canDeselect: false,
                                  // decoration: InputDecoration(
                                  //   labelText:
                                  //       'RadioButtonGroupFieldBlocBuilder',
                                  //   prefixIcon:
                                  //       Icon(Icons.sentiment_very_dissatisfied),
                                  // ),
                                  itemBuilder: (context, item) => item,
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "3. I will give this event ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    Text(
                                      "${_sliderValue.toInt()}%",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: _sliderValue.toInt()<40? Colors.red: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      " marks.",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Slider(
                                        activeColor: Colors.indigoAccent,
                                        min: 1.0,
                                        max: 99.0,
                                        onChanged: (newRating) {
                                          setState(
                                              () => _sliderValue = newRating);
                                        },
                                        value: _sliderValue,
                                      ),
                                    ),
                                    Text(
                                      "99",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "4. My review in a word.",
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
                                      return 'You must write amazing text.';
                                      break;
                                    default:
                                      return 'This text is nor valid.';
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrganizerEvaluation(),
                              ),
                            );
                          },
                          child: Text('Next'),
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

  Widget _radioButtonExample(name) {
    return Container(
      //alignment: Alignment.topCenter,
      height: 50.0,
      width: 50.0,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.cloud_circle,
            size: 15.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
