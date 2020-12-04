//
//  CharacterDetailsViewController.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 4/12/20.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    // MARK: - IBOulets views
    @IBOutlet var characterImg: UIImageView?
    @IBOutlet var characterDescription: UITextView?
    @IBOutlet var powerScore: [UIImageView]?
    
    var superhero: Superhero? = nil
    var villian: Villian? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataToView()
        if let heroName = superhero?.name {
            title = heroName
        } else if let villianName = villian?.name {
            title = villianName
        }
    }
    
    private func setDataToView() {
        if let hero = superhero {
            characterImg?.image = UIImage(named: hero.image ?? "")
            characterDescription?.text = hero.description
            setPowerScore(to: hero.powerScore)
        } else if let vill = villian {
            characterImg?.image = UIImage(named: vill.image ?? "")
            characterDescription?.text = vill.description
            setPowerScore(to: vill.powerScore)
        }
    }
    
    private func setPowerScore (to: Int) {
        powerScore?.forEach{ score in
            if(score.tag < to){
                score.image = UIImage(systemName: "star.fill")
            }
        }
    }
    
}
