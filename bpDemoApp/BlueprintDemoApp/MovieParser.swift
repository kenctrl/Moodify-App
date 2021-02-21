//
//  MovieParser.swift
//  BlueprintDemoApp
//
//  Created by Mindy Long on 2/20/21.
//

import Foundation
import SwiftyJSON

struct Song{
    let artists, name: String
    let /*acousticness, danceability, duration_ms, energy, explicit, instrumentalness, liveliness, loudness, popularity, speechiness, tempo, valence,*/ year: [Int]
}

protocol LoadDelegate{
    func didFinishLoadData(finished: Bool)
    func resendRequest()
}

class Songs{
    
    private var songData: [Song] = []
    
    var loadDelegate: LoadDelegate?
    
    func getData(){
        guard let path = Bundle.main.path(forResource: "Songs", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            
            parseData(data: data)
        } catch {
            print(error)
        }
    }
    
    func parseData(data: Data){
        
        do{
            
            let json = try JSON(data: data)
            
            for (_, song):(String, JSON) in json{
                
                /*let acousticness = song["acousticness"].stringValue*/
                let artists = song["artists"].stringValue
                /*let danceability = song["danceability"].arrayValue.map { $0.intValue}
                let duration_ms = song["duration_ms"].arrayValue.map { $0.intValue}
                let energy = song["energy"].arrayValue.map { $0.intValue}
                let explicit = song["explicit"].arrayValue.map { $0.intValue}
                let instrumentalness = song["instrumentalness"].arrayValue.map { $0.intValue}
                let liveliness = song["liveliness"].arrayValue.map { $0.intValue}
                let loudness = song["loudness"].arrayValue.map { $0.intValue}*/
                let name = song["name"].stringValue/*
                let popularity = song["popularity"].arrayValue.map { $0.intValue}
                let speechiness = song["speechiness"].arrayValue.map { $0.intValue}
                let tempo = song["tempo"].arrayValue.map { $0.intValue}
                let valence = song["valence"].arrayValue.map { $0.intValue}*/
                let year = song["year"].arrayValue.map { $0.intValue}
                
                let s = Song(/*acousticness: acousticness, */artists: artists, /*danceability: danceability, duration_ms: duration_ms, energy: energy, explicit: explicit, instrumentalness: instrumentalness, liveliness: liveliness, loudness: loudness, */name: name, /*popularity: popularity, speechiness: speechiness, tempo: tempo, valence: valence, */year: year)
                songData.append(s)
            }
            
            //print(songData.count)
            
            self.loadDelegate!.didFinishLoadData(finished: true)
        } catch let jsonErr {
            print("decoding error")
            print(jsonErr)
        }
    }
    
    func getSongs() -> [Song]{
        return self.songData
    }
}
