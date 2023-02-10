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
    var album: String
    var genre: String
    var releaseDate: Date
    var durationMillis: Int
}

extension Track {
    // MARK: Mock Data
    static var mockData: [Track] = [
        .init(
            name: "Tití Me Preguntó",
            artist: "Bad Bunny",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/3e/04/eb/3e04ebf6-370f-f59d-ec84-2c2643db92f1/196626945068.jpg/100x100bb.jpg"
            )!,
            album: "X 100PRE",
            genre: "Urbano latino",
            releaseDate: try! Date("2018-12-24T12:00:00Z", strategy: .iso8601),
            durationMillis: 300579
        ),
        .init(
            name: "Andrea",
            artist: "Bad Bunny & Buscabulla",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music112/v4/3e/04/eb/3e04ebf6-370f-f59d-ec84-2c2643db92f1/196626945068.jpg/100x100bb.jpg"
            )!,
            album: "Un Verano Sin Ti",
            genre: "Latin",
            releaseDate: try! Date("2022-05-06T12:00:00Z", strategy: .iso8601),
            durationMillis: 339612
        ),
        .init(
            name: "La Romana (feat. El Alfa)",
            artist: "Bad Bunny",
            artwork: .init(
                string: "https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/b9/1b/b4/b91bb44c-b108-fbc8-2cc8-b45c3f2ff42f/193483317984.jpg/100x100bb.jpg"
            )!,
            album: "X 100PRE",
            genre: "Urbano latino",
            releaseDate: try! Date("2018-12-24T12:00:00Z", strategy: .iso8601),
            durationMillis: 300579
        ),
        .init(
            name: "DÁKITI",
            artist: "Bad Bunny & Jhayco",
            artwork: .init(
                string: "https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/64/70/1c/64701cff-71ed-912f-ce62-71d409f5e6ad/195497640560.jpg/100x100bb.jpg"
            )!,
            album: "EL ÚLTIMO TOUR DEL MUNDO",
            genre: "Urbano latino",
            releaseDate: try! Date("2020-10-30T07:00:00Z", strategy: .iso8601),
            durationMillis: 205090
        ),
        .init(
            name: "Yo Perreo Sola",
            artist: "Bad Bunny",
            artwork: .init(
                string: "https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/8c/0f/81/8c0f81f2-9f10-5e3d-b9de-5961a73e8e52/195081078724.jpg/100x100bb.jpg"
            )!,
            album: "YHLQMDLG",
            genre: "Urban latino",
            releaseDate: try! Date("2020-02-29T12:00:00Z", strategy: .iso8601),
            durationMillis: 172127
        )
    ]
}

// MARK: Helpers
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
func formattedTrackDuration(with ms: Int) -> String {
    let (min, sec) = ms.quotientAndRemainder(dividingBy: 60 * 1000)
    let secsTrunc = sec / 1000
    return secsTrunc >= 10 ? "\(min):\(secsTrunc)" : "\(min):0\(secsTrunc)"
}
