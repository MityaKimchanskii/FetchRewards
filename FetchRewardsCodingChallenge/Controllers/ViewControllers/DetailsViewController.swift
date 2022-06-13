//
//  DetailsViewController.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: - Properties
    var mealID: String?
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var instractionsLabel: UILabel!
    @IBOutlet weak var ingredient1Label: UILabel!
    @IBOutlet weak var ingredient2Label: UILabel!
    @IBOutlet weak var ingredient3Label: UILabel!
    @IBOutlet weak var ingredient4Label: UILabel!
    @IBOutlet weak var ingredient5Label: UILabel!
    @IBOutlet weak var ingredient6Label: UILabel!
    @IBOutlet weak var ingredient7Label: UILabel!
    @IBOutlet weak var ingredient8Label: UILabel!
    @IBOutlet weak var ingredient9Label: UILabel!
    @IBOutlet weak var ingredient10Label: UILabel!
    @IBOutlet weak var ingredient11Label: UILabel!
    @IBOutlet weak var ingredient12Label: UILabel!
    @IBOutlet weak var ingredient13Label: UILabel!
    @IBOutlet weak var ingredient14Label: UILabel!
    @IBOutlet weak var ingredient15Label: UILabel!
    @IBOutlet weak var ingredient16Label: UILabel!
    @IBOutlet weak var ingredient17Label: UILabel!
    @IBOutlet weak var ingredient18Label: UILabel!
    @IBOutlet weak var ingredient19Label: UILabel!
    @IBOutlet weak var ingredient20Label: UILabel!
    @IBOutlet weak var measure1Label: UILabel!
    @IBOutlet weak var measure2Label: UILabel!
    @IBOutlet weak var measure3Label: UILabel!
    @IBOutlet weak var measure4Label: UILabel!
    @IBOutlet weak var measure5Label: UILabel!
    @IBOutlet weak var measure6Label: UILabel!
    @IBOutlet weak var measure7Label: UILabel!
    @IBOutlet weak var measure8Label: UILabel!
    @IBOutlet weak var measure9Label: UILabel!
    @IBOutlet weak var measure10Label: UILabel!
    @IBOutlet weak var measure11Label: UILabel!
    @IBOutlet weak var measure12Label: UILabel!
    @IBOutlet weak var measure13Label: UILabel!
    @IBOutlet weak var measure14Label: UILabel!
    @IBOutlet weak var measure15Label: UILabel!
    @IBOutlet weak var measure16Label: UILabel!
    @IBOutlet weak var measure17Label: UILabel!
    @IBOutlet weak var measure18Label: UILabel!
    @IBOutlet weak var measure19Label: UILabel!
    @IBOutlet weak var measure20Label: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMealData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        whiteLabelColor()
    }
    
    // MARK: - Helper Methods
    func fetchMealData() {
        guard let mealID = mealID else { return }
        MealController.fetchMealDetails(with: mealID) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self?.updateView(with: data)
                case .failure(let error):
                    print(error)
                    print(error.localizedDescription)
                }
            }
        }
    }

    func updateView(with data: Data) {
        blackLabelColor(with: data)
        nameLabel.text = data.mealName
        instractionsLabel.text = data.instructions
        ingredient1Label.text = data.ingredient1
        ingredient2Label.text = data.ingredient2
        ingredient3Label.text = data.ingredient3
        ingredient4Label.text = data.ingredient4
        ingredient5Label.text = data.ingredient5
        ingredient6Label.text = data.ingredient6
        ingredient7Label.text = data.ingredient7
        ingredient8Label.text = data.ingredient8
        ingredient9Label.text = data.ingredient9
        ingredient10Label.text = data.ingredient10
        ingredient11Label.text = data.ingredient11
        ingredient12Label.text = data.ingredient12
        ingredient13Label.text = data.ingredient13
        ingredient14Label.text = data.ingredient14
        ingredient15Label.text = data.ingredient15
        ingredient16Label.text = data.ingredient16
        ingredient17Label.text = data.ingredient17
        ingredient18Label.text = data.ingredient18
        ingredient19Label.text = data.ingredient19
        ingredient20Label.text = data.ingredient20
        measure1Label.text = data.measure1
        measure2Label.text = data.measure2
        measure3Label.text = data.measure3
        measure4Label.text = data.measure4
        measure5Label.text = data.measure5
        measure6Label.text = data.measure6
        measure7Label.text = data.measure7
        measure8Label.text = data.measure8
        measure9Label.text = data.measure9
        measure10Label.text = data.measure10
        measure11Label.text = data.measure11
        measure12Label.text = data.measure12
        measure13Label.text = data.measure13
        measure14Label.text = data.measure14
        measure15Label.text = data.measure15
        measure16Label.text = data.measure16
        measure17Label.text = data.measure17
        measure18Label.text = data.measure18
        measure19Label.text = data.measure19
        measure20Label.text = data.measure20
    }
}

// MARK: - Extensions
extension DetailsViewController {
    func blackLabelColor(with data: Data?) {
        if data != nil {
            nameLabel.textColor = .black
            instractionsLabel.textColor = .black
            ingredient1Label.textColor = .black
            ingredient2Label.textColor = .black
            ingredient3Label.textColor = .black
            ingredient4Label.textColor = .black
            ingredient5Label.textColor = .black
            ingredient6Label.textColor = .black
            ingredient7Label.textColor = .black
            ingredient8Label.textColor = .black
            ingredient9Label.textColor = .black
            ingredient10Label.textColor = .black
            ingredient11Label.textColor = .black
            ingredient12Label.textColor = .black
            ingredient13Label.textColor = .black
            ingredient14Label.textColor = .black
            ingredient15Label.textColor = .black
            ingredient16Label.textColor = .black
            ingredient17Label.textColor = .black
            ingredient18Label.textColor = .black
            ingredient19Label.textColor = .black
            ingredient20Label.textColor = .black
            measure1Label.textColor = .black
            measure2Label.textColor = .black
            measure3Label.textColor = .black
            measure4Label.textColor = .black
            measure5Label.textColor = .black
            measure6Label.textColor = .black
            measure7Label.textColor = .black
            measure8Label.textColor = .black
            measure9Label.textColor = .black
            measure10Label.textColor = .black
            measure11Label.textColor = .black
            measure12Label.textColor = .black
            measure13Label.textColor = .black
            measure14Label.textColor = .black
            measure15Label.textColor = .black
            measure16Label.textColor = .black
            measure17Label.textColor = .black
            measure18Label.textColor = .black
            measure19Label.textColor = .black
            measure20Label.textColor = .black
        }
    }

    func whiteLabelColor() {
        nameLabel.textColor = .white
        instractionsLabel.textColor = .white
        ingredient1Label.textColor = .white
        ingredient2Label.textColor = .white
        ingredient3Label.textColor = .white
        ingredient4Label.textColor = .white
        ingredient5Label.textColor = .white
        ingredient6Label.textColor = .white
        ingredient7Label.textColor = .white
        ingredient8Label.textColor = .white
        ingredient9Label.textColor = .white
        ingredient10Label.textColor = .white
        ingredient11Label.textColor = .white
        ingredient12Label.textColor = .white
        ingredient13Label.textColor = .white
        ingredient14Label.textColor = .white
        ingredient15Label.textColor = .white
        ingredient16Label.textColor = .white
        ingredient17Label.textColor = .white
        ingredient18Label.textColor = .white
        ingredient19Label.textColor = .white
        ingredient20Label.textColor = .white
        measure1Label.textColor = .white
        measure2Label.textColor = .white
        measure3Label.textColor = .white
        measure4Label.textColor = .white
        measure5Label.textColor = .white
        measure6Label.textColor = .white
        measure7Label.textColor = .white
        measure8Label.textColor = .white
        measure9Label.textColor = .white
        measure10Label.textColor = .white
        measure11Label.textColor = .white
        measure12Label.textColor = .white
        measure13Label.textColor = .white
        measure14Label.textColor = .white
        measure15Label.textColor = .white
        measure16Label.textColor = .white
        measure17Label.textColor = .white
        measure18Label.textColor = .white
        measure19Label.textColor = .white
        measure20Label.textColor = .white
    }
}

