//
//  PetTableViewCell.swift
//  Test
//
//  Created by Sergei Volotka on 29.07.2022.
//

import UIKit

class PetTableViewCell: UITableViewCell {

    @IBOutlet var petName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
