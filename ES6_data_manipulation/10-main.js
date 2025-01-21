import updateUniqueItems from "./10-update_uniq_items.js";
import groceriesList from "./9-groceries_list.js";

const map = groceriesList();
console.log("Before update:");
console.log(map);

updateUniqueItems(map);

console.log("After update:");
console.log(map);
