//
//  TrackDetailsViewController.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = track.name
    }
}
