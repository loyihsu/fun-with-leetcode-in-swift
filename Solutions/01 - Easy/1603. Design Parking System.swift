// Problem: https://leetcode.com/problems/design-parking-system/

class ParkingSystem {
    var big = 0, medium = 0, small = 0
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }

    func addCar(_ carType: Int) -> Bool {
        if carType == 1 {
            if big == 0 { return false }
            big -= 1
        } else if carType == 2 {
            if medium == 0 { return false }
            medium -= 1
        } else {
            if small == 0 { return false }
            small -= 1
        }
        return true
    }
}
