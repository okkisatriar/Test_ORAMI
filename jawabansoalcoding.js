var fizzBuzz = function(n) 
{
    for (i=1; i<=n; i++)
    {
        if (i % 15 === 0)
        {
            console.log("FizzBuzz");
        }
        else if (i % 3 === 0)
        {
            console.log("Fizz")
        }
        else if (i % 5 === 0)
        {
            console.log("Bizz")
        }
        else 
        {
            console.log(i)
        }
    }
};

fizzBuzz(15)


var string = "loveleetcode";
var result = '',
uniq = function (s)
{
    var result = -1;
    for(var i=0; i<string.length; i++)
    {
        var conts = 0;
        
        for(var j=0; j<string.length; j++)
        {
            if(s[i] === s[j])
            {
                conts+= 1;
            }
        }
        
        if(conts<2)
        {
            result = i;
            break;
        }
        
    }
    return result
}
console.log(uniq(string))