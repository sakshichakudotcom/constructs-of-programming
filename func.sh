
#!/bin/bash
function addTwoNums(){
echo $(( $!+$2 ))
}

echo "$( addTwoNums 3 5)"

echo "$( addTwoNums 3 50)"

echo "$( addTwoNums 30 5)"

