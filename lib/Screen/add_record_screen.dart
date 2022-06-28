import 'package:bazi/Bloc/add_record_bloc.dart';
import 'package:bazi/Enum/gender.dart';
import 'package:bazi/Model/add_record_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddRecordScreen extends StatefulWidget {
  final AddRecordBloc addRecordBloc;
  const AddRecordScreen({Key? key, required this.addRecordBloc})
      : super(key: key);

  static Widget create() {
    return Provider<AddRecordBloc>(
      create: (context) => AddRecordBloc(context: context),
      child: Consumer<AddRecordBloc>(
        builder: (context, bloc, _) => AddRecordScreen(addRecordBloc: bloc),
      ),
      dispose: (context, bloc) => bloc.dispose(),
    );
  }

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新增'),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<AddRecordModel>(
            stream: widget.addRecordBloc.stream,
            initialData: widget.addRecordBloc.model,
            builder: (context, snapshot) {
              return Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: widget.addRecordBloc.nameController,
                      onChanged: (value) =>
                          widget.addRecordBloc.updateWith(name: value),
                      decoration: InputDecoration(
                        labelText: '姓名',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Text(
                        '性別',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio<Gender>(
                              value: Gender.male,
                              groupValue: snapshot.data?.gender,
                              onChanged: (value) => widget.addRecordBloc
                                  .updateWith(gender: value),
                            ),
                            Text(
                              Gender.male.toString(),
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Radio<Gender>(
                                value: Gender.female,
                                groupValue: snapshot.data?.gender,
                                onChanged: (value) => widget.addRecordBloc
                                    .updateWith(gender: value),
                              ),
                              Text(
                                Gender.female.toString(),
                                style: Theme.of(context).textTheme.bodyText2,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Text(
                        '出生時間',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Row(
                      children: [
                        BirthDateTimeInput(
                          value: widget.addRecordBloc.birthDayString,
                          addRecordBloc: widget.addRecordBloc,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: BirthDateTimeInput(
                            value: widget.addRecordBloc.birthTimeString,
                            isTime: true,
                            addRecordBloc: widget.addRecordBloc,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 32),
                      child: ElevatedButton(
                        onPressed: widget.addRecordBloc.done,
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                        child: const Text('確認'),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class BirthDateTimeInput extends StatelessWidget {
  const BirthDateTimeInput(
      {Key? key,
      required this.value,
      this.isTime = false,
      required this.addRecordBloc})
      : super(key: key);
  final String value;
  final bool isTime;
  final AddRecordBloc addRecordBloc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => isTime
          ? await addRecordBloc.selectBirthTime()
          : await addRecordBloc.selectBirthDay(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          value,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
