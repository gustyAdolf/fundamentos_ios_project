//
//  CharacterCellViewController.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 4/12/20.
//

import UIKit

class CharacterCellViewController: UITableViewCell {
    
    // MARK: - IBOulets views
    @IBOutlet var characterImg: UIImageView?
    @IBOutlet var characterName: UILabel?
    @IBOutlet var powerScore: [UIImageView]?
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        characterImg?.image = nil
        characterName?.text = nil
        if let count = powerScore?.count {
            setPowerScore(to: count, selectedStar: false)
        }
    }
    
    func configureSuperheroViews(_ superhero: Superhero) {
        characterImg?.image = UIImage(named: superhero.image ?? "")
        characterName?.text = superhero.name
        setPowerScore(to: superhero.powerScore, selectedStar: true)
    }
    
    func configureVillianViews(_ villian: Villian) {
        characterImg?.image = UIImage(named: villian.image ?? "")
        characterName?.text = villian.name
        setPowerScore(to: villian.powerScore, selectedStar: true)
        
    }
    
    private func setPowerScore(to: Int, selectedStar: Bool) {
        powerScore?.forEach { score in
            if (score.tag < to && selectedStar){
                score.image = UIImage(systemName: "star.fill" )
            } else {
                score.image = UIImage(systemName: "star" )
            }
        }
    }
    
    
}
