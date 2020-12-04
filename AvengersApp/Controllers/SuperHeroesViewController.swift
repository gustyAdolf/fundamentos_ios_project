//
//  MainViewController.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 2/12/20.
//

import UIKit

class SuperHeroesViewController: UIViewController {
    
    // MARK: - IBOulet views
    @IBOutlet var tableView: UITableView?
    
    // MARK: - Private properties
    private let refuseIdentifier = "CharacterCellID"
    private let segueIdentifier = "SEGUE_FROM_HERO_TO_DETAILS"
    private let characterRepository = CharacterRepository()
    private var superheroes: Superheroes = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superheroes = characterRepository.getAllSuperheroes()
        tableView?.register(UINib(nibName: "CharacterCellView", bundle: nil), forCellReuseIdentifier: refuseIdentifier)
        tableView?.delegate = self
        tableView?.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? CharacterDetailsViewController,
              let data = sender as? Superhero else {
            return
        }
        destination.superhero = data
    }
}


// MARK: - Class Extensions
extension SuperHeroesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 256.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: refuseIdentifier, for: indexPath) as? CharacterCellViewController
        if (indexPath.row < superheroes.count) {
            cell?.configureSuperheroViews(superheroes[indexPath.row])
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row < superheroes.count) {
            performSegue(withIdentifier: segueIdentifier, sender: superheroes[indexPath.row])
        }
    }
}
