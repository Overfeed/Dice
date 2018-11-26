//
//  String+Random.swift
//  Dice
//
//  Copyright (c) 2018 Jason Nam (https://jasonnam.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

// MARK: - Random
public extension String {

    /// Random string with specific length.
    ///
    /// - Parameters:
    ///   - length: Length of string.
    ///   - characterSet: Character set to use. Default value is English alphanumerics.
    /// - Returns: Random string.
    public static func random(length: Int,
                              characterSet: CharacterSet = .englishAlphanumerics) -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return random(length: length, characterSet: characterSet, randomNumberGenerator: &randomNumberGenerator)
    }

    /// Random string with specific length.
    ///
    /// - Parameters:
    ///   - length: Length of string.
    ///   - characterSet: Character set to use. Default value is English alphanumerics.
    ///   - randomNumberGenerator: Random number generator.
    /// - Returns: Random string.
    public static func random<R: RandomNumberGenerator>(length: Int,
                                                        characterSet: CharacterSet = .englishAlphanumerics,
                                                        randomNumberGenerator: inout R) -> String {
        let characters = characterSet.characters()
        let range = 0..<length
        return .init(range.compactMap { _ in characters.randomElement(using: &randomNumberGenerator) })
    }

    /// Random string with length in range.
    ///
    /// - Parameters:
    ///   - lengthInRange: Random length in range. Default value is minimum 10 to maximum 99.
    ///   - characterSet: Character set to use. Default value is English alphanumerics.
    /// - Returns: Random string.
    public static func random(length lengthInRange: ClosedRange<Int> = 10...99,
                              characterSet: CharacterSet = .englishAlphanumerics) -> String {
        var randomNumberGenerator = SystemRandomNumberGenerator()
        return random(length: lengthInRange, characterSet: characterSet, randomNumberGenerator: &randomNumberGenerator)
    }

    /// Random string with length in range.
    ///
    /// - Parameters:
    ///   - lengthInRange: Random length in range.
    ///   - characterSet: Character set to use. Default value is English alphanumerics.
    ///   - randomNumberGenerator: Random number generator.
    /// - Returns: Random string.
    public static func random<R: RandomNumberGenerator>(length lengthInRange: ClosedRange<Int>,
                                                        characterSet: CharacterSet = .englishAlphanumerics,
                                                        randomNumberGenerator: inout R) -> String {
        let characters = characterSet.characters()
        let range = 0..<Int.random(in: lengthInRange)
        return .init(range.compactMap { _ in characters.randomElement(using: &randomNumberGenerator) })
    }
}
