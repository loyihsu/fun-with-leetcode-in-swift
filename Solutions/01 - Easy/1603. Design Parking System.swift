// Problem: https://leetcode.com/problems/design-parking-system/

class ParkingSystem {
    var vacants = [0, 0, 0, 0]
    init(_ big: Int, _ medium: Int, _ small: Int) {
        vacants[1] = big
        vacants[2] = medium
        vacants[3] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if vacants[carType] == 0 { return false }
        else {
            vacants[carType] -= 1
            return true
        }
    }
}
