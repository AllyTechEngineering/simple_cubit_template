/// example of one repository for multiple data sources
/// In this example the only difference between the data sets are the file names and sailing class name
/// The data set file name and sailing class name are parameters (Strings).
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:simple_cubit_template/models/data_model.dart';
import 'package:simple_cubit_template/models/custom_error.dart';
import 'package:simple_cubit_template/exception/exceptions.dart';

class DataRepository {
  Future<List<DataModel>> fetchData(String jsonFileName, String className) async {
    try {
      debugPrint('Name check: $jsonFileName');
      final String tempDataValue = await rootBundle.loadString(jsonFileName);
      final tempDataValueJson = await jsonDecode(tempDataValue);
      final dataListValue = List<DataModel>.of(
        tempDataValueJson[className].map<DataModel>(
          (json) {
            return DataModel(
              boat: json['Boat'],
              className: json['Class'],
              code: json['Code'],
              dpn: json['DPN'],
              dpn1: json['DPN1'],
              dpn2: json['DPN2'],
              dpn3: json['DPN3'],
              dpn4: json['DPN4'],
              website: json['Website'],
              crewSize: json['CrewSize'],
              oneDesign: json['OneDesign'],
              loa: json['LOA'],
              lwl: json['LWL'],
              sailArea: json['SailArea'],
              beam: json['Beam'],
              displacement: json['Displacement'],
              maxDraft: json['MaxDraft'],
              saDisp: json['SA_Disp'],
              balDisp: json['Bal_Disp'],
              dispLen: json['Disp_Len'],
              capsizeRatio: json['CapsizeRatio'],
              hullSpeed: json['HullSpeed'],
            );
          },
        ),
      );
      return dataListValue;
    } on DataException catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}
