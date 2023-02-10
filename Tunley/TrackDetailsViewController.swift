//
//  TrackDetailsViewController.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit
import Nuke

class TrackDetailsViewController: UIViewController {
    @IBOutlet weak var artworkIView: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = track.name
        Nuke.loadImage(with: track.artwork, into: artworkIView)
        artistLabel.text = track.artist
        albumLabel.text = track.album
        genreLabel.text = track.genre
        releaseDateLabel.text = track.releaseDate.formatted()
        durationLabel.text = formattedTrackDuration(with: track.durationMillis)
    }
}
