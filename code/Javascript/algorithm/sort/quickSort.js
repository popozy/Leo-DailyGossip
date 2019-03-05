let quickSort = function (arr) {
    if (arr.length <= 1) {
        return arr
    }
    let pivotIndex = Math.floor(arr.length/2);
    let pivot = arr[pivotIndex];
    let left = [];
    let right = [];
    for(let i = 0; i < arr.length; i++) {
        if (i == pivotIndex)
            continue;
        if (arr[i] > pivot) {
            right.push(arr[i])
        } else {
            left.push(arr[i])
        }
    }

    return quickSort(left).concat([pivot], quickSort(right))
}

let arr = [10, 5,7,6,4,3,2,1]
let res = quickSort(arr)
console.log(res)


/*
核心思路:
1. 选一个合理的枢纽元：三数中值分割区中间的pivot，比pviot小的放在leftarr，大的放在rightarr，在递归去继续选枢纽元拆分leftarr，rightarr，直到拆的leftarr
rightarr里length=1，再触底返回
2. 时间复杂度 O(nlogn)，最差N^2
 */