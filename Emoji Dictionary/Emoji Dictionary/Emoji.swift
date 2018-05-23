//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Pouria Delfanazari on 2018-05-22.
//  Copyright © 2018 Pouria Delfanazari. All rights reserved.
//


import Foundation

class Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static var ArchiveURL: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .allDomainsMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("emojis").appendingPathExtension("plist")
        return archiveURL
    }
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
    
    static func saveToFile(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmoji = try? propertyListEncoder.encode(emojis)
        try? encodedEmoji?.write(to: Emoji.ArchiveURL, options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Emoji]? {
        let propertyListDecoder = PropertyListDecoder()
        guard let retrievedEmojiData = try? Data(contentsOf: ArchiveURL), let decodedEmoji = try? propertyListDecoder.decode([Emoji].self, from: retrievedEmojiData) else { return nil }
        return decodedEmoji
    }
    
    static func loadSampleEmojis() -> [Emoji] {
        let emojis = [Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
                      Emoji(symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
                      Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
                      Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge. He is smiling, and eager to help.", usage: "person of authority"),
                      Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
                      Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
                      Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
                      Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
                      Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
                      Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
                      Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
                      Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
                      Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black and white checkered flag.", usage: "completion")]
        return emojis
    }
    
}
