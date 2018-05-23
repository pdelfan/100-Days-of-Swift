//
//  EmojiTableViewCell.swift
//  Emoji Dictionary
//
//  Created by Pouria Delfanazari on 2018-05-22.
//  Copyright © 2018 Pouria Delfanazari. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
