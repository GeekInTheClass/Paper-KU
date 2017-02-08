//: Playground - noun: a place where people can play
import SWXMLHash
import Alamofire
import UIKit

class PaperVO{
    var title : String?
    var Auther : String?
}

var list:[PaperVO] = []








let url = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00na481a&version=1.0&type=T&keyword=smartphone&rsnum=1"

let apiURI : URL! = URL(string: url)

// ② REST API를 호출
let apidata = try! Data(contentsOf: apiURI)
let xml = SWXMLHash.parse(apidata)

do{
    
    for row in 0...9 {
        let r = xml["record"]["metadata"][row]
        let pvo = PaperVO()
        pvo.title = r["riss.title"].element?.text
        pvo.Auther = r["riss.author"].element?.text
        list.append(pvo)


    }
    
}
catch{
    NSLog("Parse Error!!")
    
    
}

print(list[0].Auther)



