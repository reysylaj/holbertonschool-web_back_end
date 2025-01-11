export default function appendToEachArrayValue(array, appendString) {
    const myValues = [];
    for (let idx of array) {
        myValues.push(appendString + array[idx])
    }
    return myValues;
}