let selectSort = function (arr) {
   let minIndex;
   let swap;
   for (let i = 0; i < arr.length; i++){
       minIndex = i;
       for (let j = i; j < arr.length; j++){
           if (arr[minIndex] > arr[j]){
               minIndex = j
           }
       }
       if (minIndex != i){
           swap = arr[minIndex]
           arr[minIndex] = arr[i]
           arr[i] = swap
       }
   }
   return arr
}

let arr = [10, 5,7,6,4,3,2,1]
let res = selectSort(arr)
console.log(res)


/*
核心思路:
1. 遍历数组，拿到最小的一个，和第一个位置交换位置
2. 继续遍历剩下N-1个元素，把第N-1个中最小的元素和这一趟排序的第一个交换位置
3. 冒泡核心：挑出来没排序的中最小的，交换位置（放到排好的队伍中去）
4. 时间复杂度：时间复杂度：O(n^2)
 */