import '../models/android_version.dart';

class AndroidVersionController {
  static final List<dynamic> input1 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];

  static final List<dynamic> input2 = [
    {
      "0": {"id": 1, "title": "Gingerbread"},
      "1": {"id": 2, "title": "Jellybean"},
      "3": {"id": 3, "title": "KitKat"}
    },
    {
      "0": {"id": 8, "title": "Froyo"},
      "2": {"id": 9, "title": "Éclair"},
      "3": {"id": 10, "title": "Donut"}
    },
    [
      {"id": 4, "title": "Lollipop"},
      {"id": 5, "title": "Pie"},
      {"id": 6, "title": "Oreo"},
      {"id": 7, "title": "Nougat"}
    ]
  ];

  List<AndroidVersion> parseJson(List<dynamic> jsonInput) {
    List<AndroidVersion> androidVersions = [];

    for (var element in jsonInput) {
      if (element is Map) {
        element.forEach(
          (key, value) {
            if (value is Map) {
              androidVersions.add(
                AndroidVersion(id: value['id'], title: value['title']),
              );
            }
          },
        );
      } else if (element is List) {
        for (var item in element) {
          androidVersions.add(
            AndroidVersion(id: item['id'], title: item['title']),
          );
        }
      }
    }

    return androidVersions;
  }
}
