//
//  MealTableViewCell.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    var meal: Meal? {
        didSet {
            updateView()
        }
    }

    // MARK: - Outlets
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!

    // MARK: - Helper Methods
    func updateView() {
        guard let meal = meal else { return }
        nameLabel.text = meal.mealName
        idLabel.text = meal.mealID

        MealController.fetchImageForMeal(meal: meal) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let image):
                    self?.mealImageView.image = image
                case .failure(let error):
                    self?.mealImageView.image = UIImage(systemName: "photo.on.rectangle")
                    print(error)
                    print(error.localizedDescription)
                }
            }
        }
    }
}
