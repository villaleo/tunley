//
//  TrackCellTableViewCell.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit
import Nuke

class TrackCellTableViewCell: UITableViewCell {
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackArtist: UILabel!
    @IBOutlet weak var trackArtwork: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with track: Track) {
        trackName.text = track.name
        trackArtist.text = track.artist
        Nuke.loadImage(with: track.artwork, into: trackArtwork)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
