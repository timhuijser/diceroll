//
//  ViewController.swift
//  Dice Roll
//
//  Created by Tim on 11/06/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var result = 0;
    
    var diceToRoll: [Die] = []
    
    @IBOutlet weak var rollTotal: UILabel!
    @IBOutlet weak var rolledDiceView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rolledDiceView.dataSource = self
        rolledDiceView.register(UITableViewCell.self, forCellReuseIdentifier: "rolledDieCell")
    }
    
    @IBAction func onClickD4(_ sender: Any) {
        diceToRoll.append(d4());
        
        reloadTableView()
    }
    
    @IBAction func onClickD6(_ sender: Any) {
        diceToRoll.append(d6());
        
        reloadTableView()
    }
    
    @IBAction func onClickD8(_ sender: Any) {
        diceToRoll.append(d8());
        
        reloadTableView()
    }
    
    @IBAction func onClickD10(_ sender: Any) {
        diceToRoll.append(d10());
        
        reloadTableView()
    }
    
    @IBAction func onClickD12(_ sender: Any) {
        diceToRoll.append(d12());
        
        reloadTableView()
    }
    
    @IBAction func onClickD20(_ sender: Any) {
        diceToRoll.append(d20());
        
        reloadTableView()
    }
    
    @IBAction func onClickRoll(_ sender: Any) {
        result = 0;
        
        diceToRoll.forEach {die in
            result += die.roll()
        }
        
        rollTotal.text = String(result)
     
        reloadTableView()
    }
    
    @IBAction func onClickReset(_ sender: Any) {
        diceToRoll.removeAll(keepingCapacity: false)
        
        result = 0;
        rollTotal.text = String(result)
        
        reloadTableView()
    }
    
    func reloadTableView() {
        rolledDiceView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return diceToRoll.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: "rolledDieCell")
        
        let die = diceToRoll[indexPath.row]
        
        cell.textLabel?.text = die.getName()
        cell.detailTextLabel?.text = "\(die.getRolledEyes() ?? 0)"
        
        return cell
    }
}

