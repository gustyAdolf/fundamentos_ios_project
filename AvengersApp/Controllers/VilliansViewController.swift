//
//  VilliansViewController.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 4/12/20.
//

import UIKit

class VilliansViewController: UIViewController {
    
    // MARK: - IBOulets views
    @IBOutlet var tableView: UITableView?
    
    // MARK: - Private properties
    private let refuseIdentifier = "CharacterCellID"
    private let segueIdentifier = "SEGUE_FROM_VILLIAN_TO_DETAILS"
    private let characterRepository = CharacterRepository()
    private var villians: Villians = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        villians = characterRepository.getAllVillians()
        tableView?.register(UINib(nibName: "CharacterCellView", bundle: nil), forCellReuseIdentifier: refuseIdentifier)
        tableView?.delegate = self
        tableView?.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? CharacterDetailsViewController,
              let data = sender as? Villian else {
            return
        }
        destination.villian = data
    }
}

// MARK: - Class Extensions
extension VilliansViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villians.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 256.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: refuseIdentifier, for: indexPath) as? CharacterCellViewController
        if (indexPath.row < villians.count) {
            cell?.configureVillianViews(villians[indexPath.row])
        }
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row < villians.count) {
            performSegue(withIdentifier: segueIdentifier, sender: villians[indexPath.row])
        }
    }
}
