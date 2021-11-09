//
//  AnimationExtensins.swift
//  LinkedList
//
//  Created by Rachit Prajapati on 10/11/21.
//

import Foundation
import UIKit

extension ViewController {
    
    // MARK: - Helper methods
    
    func roundTheNodes() {
        node1.layer.cornerRadius = node1.frame.width / 2
        node2.layer.cornerRadius = node2.frame.width / 2
        node3.layer.cornerRadius = node3.frame.width / 2
        node4.layer.cornerRadius = node4.frame.width / 2
        node5.layer.cornerRadius = node5.frame.width / 2
    }
    
    func hideAll() {
        node1.alpha = 0
        node1Joint.alpha = 0
        node2.alpha = 0
        node2Joint.alpha = 0
        node3.alpha = 0
        node3Joint.alpha = 0
        node4.alpha = 0
        node4Joint.alpha = 0
        node5.alpha = 0
        node5Joint.alpha = 0
    }
    
    func disabledBtns() {
        append.isEnabled = false
        insertMethodBtn.isEnabled = false
        popMethodBtn.isEnabled = false
        removelastMethodBtn.isEnabled = false
        removeAfterMethodBtn.isEnabled = false
    }
}
