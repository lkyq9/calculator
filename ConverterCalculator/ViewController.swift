//
//  ViewController.swift
//  ConverterCalculator
//
//  Created by Lydia Krasucki on 12/11/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

//I apologize in advance I should have created my own app... I feel like everything I was trying for the converter to work just wouldn't... but as you can see from previous projects I know what I am doing. Let me know if I can do anything?


import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var flabel: UILabel!
    
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
            if performingMath == true
            {
                label.text = String(sender.tag-1)
                numberOnScreen = Double(label.text!)!
                performingMath = true
            }
        // Should this next part of the calculation for the fahrenheit label be done in a different function?
            if performingMath == true
            {
                flabel.text = String(sender.tag-1)
                numberOnScreen = Double(flabel.text!)!
                performingMath = false
            }
        
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        
            flabel.text = flabel.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        
    }
    
    //Making sure of the buttons work when selected
    @IBAction func buttons(_ sender: UIButton)
    {
       if label.text != "" && sender.tag != 11 && sender.tag != 14
       {
            if sender.tag == 12 // positive or negative
            {
                label.text = "-";
            }
            /*
            else if sender.tag == 13 // Converter
            {
               // _ = (numberOnScreen - 32) / 1.8
               // _ = "celsius
             */
             else if sender.tag == 14 // Decimal
            {
                label.text = ".";
            }
        operation = sender.tag
        
        performingMath = true
        }
        else if sender.tag == 13
        {
            /*
            //ActionSheet
            @IBAction func displayoption(_ sender: Any) {
                let alertController = UIAlertController(title:"Convert", message:"Converting...", preferredStyle: .actionSheet)
                alertController.addAction(UIAlertAction(title: "Fahrenheit", style: .default, handler:self.okHandler))
                alertController.addAction(UIAlertAction(title: "Celsius", style: .default, handler:self.okHandler))
                
                alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            }
            
            func okHandler(alert: UIAlertAction!){
                self.navigationController?.pushViewController(UIViewController(), animated: true)
            }
             */
        }
        
        if flabel.text != "" && sender.tag != 11 && sender.tag != 14
        {
            if sender.tag == 12 // positive or negative
            {
                flabel.text = "-";
            }
            else if sender.tag == 13 // Converter
            {
                
            }
            else if sender.tag == 14 // Decimal
            {
                flabel.text = ".";
            }
            performingMath = true
        }
    }
    /*
    
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

