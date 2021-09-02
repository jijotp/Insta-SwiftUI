//
//  GameView.swift
//  WeacMob
//
//  Created by Jijo on 02/09/21.
//


import SwiftUI

struct Game {
    var name: String
    var developer: String
    var cover: Image
    var progress: Double
}

struct ProgressEdit {
    var progress: Double = 0.0
    var isUpdatingProgress = false

    mutating func present(currentGameProgress: Double) {
        progress = currentGameProgress
        isUpdatingProgress = true
    }
}

extension Double {
    func toProgressString() -> String {
        let p = Int(self * 100)
        return p.description + "%"
    }
}

struct GameView: View {
    let game: Game
    @State private var progressEdit = ProgressEdit()

    var body: some View {
        VStack {
            HStack {
                game.cover
                    .resizable()
                    .frame(width: 100, height: 150)

                VStack(alignment: .leading) {
                    Text(game.name)
                        .font(.system(size: 20, weight: .bold))

                    Text(game.developer)
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Spacer()
                        .frame(height: 30)

                    Text(progressGame().toProgressString())
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)

                    ProgressView(value: progressGame())
                }.padding(.leading, 10)
            }.padding()

            Button(action: {
                progressEdit.present(currentGameProgress: game.progress)
            }) {
                Text("Update progress")
            }.sheet(isPresented: $progressEdit.isUpdatingProgress) {
                ProgressEditorView(progressEdit: $progressEdit)
            }
        }
    }

    func progressGame() -> Double {
        return progressEdit.progress != 0.0 ? progressEdit.progress : game.progress
    }
}

struct ProgressEditorView: View {
    @State private var progress: CGFloat = 0.0
    @Binding var progressEdit: ProgressEdit

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Current progress:")
                    .font(.title3)
                    .padding(.leading, 20)
                HStack {
                    Slider(value: $progressEdit.progress)
                    Text(progressEdit.progress.toProgressString())
                }.padding()
                Spacer()
            }
            .navigationBarItems(trailing: Button("Done",
                                                  action: {
                                                    progressEdit.isUpdatingProgress = false
                                                  }))
        }
    }
}


struct Game_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: Game(name: "Zelda: Breath of the Wild", developer: "Nintendo EPD", cover: Image("zelda"), progress: 0.75))
            .previewDevice("iPhone 12")
    }
}
