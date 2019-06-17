class d6: Die {
    private var rolledEyes: Int? = nil
    
    func getNumberOfEyes() -> Int {
        return 6
    }
    
    func getName() -> String {
        return "d6"
    }
    
    func getRolledEyes() -> Int? {
        return rolledEyes
    }
    
    func roll() -> Int {
        rolledEyes = Int.random(in: 1...getNumberOfEyes())
        
        return rolledEyes!
    }
}
