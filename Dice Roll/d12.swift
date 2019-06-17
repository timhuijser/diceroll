class d12: Die {
    private var rolledEyes: Int? = nil
    
    func getNumberOfEyes() -> Int {
        return 12
    }
    
    func getName() -> String {
        return "d12"
    }
    
    func getRolledEyes() -> Int? {
        return rolledEyes
    }
    
    func roll() -> Int {
        rolledEyes = Int.random(in: 1...getNumberOfEyes())
        
        return rolledEyes!
    }
}
