// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 22/03/2022.
//  All code (c) 2022 - present day, Elegant Chaos.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
import XCTestExtensions

@testable import SwiftCreationEngineCommon

final class SwiftCreationKitCommonTests: XCTestCase {
    func testEncoding() throws {
        let flags: PartFlags = [.head, .body]
        let data = try JSONEncoder().encode(flags)
        let string = String(data: data, encoding: .utf8)
        XCTAssertEqual(string, """
            ["head","body"]
            """
        )
    }
    
    func testFlagsToInt() throws {
        let flags: PartFlags = [.head, .body]
        XCTAssertEqual(flags.rawValue, 5)
    }

    func testIntToFlags() throws {
        XCTAssertEqual(PartFlags(rawValue: 12), [.body, .hands])
    }
    
    func testFlagsToSlot() throws {
        XCTAssertEqual(PartFlags.Options.body.slot, .body)
    }
}
