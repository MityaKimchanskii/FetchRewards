//
//  ListOfMealsViewController.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import UIKit

class ListOfMealsViewController: UIViewController {
    
    // MARK: - Properties
    var meals: [Meal] = []
    
    // MARK: - Outlets
    @IBOutlet weak var listOfMealsTableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMeals()
    }
    
    // MARK: - Helper Methods
    func fetchMeals() {
        MealController.fetchMeals { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let meals):
                    self?.meals = meals
                    self?.listOfMealsTableView.reloadData()
                case .failure(let error):
                    print(error)
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue",
           let indexPath = listOfMealsTableView.indexPathForSelectedRow,
           let destinationVC = segue.destination as? DetailsViewController {
               let mealData = meals[indexPath.row]
               destinationVC.mealID = mealData.mealID
        }
    }
}

// MARK: - Extensions
extension ListOfMealsViewController: UITableViewDelegate {}

extension ListOfMealsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath) as? MealTableViewCell
        else { return UITableViewCell() }
        let meal = meals[indexPath.row]
        cell.meal = meal
        return cell
    }
}
