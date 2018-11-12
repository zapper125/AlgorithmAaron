//
//  ViewController.swift
//  AlgorithmAaron
//
//  Created by Christiansen, Aaron on 10/23/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

public class AlgorithmViewController : UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    @IBOutlet weak var swiftImage: UIImageView!
    
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //I think this Addeds the steps as string and iss putting bullet points before the string
    public func formatAlgorithm() -> Void
    {
        let title : String = "How to create a swift project"
        
        let stepOne : String = "Create a new project"
        let stepTwo : String = "Add project name and other project info."
        let stepThree : String = "Organize the files into the respective folders. Ex. Rcsources, view ect"
        let stepFour : String = "Tell the project were thee info file is."
        let stepFive : String = "Create a new swift file  in the model file for the project."
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string : title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🥐"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range:
                NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
            
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}

