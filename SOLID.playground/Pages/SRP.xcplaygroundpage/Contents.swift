//: [Previous](@previous)

//MARK: SRP : Single Responsibility Principle 위배
import Foundation

class WorkoutResult {
    func workout() -> String {
        let wods = announce()
        let doWorkout = workout(workouts: wods)
        let result = judge(isDone: doWorkout) ? "오운완" : "노랩천국"
        return result
    }
    private func announce() -> [String] {
        return ["10 Snatch", "10 Burpee"]
    }
    private func workout(workouts: [String]) -> [Bool] {
        return Array(repeating: true, count: workouts.count)
    }
    private func judge(isDone: [Bool]) -> Bool {
        let cnt = isDone.filter { $0 == true }.count
        let judgeResult = cnt == isDone.count ? true : false
        return judgeResult
    }
}

let miori = WorkoutResult()
miori.workout()
//: [Next](@next)


//MARK: SRP 지키기
protocol AnnounceProtocol {
    func announce() -> [String]
}

protocol WorkoutProtocol {
    func workout(workouts: [String]) -> [Bool]
}

protocol JudgeProtocol {
    func judge(isDone: [Bool]) -> Bool
}

class SRPWorkoutResult {
    let announce: AnnounceProtocol
    let workouts: WorkoutProtocol
    let judge: JudgeProtocol
    
    func workout() -> String {
        let wods = announce.announce()
        let doWorkout = workouts.workout(workouts: wods)
        let result = judge.judge(isDone: doWorkout) ? "오운완" : "노랩천국"
        return result
    }
    
    init(announce: AnnounceProtocol, workouts: WorkoutProtocol, judge: JudgeProtocol) {
        self.announce = announce
        self.workouts = workouts
        self.judge = judge
    }
}

class Announce: AnnounceProtocol {
    func announce() -> [String] {
        return ["10 Snatch", "10 Burpee"]
    }
}

class Workout: WorkoutProtocol {
    func workout(workouts: [String]) -> [Bool] {
        return Array(repeating: true, count: workouts.count)
    }
}

class Judge: JudgeProtocol {
    func judge(isDone: [Bool]) -> Bool {
        let cnt = isDone.filter { $0 == true }.count
        let judgeResult = cnt == isDone.count ? true : false
        return judgeResult
    }
}

let miori2 = SRPWorkoutResult(announce: Announce(), workouts: Workout(), judge: Judge())
miori2.workout()

