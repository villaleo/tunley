//
//  Track.swift
//  Tunley
//
//  Created by Leonardo Villalobos on 2/9/23.
//

import Foundation

struct Track {
    var name: String
    var artist: String
    var artwork: URL
}

extension Track {
    static var mockData: [Track] = [
        .init(
            name: "Tití Me Preguntó",
            artist: "Bad Bunny",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/3e/04/eb/3e04ebf6-370f-f59d-ec84-2c2643db92f1/196626945068.jpg/100x100bb.jpg"
            )!
        ),
        .init(
            name: "Andrea",
            artist: "Bad Bunny & Buscabulla",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/3e/04/eb/3e04ebf6-370f-f59d-ec84-2c2643db92f1/196626945068.jpg/100x100bb.jpg"
            )!
        ),
        .init(
            name: "La Romana (feat. El Alfa)",
            artist: "Bad Bunny",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/b9/1b/b4/b91bb44c-b108-fbc8-2cc8-b45c3f2ff42f/193483317984.jpg/100x100bb.jpg"
            )!
        )
    ]
}

/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
func formattedTrackDuration(with ms: Int) -> String {
    let (min, sec) = ms.quotientAndRemainder(dividingBy: 60 * 1000)
    let secsTrunc = sec / 1000
    return secsTrunc >= 10 ? "\(min):\(secsTrunc)" : "\(min):0\(secsTrunc)"
}
