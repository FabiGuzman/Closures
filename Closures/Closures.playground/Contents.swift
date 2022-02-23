import UIKit

func printNumbersWithEscaping(completion: @escaping () -> Void) {
    print("1")
    print("2")
    print("3")
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completion()
    }
    print("4")
    print("5")
    print("6")
}

printNumbersWithEscaping {
    print("10")
}
