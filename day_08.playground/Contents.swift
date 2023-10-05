import Cocoa

typealias SqureTuple = ( width: Int, lengh: Int, area: Int, round: Int)

var width_01 = 10
var lengh_01 = 5
var area_01 = width_01 * lengh_01
var round_01 = (width_01 + lengh_01) * 2


var squre_01: SqureTuple = (width_01, lengh_01, area_01, round_01)


print(squre_01)


var squre_02: SqureTuple = (15, 10, 0 ,0)
print(squre_02)
squre_02.area = squre_02.width * squre_02.lengh;
squre_02.round = (squre_02.width + squre_02.lengh) * 2 ;
print(squre_02)
