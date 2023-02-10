

class HomeController extends ChangeNotifier {
  searchCategory(String name) async {
    var res = await firestore.collection("category").orderBy("name").startAt(
        [name.toLowerCase()]).endAt(["${name.toLowerCase()}\uf8ff"]).get();
    listOfCategory.clear();
    listOfCategoryDocId.clear();
    for (var element in res.docs) {
      listOfCategory.add(CategoryModel.fromJson(element.data()));
      listOfCategoryDocId.add(element.id);
    }
    notifyListeners();
  }
}