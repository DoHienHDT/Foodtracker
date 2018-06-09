//
//  Meal.swift
//  Foodtracker
//
//  Created by dohien on 6/8/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
class Meal  {
    var name: String
    var photo: UIImage?
    var rating: Int
    init?(name: String, photo: UIImage? , rating: Int) {
        // tên k đc để trống
        guard !name.isEmpty else {
            return nil
        }
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
