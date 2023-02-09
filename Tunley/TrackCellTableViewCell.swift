//
//  TrackCellTableViewCell.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit

class TrackCellTableViewCell: UITableViewCell {
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var trackArtwork: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // TODO: Configure the cell UI when a Track model is passed in

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
