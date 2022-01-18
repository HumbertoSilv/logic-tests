class ArraySolution {
    public solution(array: Array<number>): number {
        let value = 0;

        for(let i = 0; i < array.length; i++){
            value = array[i];
            array.splice(i, 1);

            array.forEach((element, ind) => {
                if(value == element) {array.splice(ind, 1)};
            });
        };
        return array[0];
    };
};
