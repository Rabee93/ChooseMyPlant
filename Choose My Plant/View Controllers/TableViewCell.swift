//
//  TableViewCell.swift
//  Choose My Plant
//
//  Created by Matthew Lock on 8/25/20.
//  Copyright © 2020 Katie Jones. All rights reserved.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {


    
    @IBOutlet weak var plantImage: UIImageView!
    
    
    @IBOutlet weak var plantName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell(plantArray:Plant) {
        imageView?.sd_setImage(with: URL(string: "\(plantArray.image)"))
        //plantImage.text = String(plantArray.image)
        plantName.text = plantArray.name
        
    }

}
