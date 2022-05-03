//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Asilcan Çetinkaya on 10.03.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var mySimpsons = [Simpson]()
    var choosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Object
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homorsimpson")!)
        let bard = Simpson(simpsonName: "Bard Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "bardsimpson")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "lisasimpson")!)
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "maggiesimpson")!)
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "HouseWife", simpsonImage: UIImage(named: "margesimpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(bard)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "DetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsVC" {
            let destinationVC  = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = choosenSimpson
            
        }
    }


}

