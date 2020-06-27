import "dart:html";

InputElement listInput;
UListElement list;
ButtonElement clearAll;

void main(){
  querySelector("#title").text = "To-Do List";
  listInput = querySelector("#listInput");
  list = querySelector("#list");
  clearAll = querySelector("#clearList");
  listInput.onChange.listen(addListItem);
  clearAll.onClick.listen(clearList);
}

void addListItem(Event e){
  var newItem = new LIElement();
  newItem.text = listInput.value;
  listInput.value = "";
  list.children.add(newItem);
}

void clearList(Event e){
  list.children.clear();
}
