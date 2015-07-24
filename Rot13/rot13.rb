def rot13(secret_messages)
    arrM = secret_messages.split("")
    result = []
    tempNum = 0
    arrM.each do |i|
        if(i.ord>=65 && i.ord<=90)
            tempNum = i.ord + 13
            tempNum = (tempNum - 90) + 64 if(tempNum>90)
            result.push(tempNum.chr)
        elsif(i.ord>=97 && i.ord<=122)
            tempNum = i.ord + 13
            tempNum = (tempNum - 122) + 96 if(tempNum>122)
            result.push(tempNum.chr)
        else
            result.push(i)
        end
    end
    result.join("")
end
