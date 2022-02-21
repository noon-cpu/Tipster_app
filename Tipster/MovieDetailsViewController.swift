//
//  MovieDetailsViewController.swift
//  Tipster
//
//  Created by Noon Elmostafa on 2/7/22.
//

import UIKit
import AlamofireImage

internal class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text =  movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl +
            posterPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        
        let baseUrlforBackdrop = "https://image.tmdb.org/t/p/w780"
        
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrlforBackdrop + backdropPath)
        
        backdropView.af.setImage(withURL: backdropUrl!)
        
    }

}

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
 */
    
