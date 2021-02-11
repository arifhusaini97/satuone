import 'package:form_bloc/form_bloc.dart';

class EvaluationStateBloc extends FormBloc<String, String> {
  final textField = TextFieldBloc(
    validators: [FieldBlocValidators.requiredTextFieldBloc],
  );

  final booleanField = BooleanFieldBloc();

  final selectField1 = SelectFieldBloc(
    initialValue:"They didn't show anything worth.",
    items: [
      'Intellectual (IQ)',
      'Emotional (EQ)',
      'Physical (PQ)',
      'Spiritual (SQ)',
      "They didn't show anything worth.",
    ],
  );

  final selectField2 = SelectFieldBloc(
    items: [
      'Option 1',
      'Option 2',
    ],
  );

  final selectField3 = SelectFieldBloc(
    items: [
      'Azzan @azzan97',
      'Ammar @mey',
      'Muhammad Hilmi @hilmi_212',
      'Nur Arif Husaini @arifhusaini97',
      "Muhammad Izzat Isa @ijat97",
    ],
  );

    final selectField4 = SelectFieldBloc(
    items: [
      'Azzan @azzan97',
      'Ammar @mey',
      'Muhammad Hilmi @hilmi_212',
      'Nur Arif Husaini @arifhusaini97',
      "Muhammad Izzat Isa @ijat97",
    ],
  );

    final selectField5 = SelectFieldBloc(
    items: [
      'Azzan @azzan97',
      'Ammar @mey',
      'Muhammad Hilmi @hilmi_212',
      'Nur Arif Husaini @arifhusaini97',
      "Muhammad Izzat Isa @ijat97",
    ],
  );

    final selectField6 = SelectFieldBloc(
    items: [
      'Azzan @azzan97',
      'Ammar @mey',
      'Muhammad Hilmi @hilmi_212',
      'Nur Arif Husaini @arifhusaini97',
      "Muhammad Izzat Isa @ijat97",
    ],
  );

  final multiSelectField = MultiSelectFieldBloc<String>(
    items: ['Option 1', 'Option 2', 'Option 3'],
  );

  @override
  List<FieldBloc> get fieldBlocs => [
        textField,
        booleanField,
        selectField1,
        selectField2,
        multiSelectField,
      ];

  @override
  Stream<FormBlocState<String, String>> onSubmitting() async* {
    // Awesome logic...

    // Get the fields values:
    print(textField.value);
    print(booleanField.value);
    print(selectField1.value);
    print(selectField2.value);
    print(multiSelectField.value);

    await Future<void>.delayed(Duration(seconds: 2));
    yield state.toSuccess('Success');

    // yield `state.toLoaded()` because
    // you can't submit if the current state is `FormBlocSuccess`.
    // In most cases you don't need to do this,
    // because you only want to submit only once,
    // but in this case you want the user to submit more than once.
    // See: https://pub.dev/documentation/form_bloc/latest/form_bloc/FormBloc/onSubmitting.html
    yield state.toLoaded();
  }
}
