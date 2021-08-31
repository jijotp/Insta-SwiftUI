//
//  ImageUtilities.swift
//  WACMOB
//
//  Created by Ann Mary on 23/07/20.
//  Copyright © 2020 Ann Mary. All rights reserved.
//

import Foundation
import SwiftUI

class ImageUtilities: ObservableObject {
    
    @Published var image: UIImage?
    var urlString: String?
    var imageCache = ImageCache.getImageCache()
    
    
    init(withURL url:String) {
        self.urlString = url
        loadImage()
    }
    
    func loadImage() {
        if loadImageFromCache() {
            return
        }
        loadImageFromUrl()
    }
    
    func loadImageFromCache() -> Bool {
        guard let urlString = urlString else {
            return false
        }
        
        guard let cacheImage = imageCache.get(forKey: urlString) else {
            return false
        }
        
        image = cacheImage
        return true
    }
    
    func loadImageFromUrl() {
        guard let urlString = urlString else {
            return
        }
        
        if urlString != "" {
            let url = URL(string: urlString)!
            let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data:response:error:))
            task.resume()
        }
    }
    
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print("Error: \(error!)")
            return
        }
        guard let data = data else {
            print("No data found")
            return
        }
        
        DispatchQueue.main.async {
            guard let loadedImage = UIImage(data: data) else {
                return
            }
            
          self.imageCache.set(forKey: self.urlString!, image: loadedImage)
            self.image = loadedImage
        }
    }
}

struct RemoteImageView: View {
    
    @ObservedObject var imageUtils: ImageUtilities
    
    init(withURL url:String) {
        imageUtils = ImageUtilities(withURL: url)
    }
    
    var body: some View {
        
        GeometryReader { metrics in
            Image(uiImage: imageUtils.image ??  UIImage())
                .resizable()
                .frame(width: metrics.size.width, height: metrics.size.height,alignment: .leading)
                .aspectRatio(contentMode: .fit)
                .clipped()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView(withURL: "")
    }
}
