//
//  RatingControl.swift
//  Foodtracker
//
//  Created by dohien on 6/7/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    private var ratingButtons = [UIButton]()
    var rating = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder){
        super.init(coder : coder)
        setupButtons()
    }
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed 👍")
    }
    private func setupButtons(){
        for _ in 0..<5{
            let button = UIButton()
            // tạo nút
            button.backgroundColor = UIColor.red
            button.translatesAutoresizingMaskIntoConstraints = false
            //tạo contraint
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            addArrangedSubview(button)
            //thêm nút
            ratingButtons.append(button)
        }
    }
}
