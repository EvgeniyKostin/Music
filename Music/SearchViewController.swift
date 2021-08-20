//
//  SearchViewController.swift
//  Music
//
//  Created by Evgeniy Kostin on 16.08.2021.
//

import UIKit
import Alamofire

//создаем модель
struct TrackModel {
    var trackName: String
    var artistName: String
}

//данный экран будет отвечать за поиск треков из internet
class SearchViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    let tracks = [TrackModel(trackName: "bad guy", artistName: "Billie Eilish"),
                 TrackModel(trackName: "bury a friend", artistName: "Billie Eilish")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupSearchBar()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
    }
    
    //создаем метод numberOfRowsInSection отвечающий за количество ячеек в таблице
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    //создаем метод cellForRowAt отвечающий за настройку конкретной ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let track = tracks[indexPath.row]
        cell.textLabel?.text = "\(track.trackName)\n\(track.artistName)"
        cell.textLabel?.numberOfLines = 2
        cell.imageView?.image = #imageLiteral(resourceName: "Image-1")
        return cell
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        
        AF.request(url).responseData { dataResponse in
            if let error = dataResponse.error {
                print("Error received rewuestiong data: \(error.localizedDescription)")
                return
            }
            
            guard let data = dataResponse.data else { return }
            let someString = String(data: data, encoding: .utf8)
            print(someString ?? "")
        }
    }
}
