//: Playground - noun: a place where people can play
// see here: https://medium.com/@vhart/read-write-and-delete-file-handling-from-xcode-playground-abf57e445b4


import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

// var str = "Hello, playground"

// Create a FileHandle instance

// func readFile (file: String) {
    let testFileUrl = playgroundSharedDataDirectory.appendingPathComponent("mytest.txt")
    
    var fileContents: String?
    do {
        fileContents = try String(contentsOf:testFileUrl )
    } catch {
        print ("Error reading content\(error)")
    }
    
// }

// write file
let newFileUrl = playgroundSharedDataDirectory.appendingPathComponent("newfile.txt")
let textToWrite =
"""
This is just a test text written to a file
"""

do {
    try textToWrite.write(to: newFileUrl, atomically: true, encoding: .utf8)
} catch {
    print ("Error writing: \(error)")
}
let proofOfWrite = try? String(contentsOf: newFileUrl)

// MARK: Updating a file in a much more efficient way
let monkeyLine = "\nAdding a 🐵 to the end of the file via FileHandle"

if let fileUpdater = try? FileHandle(forUpdating: newFileUrl) {
    fileUpdater.seekToEndOfFile()
    fileUpdater.write(monkeyLine.data(using: .utf8)!)
    fileUpdater.closeFile()
}

let contentsAfterUpdatingViaFileHandle = try? String(contentsOf: newFileUrl)



