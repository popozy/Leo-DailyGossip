let bubbleSort = function (arr) {
    let swap;
    let i;
    let j;
    for (i = arr.length - 1; i >= 0; i--){
        for (j = 0; j < i; j++){
            if (arr[j] > arr[j+1]){
                swap = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;
            }
        }
    }
    return arr
}

let arr = [5,7,4,3,2,1]
let res = bubbleSort(arr)
console.log(res)


/*
核心思路:
1. 遍历数组，比较相邻两个元素大小，并按升降序排列-->一趟走完，一定是最大的或者最小的在队列尾了
2. 继续遍历剩下N-1个元素，继续把第二大（小）的值冒泡到第N-1个的位置
3. 冒泡核心：通过相邻元素比较把当前队列的极值冒泡出来，但是剩下的元素仍旧是乱序的，因为在这一趟冒泡之前极值两边的元素是没办法没一直移动到相邻位置去比较的
因为他们都小于中间的那个极值
4. 时间复杂度：时间复杂度：O(n^2)
 */