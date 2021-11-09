//
//  ActionExtensons.swift
//  LinkedList
//
//  Created by Rachit Prajapati on 10/11/21.
//

import Foundation
import UIKit

extension ViewController {
    @IBAction func pushBtn(_ sender: Any) {
        list.push(valueTextField.text!)
        n1Label.text = valueTextField.text ?? ""
        append.isEnabled = true
        append.setTitleColor(.white, for: .normal)
        UIView.animate(withDuration: 1.0) {
            self.node1.alpha = 1
            self.node1.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.node1.transform = CGAffineTransform(translationX: 100, y: 100)
        } completion: { (true ) in
            UIView.animate(withDuration: 1.0) {
                self.node1.transform = CGAffineTransform.identity
                self.node4Joint.alpha = 1
            }
        }
    }
    
    
    @IBAction func appendBtn(_ sender: Any) {
        insertMethodBtn.isEnabled = true
        insertMethodBtn.setTitleColor(.white, for: .normal)
        list.append(valueTextField.text!)
        n2Label.text = valueTextField.text!
        UIView.animate(withDuration: 1.0) {
            self.node2.alpha = 1
            self.node2.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.node2.transform = CGAffineTransform(translationX: 10, y: 153)
        } completion: { (true) in
            //travel please
            UIView.animate(withDuration: 1.0) {
                self.node2.transform = CGAffineTransform.identity
                self.node2Joint.alpha = 1
            }
        }
    }
    
    
    @IBAction func insertBtn(_ sender: Any) {
        popMethodBtn.isEnabled = true
        popMethodBtn.setTitleColor(.white, for: .normal)
        
        
        let reqNode = list.node(at: 0)!
        list.insert(value: valueTextField.text!, after: reqNode)
        n3Label.text = valueTextField.text!
        UIView.animate(withDuration: 3.0) {
            self.node1Constraint.constant = 3
            self.view.layoutIfNeeded()
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) {
                self.node3.alpha = 1
                self.node3.transform = CGAffineTransform(scaleX: 3.5, y: 3.5)
                self.node3.transform = CGAffineTransform(translationX: -50, y: 10)
            } completion: { (true) in
                UIView.animate(withDuration: 1.0) {
                    self.node3Joint.alpha = 1
                    self.node3.transform = CGAffineTransform.identity
                }
            }
        }
    }
    
    
    @IBAction func popBtn(_ sender: Any) {
        removelastMethodBtn.isEnabled = true
        removelastMethodBtn.setTitleColor(.white, for: .normal)
        
        list.pop()
        UIView.animate(withDuration: 2.0) {
            self.node1.alpha = 0
            self.node1.transform = CGAffineTransform(translationX: -40, y: -40)
        } completion: { (true) in
            UIView.animate(withDuration: 1.0) {
                self.node3Joint.alpha = 0
            }
        }
        
    }
    
    
    
    @IBAction func removeLstBtn(_ sender: Any) {
        removeAfterMethodBtn.isEnabled = true
        removeAfterMethodBtn.setTitleColor(.white, for: .normal)
        list.removeLast()
        UIView.animate(withDuration: 1.0) {
            self.node2Joint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 2.0) {
                self.node2.alpha = 0
                self.node2.transform = CGAffineTransform(translationX: 40, y: 40)
            }
        }
    }
    
    
    @IBAction func removeAftrBtn(_ sender: Any){
        let requiredNode = Node(value: valueTextField.text!)
        list.remove(after: requiredNode )
        
        UIView.animate(withDuration: 1.0) {
            self.node5Joint.alpha = 0
        } completion: { (true) in
            UIView.animate(withDuration: 2.0) {
                self.node5.alpha = 0
                self.node5.transform = CGAffineTransform(translationX: 40, y: 40)
            }
        }
    }
}
