// 数组拷贝
List copyWithList(List list) {
  List copyList = [];
  for (var item in list) {
    if (item is Map) {
      copyList.add(Map.from(item));
    } else if (item is List) {
      copyList.add(copyWithList(item));
    } else {
      copyList.add(item);
    }
  }
  return copyList;
}
