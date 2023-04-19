//
//  IteamTable.swift
//  Iteams
//
//  Created by Eman on 16/01/2023.
//

import UIKit
import CoreData
import Reachability
class IteamTable: UITableViewController {
    var tempitems : [Item]?
    var Itemm : [NSManagedObject]?
    var user = UserDefaults.standard
    var flage = UserDefaults.standard.bool(forKey: "flage")
    //var flage = UserDefaults.standard.bool(forKey: "online")
    var rechabile : Reachability?

    override func viewDidLoad() {
        super.viewDidLoad()
        Itemm = []
        tempitems=[]
        self.rechabile = Reachability.forInternetConnection()
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.center = self.view.center
        self.view.addSubview(indicator)
        indicator.startAnimating()
       
        if flage == false && rechabile!.isReachable() 
        {fetchResult{ myresult in
          //  print(myresult?.items[0].header ?? "No title")
          //  print(myresult?.items[0].header )
            
            self.tempitems = myresult?.items
            DispatchQueue.main.async {
                // self.myLabel.text = myresult?.items[0].header ?? "No title"
                var flage  = UserDefaults.standard.set(true, forKey: "flage")

                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let managedContext = appDelegate.persistentContainer.viewContext
                let entity = NSEntityDescription.entity(forEntityName: "Itemm", in: managedContext)
                
                let item1 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item1.setValue(myresult?.items[0].header, forKey: "header")
                item1.setValue(myresult?.items[0].gross, forKey: "gross")
                item1.setValue(myresult?.items[0].image, forKey: "image")
                item1.setValue(myresult?.items[0].rank, forKey: "rank")
                
                let item2 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item2.setValue(myresult?.items[1].header, forKey: "header")
                item2.setValue(myresult?.items[1].gross, forKey: "gross")
                item2.setValue(myresult?.items[1].image, forKey: "image")
                item2.setValue(myresult?.items[1].rank, forKey: "rank")
                
                
                
                
                
                let item3 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item3.setValue(myresult?.items[2].header, forKey: "header")
                item3.setValue(myresult?.items[2].gross, forKey: "gross")
                item3.setValue(myresult?.items[2].image, forKey: "image")
                item3.setValue(myresult?.items[2].rank, forKey: "rank")
                
                let item4 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item4.setValue(myresult?.items[3].header, forKey: "header")
                item4.setValue(myresult?.items[3].gross, forKey: "gross")
                item4.setValue(myresult?.items[3].image, forKey: "image")
                item4.setValue(myresult?.items[3].rank, forKey: "rank")
                
                let item5 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item5.setValue(myresult?.items[4].header, forKey: "header")
                item5.setValue(myresult?.items[4].gross, forKey: "gross")
                item5.setValue(myresult?.items[4].image, forKey: "image")
                item5.setValue(myresult?.items[4].rank, forKey: "rank")
                
                
                let item6 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item6.setValue(myresult?.items[5].header, forKey: "header")
                item6.setValue(myresult?.items[5].gross, forKey: "gross")
                item6.setValue(myresult?.items[5].image, forKey: "image")
                item6.setValue(myresult?.items[5].rank, forKey: "rank")
                
                
                let item7 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item7.setValue(myresult?.items[6].header, forKey: "header")
                item7.setValue(myresult?.items[6].gross, forKey: "gross")
                item7.setValue(myresult?.items[6].image, forKey: "image")
                item7.setValue(myresult?.items[6].rank, forKey: "rank")
                
                
                let item8 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item8.setValue(myresult?.items[7].header, forKey: "header")
                item8.setValue(myresult?.items[7].gross, forKey: "gross")
                item8.setValue(myresult?.items[7].image, forKey: "image")
                item8.setValue(myresult?.items[7].rank, forKey: "rank")
                
                
                let item9 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item9.setValue(myresult?.items[8].header, forKey: "header")
                item9.setValue(myresult?.items[8].gross, forKey: "gross")
                item9.setValue(myresult?.items[8].image, forKey: "image")
                item9.setValue(myresult?.items[8].rank, forKey: "rank")
                
                
                let item10 = NSManagedObject(entity: entity!, insertInto: managedContext)
                item10.setValue(myresult?.items[9].header, forKey: "header")
                item10.setValue(myresult?.items[9].gross, forKey: "gross")
                item10.setValue(myresult?.items[9].image, forKey: "image")
                item10.setValue(myresult?.items[9].rank, forKey: "rank")
                do{
                    try managedContext.save()
                }catch let error as NSError
                {
                    print(error)
                }
                
                
                
                
                
           
            
               // self.tableView.reloadData()
            }
            
            
        }}
        else {print ("Done")}
        indicator.stopAnimating()
    }
    override func viewWillAppear(_ animated: Bool) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Itemm")
        do
        {
            Itemm = try managedContext.fetch(fetchRequest)
            
        }
        catch let error as NSError {
            print(error)
        }
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      //  return tempitems!.count
        
       return Itemm!.count
        
        
//        if rechabile!.isReachable() {return tempitems!.count }
//        else {return Itemm!.count}
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
   //     var temp = tempitems![indexPath.row]
  //      cell.textLabel?.text = temp.header
       
        var temp = Itemm![indexPath.row]
        cell.textLabel?.text = temp.value(forKey: "header") as? String
        // Configure the cell...

        
//        if rechabile!.isReachable() { var temp = tempitems![indexPath.row]
//                cell.textLabel?.text = temp.header}
//        else {var temp = Itemm![indexPath.row]
//            cell.textLabel?.text = temp.value(forKey: "header") as? String}
        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var details = self.storyboard?.instantiateViewController(withIdentifier: "data")as!ViewController
//        if rechabile!.isReachable() {  details.detailedItemA = tempitems![indexPath.row]}
//        else {details.detailedItem =  Itemm![indexPath.row]}
     //   details.detailedItem = tempitems![indexPath.row]
        
        
        
        details.detailedItem =  Itemm![indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

