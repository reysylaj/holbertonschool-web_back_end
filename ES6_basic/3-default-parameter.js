export default function getSumOfHoods(initialNumber, expansion1989 = 89, expansion2019 = 19) {
    return initialNumber = initialNumber + (expansion1989 ? expansion1989 : 89) + (expansion2019 ? expansion2019 : 19)
}