class Solution {
    solution(array: Array<number>): number {
        const newArray = array.filter((elem, index) => {
            return index == array.indexOf(elem);
        });

        return newArray.length;
    };
};
