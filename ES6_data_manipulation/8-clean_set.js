export default function cleanSet(set, startString) {
    if (typeof startString !== 'string') {
        return '';
    }

    if (startString === '') {
        return [...set].join('-');
    }

    const result = [];

    for (let item of set) {
        if (typeof item === 'string' && item.startsWith(startString)) {
            result.push(item.slice(startString.length));
        }
    }

    return result.join('-');
}
