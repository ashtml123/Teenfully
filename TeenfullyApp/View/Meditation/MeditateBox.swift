import SwiftUI
import AVFoundation

struct MeditateBox: View {
    let timeDuration: Int
    let audioFileName: String
    @State private var isTimerActive = false
    @State private var remainingTime = 0
    @State private var player: AVAudioPlayer?
    @State private var countdownTimer: Timer?

    var body: some View {
        if isTimerActive {
            CountdownView(remainingTime: $remainingTime)
                .onAppear {
                    startTimer()
                    playAudio()
                }
                .onDisappear {
                    stopTimer()
                    stopAudio()
                }
        } else {
            Button(action: {
                isTimerActive = true
                remainingTime = timeDuration * 60
            }) {
                Text("Start \(timeDuration) Min Meditation")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    private func startTimer() {
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] timer in
            if remainingTime > 0 {
                remainingTime -= 1
            } else {
                timer.invalidate()
                isTimerActive = false
            }
        }
    }
    
    private func stopTimer() {
        countdownTimer?.invalidate()
        countdownTimer = nil
        isTimerActive = false
    }
    
    private func playAudio() {
        guard let audioURL = Bundle.main.url(forResource: audioFileName, withExtension: "mp3") else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: audioURL)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("Error playing audio: \(error.localizedDescription)")
        }
    }
    
    private func stopAudio() {
        player?.stop()
        player = nil
    }
}

struct CountdownView: View {
    @Binding var remainingTime: Int
    
    var body: some View {
        Text("\(remainingTime / 60):\(remainingTime % 60, specifier: "%02d")")
            .font(.largeTitle)
    }
}

struct MeditateBox_Previews: PreviewProvider {
    static var previews: some View {
        MeditateBox(timeDuration: 10, audioFileName: "meditation_audio")
    }
}
