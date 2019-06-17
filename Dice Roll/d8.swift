class d8: Die {
    private var rolledEyes: Int? = nil
    
    func getNumberOfEyes() -> Int {
        return 8
    }
    
    func getName() -> String {
        return "d8"
    }
    
    func getRolledEyes() -> Int? {
        return rolledEyes
    }
    
    func roll() -> Int {
        rolledEyes = Int.random(in: 1...getNumberOfEyes())
        
        return rolledEyes!
    }
}
