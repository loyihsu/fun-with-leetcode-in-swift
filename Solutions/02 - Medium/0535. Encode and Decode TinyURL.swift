// Problem: https://leetcode.com/problems/encode-and-decode-tinyurl/
class Codec {
    // Encodes a URL to a shortened URL.
    
    var urls = [String: String]()
    let sets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    var setsArray: [Character]
    
    init() {
        setsArray = Array(sets)
    }
    
    func createRandomString() -> String {
        var output = ""
        
        for i in 0..<6 {
            output.append(setsArray[Int.random(in: 0..<62)])
        }
        return output
    }
    
    func encode(_ longUrl: String) -> String {
        var s = createRandomString()
        
        while urls[s] != nil {
            s = createRandomString()
        }
        
        s = "http://tinyurl.com/\(s)"
        
        urls[s] = longUrl
        
        return s
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        return urls[shortUrl]!
    }
}
