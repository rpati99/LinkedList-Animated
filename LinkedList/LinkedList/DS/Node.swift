//
//  Node.swift
//  LinkedList
//
//  Created by Rachit Prajapati on 24/11/20.
//

import Foundation

public class Node<T> {
    public var value: T
    public var next: Node?
    
    public init(value: T, next: Node? = nil ) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}


