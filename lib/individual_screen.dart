import 'package:flutter/material.dart';
import 'package:flutter_individual_form_db_ref/database_helper.dart';
import 'package:flutter_individual_form_db_ref/edit_individual_form.dart';
import 'package:flutter_individual_form_db_ref/individual.dart';
import 'package:flutter_individual_form_db_ref/individual_form.dart';
import 'package:flutter_individual_form_db_ref/main.dart';

class IndividualScreen extends StatefulWidget {
  const IndividualScreen({Key? key}) : super(key: key);

  @override
  State<IndividualScreen> createState() => _IndividualScreenState();
}

class _IndividualScreenState extends State<IndividualScreen> {

  late List<Individual> _IndividualList;

  @override
  void initState() {
    super.initState();
    getAllIndividuals();
  }

  getAllIndividuals() async {
    _IndividualList = <Individual>[];

    var individuals =
        await dbHelper.queryAllRows(DatabaseHelper.individualsTable);

    individuals.forEach((individual) {
      setState(() {
        print(individual['_id']);
        print(individual['_image']);
        print(individual['_firstLastName']);
        print(individual['_middleName']);
        print(individual['_businessName']);
        print(individual['_groupName']);
        print(individual['_businessStartDate']);
        print(individual['_natureofBusiness']);
        print(individual['_panNumber']);
        print(individual['_GSTin']);
        print(individual['_regOfficeAddress']);
        print(individual['_pincode']);
        print(individual['_bankName']);
        print(individual['_branch']);
        print(individual['_accountType']);
        print(individual['_accountNo']);
        print(individual['_IFSCcode']);
        print(individual['_name']);
        print(individual['_designation']);
        print(individual['_contactNoLandlineNo']);
        print(individual['_email']);

        var individualModel = Individual(
          individual['_id'],
          individual['_image'],
          individual['_firstLastName'],
          individual['_middleName'],
          individual['_businessName'],
          individual['_groupName'],
          individual['_businessStartDate'],
          individual['_natureofBusiness'],
          individual['_panNumber'],
          individual['_GSTin'],
          individual['_regOfficeAddress'],
          individual['_pincode'],
          individual['_bankName'],
          individual['_branch'],
          individual['_accountType'],
          individual['_accountNo'],
          individual['_IFSCcode'],
          individual['_name'],
          individual['_designation'],
          individual['_contactNoLandlineNo'],
          individual['_email'],
        );

        _IndividualList.add(individualModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual'),
      ),
      body: ListView.builder(
          itemCount: _IndividualList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                child: ListTile(
                  onTap: () {
                    print('---------->Edit or Delete invoked: Send Data');
                    print(_IndividualList[index].id);
                    print(_IndividualList[index].id);
                        print(_IndividualList[index].image,);
                            print(_IndividualList[index].firstLastName);
                    print(_IndividualList[index].middleName);
                    print(_IndividualList[index].businessName);
                    print(_IndividualList[index].groupName);
                    print(_IndividualList[index].businessStartDate);
                    print(_IndividualList[index].natureofBusiness);
                    print(_IndividualList[index].panNumber);
                        print(_IndividualList[index].GSTin);
                            print(_IndividualList[index].regOfficeAddress);
                    print(_IndividualList[index].pincode);
                    print(_IndividualList[index].bankName);
                    print(_IndividualList[index].branch);
                    print(_IndividualList[index].accountType);
                    print(_IndividualList[index].accountNo);
                    print(_IndividualList[index].IFSCcode);
                    print(_IndividualList[index].name);
                    print(_IndividualList[index].designation);
                    print(_IndividualList[index].contactNoLandlineNo);
                    print(_IndividualList[index].email);

                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context) => EditIndividualForm(),
                    settings: RouteSettings(
                    arguments: _IndividualList[index], ),
                    ));
                  },
                  title: Row(
                    children: [
                      Text(_IndividualList[index].businessName ?? 'No Data'),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => IndividualForm()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
