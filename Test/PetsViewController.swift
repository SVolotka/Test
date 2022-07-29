//
//  PetsViewController.swift
//  Test
//
//  Created by Sergei Volotka on 29.07.2022.
//

import UIKit

class PetsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
   
        
    var petList = ModelPet()
    let cellID = "PetTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}
extension PetsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = petList.pets[section]
    return section.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return petList.pets.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
        return "Собаки🐶"
        } else {
        return "Кошки🐱"
    }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PetTableViewCell
        let section = petList.pets[indexPath.section]
        let pet = section[indexPath.row]
        
        cell?.petName.text = pet.name
       
    
    
    return cell!
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        let section = petList.pets[indexPath.section]
        let pet = section[indexPath.row]
        
        let alert = UIAlertController(title: pet.name, message: "", preferredStyle: .actionSheet)
        
       // alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        //self.present(alert, animated: true, completion: nil)
        
        //let alert = UIAlertController
        
        let profileAction = UIAlertAction(title: "Профиль", style: .default) {
            (alert) in
        }
        
        let delateAction = UIAlertAction(title: "Удалить профиль", style: .destructive) {
            (alert) in
            self.petList.pets[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData()
    }
      
        alert.addAction(profileAction)
        alert.addAction(delateAction)
        
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
}

}
