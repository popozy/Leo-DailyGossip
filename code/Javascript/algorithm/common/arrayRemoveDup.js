let arrRemoveDup = function (arr) {
    let res = new Set();
    for (let i = 0; i < arr.length -1; i++){
        res.add(arr[i]);
    }
    return Array.from(res);
}

let arrRemoveDupPlus = function (arr) {
    let res = new Array();
    let mapTmp = new Map();
    for (let i = 0; i < arr.length; i++){
        // console.log(mapTmp.get(arr[i]))
        if (mapTmp.has(arr[i])){
            continue;
        } else {
            mapTmp.set(arr[i], true);
            res.push(arr[i])
        }
    }
    return res
}

console.log(arrRemoveDupPlus([1,1,1,1,1,1,2,2,2,2,2,3,4,6,7,7,7,7]));

/*
注意点：
1. map 新建时 必须new Map()，像python一样dict = {}是不行的， Array的声明则[] new Array()都ok
 */