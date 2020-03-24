//
//  ButtonsViewController.swift
//  ImagesAndButtonsSwift
//
//  Created by Field Employee on 3/24/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ButtonsViewController: UITableViewController {
    
    let cellHeight: Int = 180
    let imgRes = ["Lain", "LainBear", "Navi", "OtherLain"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Did load")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(cellHeight)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "buttons_cell", for: indexPath)
        
        let imgSelected = imgRes.randomElement()
        
        let btn = UIButton(type: .custom)
        btn.backgroundColor = getRandomColor()
        btn.setTitle(imgSelected, for: .normal)
        btn.frame = CGRect(x: 8, y: 8, width: Int(self.view.frame.width) - 16, height: cellHeight - 18)
        btn.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        btn.tag = indexPath.row
        
        let image = UIImage(imageLiteralResourceName: imgSelected!) as UIImage?
        
        btn.setImage(image, for: .normal)
        btn.imageEdgeInsets = UIEdgeInsets(top: 25,left: 25,bottom: 25,right: 25)
        btn.imageView?.contentMode = .scaleAspectFit

        cell.contentView.addSubview(btn)
        return cell
    }
    
    //Button Action is
    @objc func buttonPressed(sender:UIButton!) {
       let buttonRow = sender.tag
        
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World. Selected: \(buttonRow)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    func getRandomColor() -> UIColor {
         //Generate between 0 to 1
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
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
