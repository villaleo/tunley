//
//  TrackCellTableViewCell.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit
import Nuke

class TrackCellTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var artworkIView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with track: Track) {
        nameLabel.text = track.name
        artistLabel.text = track.artist
        Nuke.loadImage(with: track.artwork, into: artworkIView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
