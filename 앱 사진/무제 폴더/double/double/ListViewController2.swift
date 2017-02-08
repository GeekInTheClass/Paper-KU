//
//  ListViewController2.swift
//  double
//
//  Created by cscoi007 on 2017. 2. 8..
//  Copyright © 2017년 cscoi007. All rights reserved.
//



import UIKit
import SWXMLHash

class ListViewController: UITableViewController {
    
    var page = 1
    
    lazy var list : [PaperVO] = {
        var datalist = [PaperVO]()
        return datalist
    }()
    
    override func viewDidLoad() {
        
        self.callPaperAPI()
        
    }
    
    
    func callPaperAPI(){
        let url = "http://www.riss.kr/openApi?key=70aaa00tte60abr00aaa00ro00na481a&version=1.0&type=T&keyword=smartphone&rsnum=\(self.page)"
        let apiURI : URL! = URL(string: url)
        
        
        let apidata = try! Data(contentsOf: apiURI)
        let xml = SWXMLHash.parse(apidata)
        do{
            
            for row in 0...9 {
                let r = xml["record"]["metadata"][row]
                let pvo = PaperVO()
                pvo.title = r["riss.title"].element?.text
                pvo.author = r["riss.author"].element?.text
                
                self.list.append(pvo)
                
            }
            
        }
        catch{
            NSLog("Parse Error!!")
            
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.list.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.list[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! PaperCell
        
        cell.Title?.text = row.title
        cell.Author?.text = row.author
        
        
        // Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
    }
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
