import 'package:flutter/material.dart';
import 'package:satuone/models/organization_model.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:satuone/screens/items/dropdown.dart';

class Association {
  static final List<String> _associations = [
    'UiTM Negeri Sembilan',
    'UiTM Shah Alam',
    'UniSZA',
    'UPM',
    'UIAM',
    'UTM',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(_associations);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
class Industry {
  static final List<String> _industries = [
    'Mathematics',
    'Statistics',
    'Computer Sciences',
    'Engineerings',
    'Digitals',
    'Data Sciences',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(_industries);

    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}

class RegisterOrganization extends StatefulWidget {
  RegisterOrganization({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RegisterOrganizationState createState() => _RegisterOrganizationState();
}

class _RegisterOrganizationState extends State<RegisterOrganization> {
  @override
  void initState() {
    super.initState();
  }
  

  List<String> _suggestOrganizationType = [
    'Association Club',
    "Association's Branch  Club",
    "Leadership Management Club",
    "Division Club",
  ];

  //final _autoCompletedKey = GlobalKey<AutoCompleteTextFieldState>();
  final _formKey = GlobalKey<FormState>();
  final _user = CreateOrganizationModel();
  final _inputAssociation = TextEditingController(text: '');
  final _inputIndustry = TextEditingController(text: '');

  List<String> added = [];
  String currentText = "";
  GlobalKey<AutoCompleteTextFieldState<String>> _autoCompletedKeyAssociation =
      new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<String>> _autoCompletedKeyIndustry =
      new GlobalKey();

  SimpleAutoCompleteTextField textField;
  bool showWhichErrorText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Builder(
            builder: (context) => Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Name: '),
                  _fieldNormal('Name', 'Ex: Degree in Mathematics Society',
                      'Please insert the organization fullname', 1),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Username: '),
                  _fieldNormal('Username', 'Ex: demaths',
                      'Please insert the organization username', 1),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Contact Number: '),
                  _fieldNormal('Contact Number', 'Ex: 0136362373',
                      'Please insert the organization contact number', 1),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Email: '),
                  _fieldNormal('Email', 'Ex: demaths@gmail.com',
                      'Please insert the organization email', 1),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Registration Number: '),
                  _fieldNormal('Registration Number', 'Ex: TR20192289-A',
                      'Please insert the organization registration ID', 1),
                  SizedBox(
                    height: 10.0,
                  ),
                  //textQuery, Extended text field
                  Text('Association: '),
                  _fieldAutoCompleted(
                    'Association',
                    'Ex: Universiti Teknologi MARA (UiTM)',
                    _autoCompletedKeyAssociation,
                    _inputAssociation,
                    'Please insert association',
                  ),
                  
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Industry: '),
                  _fieldAutoCompleted(
                    'Industry',
                    'Ex: Mathematics',
                    _autoCompletedKeyIndustry,
                    _inputIndustry,
                    'Please insert industry',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Organization Type: '),
                  DropDown(_suggestOrganizationType),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('About: '),
                  _fieldNormal(
                      'About',
                      'Ex: This organization was founded to serve......',
                      'Please describe something about the organization',
                      4),
                  SizedBox(
                    height: 10.0,
                  ),
                  //                 _FirstPageState() {
                  //   textField = SimpleAutoCompleteTextField(
                  //     key: key,
                  //     decoration: new InputDecoration(errorText: "Beans"),
                  //     controller: TextEditingController(text: "Starting Text"),
                  //     suggestions: suggestions,
                  //     textChanged: (text) => currentText = text,
                  //     clearOnSubmit: true,
                  //     textSubmitted: (text) => setState(() {
                  //           if (text != "") {
                  //             added.add(text);
                  //           }
                  //         }),
                  //   );
                  // }

                  // Container(
                  //   padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  //   child: Text('Subscribe'),
                  // ),
                  // SwitchListTile(
                  //   title: Text('Monthly Newsletter'),
                  //   value: _user.newsletter,
                  //   onChanged: (bool value) =>
                  //       setState(() => _user.newsletter = value),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  //   child: Text('Interest'),
                  // ),
                  // CheckboxListTile(
                  //   title: Text('Hiking'),
                  //   value: _user.passions[User.PassionHiking],
                  //   onChanged: (bool value) => setState(
                  //       () => _user.passions[User.PassionHiking] = value),
                  // ),
                  // CheckboxListTile(
                  //   title: Text('Swimming'),
                  //   value: _user.passions[User.PassionSwimming],
                  //   onChanged: (bool value) => setState(
                  //       () => _user.passions[User.PassionSwimming] = value),
                  // ),
                  // CheckboxListTile(
                  //   title: Text('Flying'),
                  //   value: _user.passions[User.PassionFlying],
                  //   onChanged: (bool value) => setState(
                  //       () => _user.passions[User.PassionFlying] = value),
                  // ),
                  Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: RaisedButton(
                        child: Text('Create'),
                        color: Colors.purple,
                        textColor: Colors.white,
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form.validate()) {
                            form.save();
                            _user.save();
                            _showDialog(context);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Submiting request to be approved'),
      ),
    );
  }

  Widget _fieldNormal(
      String _name, String _example, String _validate, int _maxLines) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 0.0,
      ),
      child: TextFormField(
        maxLines: _maxLines,
        keyboardType: _keyboardType(_name),
        decoration: InputDecoration(
          border: _name == 'About' ? OutlineInputBorder() : null,
          hintText: _example,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return _validate;
          }
          return null;
        },
        onSaved: _contain(_name),
      ),
    );
  }

  TextInputType _keyboardType(_name) {
    switch (_name) {
      case 'Contact Number':
        return TextInputType.phone;
        break;
      case 'Email':
        return TextInputType.emailAddress;
        break;
      default:
        return TextInputType.text;
        break;
    }
  }

  _contain(_name) {
    switch (_name) {
      case 'Name':
        (value) => setState(
              () => _user.fullname = value,
            );
        break;
      case 'Username ':
        (value) => setState(
              () => _user.username = value,
            );
        break;
      case 'Contact Number':
        (value) => setState(
              () => _user.telNo = value,
            );
        break;
      case 'Email':
        (value) => setState(
              () => _user.email = value,
            );
        break;
      case 'Registration Number':
        (value) => setState(
              () => _user.regRos = value,
            );
        break;
      case 'Association':
        (value) => setState(
              () => _user.isUnder = value,
            );
        break;
      case 'Organization Type':
        (value) => setState(
              () => _user.type = value,
            );
        break;
      case 'Industry':
        (value) => setState(
              () => _user.industry = value,
            );
        break;
      case 'About':
        (value) => setState(
              () => _user.about = value,
            );
        break;
    }
  }

  Widget _fieldAutoCompleted(
    String _name,
    String _example,
    GlobalKey _autoCompletedKey,
    TextEditingController _input,
    String _validate,
    // String _validate
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
       child:
        TypeAheadFormField(
          key: _autoCompletedKey,
          textFieldConfiguration: TextFieldConfiguration(
            decoration: InputDecoration(
              hintText: _example,
            ),
            controller: _input,
          ),          
          suggestionsCallback: (pattern) {
            return _name=='Association'? Association.getSuggestions(pattern):Industry.getSuggestions(pattern);
          },
          itemBuilder: (context, _suggestions) {
            return ListTile(
              title: Text(_suggestions),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            _input.text = suggestion;
          },
          validator: (value) {
            if (value.isEmpty) {
              return _validate;
            }
            return null;
          },
          onSaved: _contain(_name),
        ),
     
    );
  }
}
