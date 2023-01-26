import UIKit

/*===============================================
 while condition {
    code
    code that can change the condiion
 }
 
 repeat-while roop always doing first loop, then look for the condition
 repeat{
    code
    code that can change the condiion
 } while condition

 */


var num = 0
var sum = 0

while num <= 10 {
    print(num)
    sum += num
    num += 1
}
print(sum)
