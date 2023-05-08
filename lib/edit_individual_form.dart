import 'package:flutter/material.dart';
import 'package:flutter_individual_form_db_ref/database_helper.dart';
import 'package:flutter_individual_form_db_ref/individual.dart';
import 'package:flutter_individual_form_db_ref/individual_screen.dart';
import 'package:flutter_individual_form_db_ref/main.dart';

class EditIndividualForm extends StatefulWidget {
  const EditIndividualForm({Key? key}) : super(key: key);

  @override
  State<EditIndividualForm> createState() => _EditIndividualFormState();
}

class _EditIndividualFormState extends State<EditIndividualForm> {
  var _imageController = TextEditingController();
  var _firstLastNameController = TextEditingController(); //1
  var _middleNameController = TextEditingController(); //2
  var _businessNameController = TextEditingController(); //3
  var _groupNameController = TextEditingController(); //4
  var _businessStartDateController = TextEditingController(); //5
  var _natureofBusinessController = TextEditingController(); //6
  var _panNumberController = TextEditingController(); //7
  var _GSTinController = TextEditingController(); //8
  var _regOfficeAddressController = TextEditingController(); //9
  var _pincodeController = TextEditingController(); //10

  var _bankNameController = TextEditingController(); //11
  var _branchController = TextEditingController(); //12
  var _accountTypeController = TextEditingController(); //13
  var _accountNoController = TextEditingController(); //14
  var _IFSCcodeController = TextEditingController(); //15

  var _nameController = TextEditingController(); //16
  var _designationController = TextEditingController(); //17
  var _contactNoLandlineNoController = TextEditingController(); //18
  var _emailController = TextEditingController(); //19

  bool firstTimeFlag = false;
  int _selectedId = 0;

  @override
  void initState(){
    super.initState();
  }


  _deleteFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final result = await dbHelper.delete(_selectedId, DatabaseHelper.individualsTable);

                  debugPrint('-----------------> Deleted Row Id: $result');

                  if(result >0 ) {
                    _showSuccessSnackBar(context, 'Deleted.');
                    Navigator.pop(context);

                    setState(() {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => IndividualScreen()));
                    });
                  }
                },
                child: const Text('Delete'),
              )
            ],
            title: const Text('Are you sure you want to delete this?'),

          );
        });
  }

  void _showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(new SnackBar(content: new Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    //edit
    if (firstTimeFlag == false) {
      print('---------->once execute');
      firstTimeFlag = true;
      final individual =
          ModalRoute.of(context)!.settings.arguments as Individual;
      print('----------->Received Data');
      print(individual.id);
      print(individual.image);
      print(individual.firstLastName);
      print(individual.middleName);
      print(individual.image);
      print(individual.firstLastName);
      print(individual.middleName);
      print(individual.businessName);
      print(individual.groupName);
      print(individual.businessStartDate);
      print(individual.natureofBusiness);
      print(individual.panNumber);
      print(individual.GSTin);
      print(individual.regOfficeAddress);
      print(individual.pincode);
      print(individual.bankName);
      print(individual.branch);
      print(individual.accountType);
      print(individual.accountNo);
      print(individual.IFSCcode);
      print(individual.name);
      print(individual.designation);
      print(individual.contactNoLandlineNo);
      print(individual.email);

      _selectedId = individual.id!;
      _imageController.text = individual.image;
    _firstLastNameController.text = individual.firstLastName;
    _middleNameController.text = individual.middleName;
    _businessNameController.text = individual.businessName;
    _groupNameController.text = individual.groupName;
     _businessStartDateController.text = individual.businessStartDate;
     _natureofBusinessController.text = individual.natureofBusiness;
     _panNumberController.text = individual.panNumber;
     _GSTinController.text =individual.GSTin;
    _regOfficeAddressController.text = individual.regOfficeAddress;
     _pincodeController.text = individual.pincode;
     _bankNameController.text = individual.bankName;
     _branchController.text = individual.branch;
     _accountTypeController.text = individual.accountType;
     _accountNoController.text = individual.accountNo;
     _IFSCcodeController.text = individual.IFSCcode;
     _nameController.text = individual.name;
     _designationController.text = individual.designation;
    _contactNoLandlineNoController.text = individual.contactNoLandlineNo;
    _emailController.text = individual.email;

    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual Form'),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Delete")),
            ],
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                _deleteFormDialog(context);
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ClipOval(
                  child: Image.asset(
                    'images/sample_image.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _firstLastNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'First Name/Last Name'),
                  ),
                ),
              ), //1
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _middleNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Middle Name'),
                  ),
                ),
              ), //2
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _businessNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Business Name'),
                  ),
                ),
              ), //3
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _groupNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Group Name'),
                  ),
                ),
              ), //4
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _businessStartDateController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Date of Business Starting'),
                  ),
                ),
              ), //5
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _natureofBusinessController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Nature of Business'),
                  ),
                ),
              ), //6
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _panNumberController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'PAN Number'),
                  ),
                ),
              ), //7
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _GSTinController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'GSTIN'),
                  ),
                ),
              ), //8
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _regOfficeAddressController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Registered Office Address'),
                  ),
                ),
              ), //9
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _pincodeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Pincode'),
                  ),
                ),
              ), //10
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _bankNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Bank Name'),
                  ),
                ),
              ), //11
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _branchController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Branch'),
                  ),
                ),
              ), //12
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _accountTypeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Account Type'),
                  ),
                ),
              ), //13
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _accountNoController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Account Number'),
                  ),
                ),
              ), //14
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _IFSCcodeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'IFSC code'),
                  ),
                ),
              ), //15
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Name'),
                  ),
                ),
              ), //16
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _designationController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Designation'),
                  ),
                ),
              ), //17
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _contactNoLandlineNoController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Contact Number'),
                  ),
                ),
              ), //18
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: SizedBox(
                  height: 50,
                  width: 370,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        labelText: 'Email'),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    _update();
                  },
                  child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }

  void _update() async {

    print('------------> Image: images/sample_image.png');
    print('---------------> FirstLastName: ${_firstLastNameController.text}');
    print('---------------> MiddleName: ${_middleNameController.text}');
    print('---------------> BusinessName: ${_businessNameController.text}');
    print('---------------> GroupName: ${_groupNameController.text}');
    print(
        '---------------> BusinessStartDate: ${_businessStartDateController.text}');
    print(
        '---------------> NatureofBusiness: ${_natureofBusinessController.text}');
    print('---------------> PanNumber: ${_panNumberController.text}');
    print('---------------> GSTin: ${_GSTinController.text}');
    print(
        '---------------> RegOfficeAddress: ${_regOfficeAddressController.text}');
    print('---------------> Pincode: ${_pincodeController.text}');
    print('---------------> BankName: ${_bankNameController.text}');
    print('---------------> Branch: ${_branchController.text}');
    print('---------------> AccountType: ${_accountTypeController.text}');
    print('---------------> AccountNo: ${_accountNoController.text}');
    print('---------------> IFSCcode: ${_IFSCcodeController.text}');
    print('---------------> Name: ${_nameController.text}');
    print('---------------> Designation: ${_designationController.text}');
    print(
        '---------------> ContactNoLandlineNo: ${_contactNoLandlineNoController.text}');
    print('---------------> Email: ${_emailController.text}');

    Map<String, dynamic> row = {

      DatabaseHelper.columnId: _selectedId,
      DatabaseHelper.columnImage: 'images/sample_image.png',
      DatabaseHelper.columnFirstLastName: _firstLastNameController.text,
      DatabaseHelper.columnMiddleName: _middleNameController.text,
      DatabaseHelper.columnBusinessName: _businessNameController.text,
      DatabaseHelper.columnGroupName: _groupNameController.text,
      DatabaseHelper.columnBusinessStartDate: _businessStartDateController.text,
      DatabaseHelper.columnNatureofBusiness: _natureofBusinessController.text,
      DatabaseHelper.columnPanNumber: _panNumberController.text,
      DatabaseHelper.columnGSTin: _GSTinController.text,
      DatabaseHelper.columnRegOfficeAddress: _regOfficeAddressController.text,
      DatabaseHelper.columnPincode: _pincodeController.text,
      DatabaseHelper.columnBankName: _bankNameController.text,
      DatabaseHelper.columnBranch: _branchController.text,
      DatabaseHelper.columnAccountType: _accountTypeController.text,
      DatabaseHelper.columnAccountNo: _accountNoController.text,
      DatabaseHelper.columnIFSCcode: _IFSCcodeController.text,
      DatabaseHelper.columnName: _nameController.text,
      DatabaseHelper.columnDesignation: _designationController.text,
      DatabaseHelper.columnContactNoLandlineNo:
          _contactNoLandlineNoController.text,
      DatabaseHelper.columnEmail: _emailController.text,
    };

    final result = await dbHelper.update(row, DatabaseHelper.individualsTable);

    debugPrint('--------> updated row id: $result');

    if (result > 0) {
      Navigator.pop(context);
      _showSucessSnackBar(context, 'Updated');
    }
    setState(() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => IndividualScreen()));
    });
  }

  void _showSucessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(new SnackBar(content: new Text(message)));
  }
}
