//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by ROMAN VRONSKY on 12.07.2022.
//

import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    
    @IBOutlet weak var discriptionTextView: UITextView!
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
        self.nameLabel.text = "Имя"
        self.birthdayLabel.text = "Дата рождения"
        self.cityLabel.text = "Город"
    }
    
    private func setup(){
        let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
        }
    
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)? .first as? UIView else{
            return UIView()
        }
        return view
    }
    
    
}
