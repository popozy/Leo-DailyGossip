function reverseString(str) {
    let strNew = str.split("").reverse().join("");
    return strNew
}

let palindromeCheck = function (candi) {
    if (candi.length == 0){
        console.log("palindrome")
        return
    }
    let pivotIndex = Math.floor(candi.length/2);
    let left, right;
    if (candi.length % 2 == 1) {
        left = candi.slice(0, pivotIndex).toLowerCase();
        right = reverseString(candi.slice(pivotIndex+1)).toLowerCase();
        console.log("left:", left);
        console.log("right", right);
    } else {
     left = candi.slice(0, pivotIndex).toLowerCase();
     right = reverseString(candi.slice(pivotIndex)).toLowerCase();
     console.log("left:", left);
     console.log("right", right);
    }

    if (left == right){
        console.log("palindrome")
        return
    }
    console.log("not palindrome")
}

palindromeCheck("")