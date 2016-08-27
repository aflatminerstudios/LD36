///scrCheckList(bounceList)

var bounceList = argument0;

if (ds_list_empty(bounceList)) {
  return true;
}

var size = ds_list_size(bounceList);
var last = ds_list_find_value(bounceList, size -1);

//If there is a stop beam object at the end of the list
if (last.object_index == "Stop") {
  return false;
}

var matched;

//Check for repeated "sub lists"
//Only check for lists of length MIN_SUBLENGTH or longer
for (var subLength = MIN_SUBLENGTH; subLength < size / 2; ++subLength) {
  //Check each possible list for repeats
  for (var i = 0; i < (size - (subLength * 2)); ++i) {
    for (var j = i + subLength; j < (size - subLength); ++j) {
      matched = true;
      //Check each member of the sublist
      for (var k = 0; k < subLength; ++k) {
        if (bounceList[| i + k] != bounceList[| j + k]) {
          matched = false;
          break;
        } 
      }
      if (matched) {
        ds_list_add(bounceList, "Stop");
        return false;
      }
    }
  }
}


return true;
