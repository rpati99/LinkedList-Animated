//
//  LinkedList.swift
//  LinkedList
//
//  Created by Rachit Prajapati on 24/11/20.
//

import Foundation

public struct LinkedList<T> {
    public var head: Node<T>?
    public var tail: Node<T>?
    
    public init() { }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let headNode = head else { return "underflow" }
        return String(describing: headNode)
    }
}

// MARK: - Insertion methods

extension LinkedList {
    
    public mutating func push(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: T) {
        guard !isEmpty else {
            push(value)
            return
            
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
    }
    
    public mutating func node(at index: Int) -> Node<T>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(value: T, after node: Node<T>) -> Node<T> {
        guard  tail !== node else  {
            append(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        return node.next!
    }    
}

//MARK: - Removal methods

extension LinkedList {
    
    @discardableResult
    public mutating func pop() -> T? {
        
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    @discardableResult
    public mutating func removeLast() -> T? {
        guard let head = head else { return nil }
        guard head.next != nil else {
            return pop()
            
        }
        var previous = head
        var current = head
        
        while let nextNode = current.next {
            previous = current
            current = nextNode
        }
        
        previous.next = nil //basically current node, just a reference
        tail = previous
        return current.value
    }
    
    @discardableResult
    public mutating func remove(after node : Node<T>) -> T? {
        
        defer {
            if node.next === tail {
                tail = node
            }
            
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
    
}


