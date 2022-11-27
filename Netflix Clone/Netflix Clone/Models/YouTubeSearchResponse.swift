//
//  YouTubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Jose Garcia on 11/26/22.
//

import Foundation

struct YouTubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
