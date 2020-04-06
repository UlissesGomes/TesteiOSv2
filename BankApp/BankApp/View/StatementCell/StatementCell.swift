//
//  StatementCell.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
import UIKit

class StatementCell: UITableViewCell {
    
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var value: UILabel!
    
    override func awakeFromNib() {
        setupContainer()
    }
    
    func build(statement: Statements.StatementList.Response){
        title.text = statement.title
        desc.text = statement.desc
        date.text = statement.date
        value.text = statement.value
    }
    
    private func setupContainer() {
        container.layer.cornerRadius = 6
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 0.2
        container.layer.shadowOffset = .zero
    }
    
}
