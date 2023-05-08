import 'package:flutter/material.dart';
import 'package:flutter_individual_form_db_ref/database_helper.dart';
import 'package:flutter_individual_form_db_ref/individual_screen.dart';
import 'package:flutter_individual_form_db_ref/main.dart';

class IndividualForm extends StatefulWidget {
  const IndividualForm({Key? key}) : super(key: key);

  @override
  State<IndividualForm> createState() => _IndividualFormState();
}

class _IndividualFormState extends State<IndividualForm> {
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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Individual Form'),
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
                    _save();
                  },
                  child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }

  void _save() async {
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
    print('---------------> ContactNoLandlineNo: ${_contactNoLandlineNoController.text}');
    print('---------------> Email: ${_emailController.text}');

    Map<String, dynamic> row = {
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

    final result = await dbHelper.insert(row, DatabaseHelper.individualsTable);

    debugPrint('--------> inserted row id: $result');

    if (result > 0) {
      Navigator.pop(context);
      _showSucessSnackBar(context, 'Saved');
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
