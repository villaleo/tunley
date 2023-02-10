//
//  ViewController.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tracksTableView: UITableView!
    var tracks: [Track] = []
    
    // MARK: Impl UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tracksTableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath)
            as! TrackCellTableViewCell
        cell.configure(with: tracks[indexPath.row])
        return cell
    }
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        tracksTableView.dataSource = self
        tracks = Track.mockData
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let index = tracksTableView.indexPathForSelectedRow {
            tracksTableView.deselectRow(at: index, animated: true)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
            let index = tracksTableView.indexPath(for: cell),
            let details = segue.destination as? TrackDetailsViewController
        {
            let track = tracks[index.row]
            details.track = track
        }
    }
}
