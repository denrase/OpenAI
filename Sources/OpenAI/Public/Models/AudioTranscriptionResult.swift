//
//  AudioTranscriptionResult.swift
//  
//
//  Created by Sergii Kryvoblotskyi on 02/04/2023.
//

import Foundation

public struct AudioTranscriptionResult: Codable, Equatable {

    /// The transcribed text.
    public let text: String

    public let duration: TimeInterval?
    public let segments: [Segment]?
}

extension AudioTranscriptionResult {
    public struct Segment: Codable, Equatable {
        public let id: Int
        public let seek: TimeInterval
        public let start: TimeInterval
        public let end: TimeInterval
        public let text: String
        public let tokens: [Int]
        public let temperature: Double
    }
}
