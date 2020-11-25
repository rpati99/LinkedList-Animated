//
//  ViewController.swift
//  LinkedList
//
//  Created by Rachit Prajapati on 24/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var valueTextField:
        UITextField!
    
    //MARK: - All nodes
    
    @IBOutlet weak var node1: UIView!
    @IBOutlet weak var node1Joint: UIView!
    
    @IBOutlet weak var node2: UIView!
    @IBOutlet weak var node2Joint: UIView!
    
    @IBOutlet weak var node3: UIView!
    @IBOutlet weak var node3Joint: UIView!
    
    
    @IBOutlet weak var node4: UIView!
    @IBOutlet weak var node4Joint: UIView!
    
    @IBOutlet weak var node5: UIView!
    @IBOutlet weak var node5Joint: UIView!
    
    //MARK: - All btns
    @IBOutlet weak var append: UIButton!
    @IBOutlet weak var insertMethodBtn: UIButton!
    @IBOutlet weak var popMethodBtn: UIButton!
    @IBOutlet weak var removelastMethodBtn: UIButton!
    @IBOutlet weak var removeAfterMethodBtn: UIButton!
    
    //MARK: - Constraints
    @IBOutlet weak var node1Constraint: NSLayoutConstraint!
    
    //MARK: - Labels
    
    @IBOutlet weak var n3Label: UILabel!
    @IBOutlet weak var n2Label: UILabel!
    @IBOutlet weak var n5Label: UILabel!
    @IBOutlet weak var n1Label: UILabel!
    @IBOutlet weak var n4Label: UILabel!
    
     var list = LinkedList<String>()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        roundTheNodes()
        hideAll()
        disabledBtns()
        list.push(n4Label.text!)
        list.push(n5Label.text!)
 
        UIView.animate(withDuration: 0.5) {
            self.node4.alpha = 1
            self.node5.alpha = 1
            self.node4.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.node5.transform = CGAffineTransform(scaleX: 2, y: 2)
        } completion: { (true) in
            UIView.animate(withDuration: 0.5) {
                self.node5Joint.alpha = 1
                self.node4.transform = CGAffineTransform.identity
                self.node5.transform = CGAffineTransform.identity
            }
        }
        
    }
    
    
    // MARK: - Button methods
    
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
        
        print("DEBUG: \(list)")
        
        
        
        
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
    
    // MARK: - Helper methods
    
    private func roundTheNodes() {
        node1.layer.cornerRadius = node1.frame.width / 2
        node2.layer.cornerRadius = node2.frame.width / 2
        node3.layer.cornerRadius = node3.frame.width / 2
        node4.layer.cornerRadius = node4.frame.width / 2
        node5.layer.cornerRadius = node5.frame.width / 2
    }
    
    private func hideAll() {
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
    
    private func disabledBtns() {
        append.isEnabled = false
        
        insertMethodBtn.isEnabled = false
        popMethodBtn.isEnabled = false
        removelastMethodBtn.isEnabled = false
        removeAfterMethodBtn.isEnabled = false
    }
    
    
    
    
    
    
    
    
    
}


