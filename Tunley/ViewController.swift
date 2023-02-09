//
//  ViewController.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    var tracks: [Track] = []
    
    // TODO: Pt 1 - Add table view outlet

    override func viewDidLoad() {
        super.viewDidLoad()
        tracks = Track.mockData
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
    }
    
    // TODO: Pt 1 - Add table view data source methods
}
