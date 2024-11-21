// The Swift Programming Language
// https://docs.swift.org/swift-book

import Combine
import Foundation
import Swallow
import FoundationX
import SwallowMacrosClient

@Singleton
public final class DataStore: ObservableObject {
    public var id = UUID()
}

func test() {
    print(DataStore.shared)
}
