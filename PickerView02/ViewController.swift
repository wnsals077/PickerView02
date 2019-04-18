//
//  ViewController.swift
//  PickerView02
//
//  Created by D7703_22 on 2019. 4. 18..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    */
    @IBOutlet weak var mylbl: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    var color = ["red", "blue", "yellow"]
    var animal = ["mouse", "tiger", "cow", "cat", "pig"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        
        
    }


    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2;
        
        
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if(component==0){
            return color.count
        } else {
            return animal.count;
        }
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if(component==0){
            return color[row]
        } else {
            return animal[row]
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if(component==0){
            mylbl.text = color[row]
        } else{
            mylbl.text = animal[row]
        }
    }
    
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat{
        return 100.0
    }
    
}

