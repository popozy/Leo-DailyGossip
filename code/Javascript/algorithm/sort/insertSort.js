let bubbleSort = function (arr, reverse=true) {
    if (reverse) {
        for(let i = 1; i < arr.length; i++){
            let temp = arr[i];
            let j;
            for (j = i - 1; j >= 0; j--){
                if(temp < arr[j]){
                    arr[j+1] = arr[j]
                    continue
                }
                break
            }
            arr[j+1] = temp
        }
    } else {
        for(let i = 1; i < arr.length; i++){
            let temp = arr[i];
            let j;
            for (j = i - 1; j >= 0; j--){
                if(temp > arr[j]){
                    arr[j+1] = arr[j];
                    continue
                }
                break
            }
            arr[j+1] = temp;
        }
    }
    return arr
}

let arr = [6,5,4,1,2,3,8]
let res = bubbleSort(arr, false)
console.log(res)

/*
插入排序思路：
把第N个元素遍历[0, N-1]的元素，然后插入
注意点：
内层for循环从j = i-1递减，直到0，按照升降序比大小。把不符合条件的j位置元素往j+1挪
内层循环结束后，将第N个元素更新到j不符合条件break出内层循环的位置的后一位
 */

