// In Dart Programming, Maps are dictionary-like date types that exist in key-value form (known as lock-key).

// There is no restriction on the type of data that goes in a map data type.

// Maps are vary flexible and can mutate their size based on the Requirement.

// It is  important to note that all locks (keys) need to the unique the map data type.

void main() {
  var mapName = {
    "Name": "value1",
    "YearOfExperience": 2,
    "Avg.Rating": 3.5, 
    "CanLocateToOffice": true,
  };

  mapName['Name'] = "Haseeb";

  // var mapName = {};

  mapName['Name'] = "Saad";
  mapName['YearOfExperience'] = 3;
  mapName['Avg.Rating'] = 4.5;
  mapName['CanLocateToOffice'] = true;
  // print(mapName);
  // print(mapName);

  // print(mapName.isEmpty);
  // print(mapName.isNotEmpty);
  // print(mapName.length);
  // print(mapName.keys);
  // print(mapName.values);
  // print(mapName.containsKey('Name'));
  // print(mapName.containsValue(false));
  // print(mapName.remove('CanLocateToOffice'));
  // print(mapName);
}
