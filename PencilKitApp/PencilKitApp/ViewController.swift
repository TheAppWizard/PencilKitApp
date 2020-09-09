//
//  ViewController.swift
//  PencilKitApp
//
//  Created by Shreyas Vilaschandra Bhike on 09/09/20.
//  Copyright © 2020 Shreyas Vilaschandra Bhike. All rights reserved.
//  It works with Iphones and Ipads

import UIKit
import PencilKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   //Call SetUpDrawing !!!
    override func viewDidAppear(_ animated: Bool) {
        setUpDrawing()
    }
    func setUpDrawing() {
        
        let canvasView = PKCanvasView(frame: self.view.bounds)
        guard let window = view.window ,let toolPicker = PKToolPicker.shared(for: window)
        //it is guard less statement
            else{return}
        //It is used for selection of tools
        //visible toolpicker
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
        view.addSubview(canvasView)
    
    }

}

