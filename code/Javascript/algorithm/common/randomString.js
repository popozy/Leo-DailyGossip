let randomFactory = function (n) {
    let template = "abcdefghijklmnopqrstuvwxyz0123456789";
    let res = "";
    for(let i = 1; i <= n; i++){
        res += template.charAt(Math.round(template.length * Math.random()))
    }
    return res
};

console.log(randomFactory(10));