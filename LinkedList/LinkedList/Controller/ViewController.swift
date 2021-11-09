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
        initiateUI()

    }
    
    
    func initiateUI() {
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
}
