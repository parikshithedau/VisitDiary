//
//  CreateTripTxtTableCell.swift
//  Visit Diary
//
//  Created by Parikshit.Hedau on 28/02/21.
//  Copyright © 2021 Parikshit.Hedau. All rights reserved.
//

import UIKit
import MaterialComponents

class CreateTripTxtTableCell: UITableViewCell {
    
    @IBOutlet weak var txtInfo: MDCTextField!
    
    var type: CreateTripViewController.CreateTripCell = .name
    
    var didChangeInfo: ((String?)->())? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
        
        setDesigns()
    }
    
    override func layoutSubviews() {
        
        setDesigns()
    }
    
    func setDesigns() {
        
        txtInfo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            txtInfo.topAnchor.constraint(equalTo: self.topAnchor, constant: 14),
            txtInfo.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -14),
            txtInfo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            txtInfo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
                
        txtInfo.placeholder = "Write trip name"
                
        txtInfo.textColor = .black
        
        let controller = MDCTextInputControllerOutlined(textInput: txtInfo)
        
        controller.activeColor = .black
        controller.normalColor = .lightGray
        controller.textInput?.textColor = .black
        controller.inlinePlaceholderColor = .lightGray
        controller.floatingPlaceholderActiveColor = .black
        controller.floatingPlaceholderNormalColor = .lightGray
        controller.characterCountMax = 20
        
        txtInfo.delegate = self
    }
    
    func setDetails(_ str: String?) {
        
        txtInfo.text = str
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

// MARK:- Textfield Delegate Methods
extension CreateTripTxtTableCell: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let str = (textField.text as NSString?)?.replacingCharacters(in: range, with: string)
        
        didChangeInfo?(str)
        
        return true
    }
}
