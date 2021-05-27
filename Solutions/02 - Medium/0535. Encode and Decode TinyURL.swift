// Problem: https://leetcode.com/problems/encode-and-decode-tinyurl/
class Codec {
    // Encodes a URL to a shortened URL.
    static let sets = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    var urls = [String: String](), setsArray = Array(sets)

    func createRandomString() -> String {
        var output = ""
        for i in 0..<6 {
            output.append(setsArray[Int.random(in: 0..<62)])
        }
        return output
    }

    func encode(_ longUrl: String) -> String {
        var s = createRandomString()
        while urls[s] != nil { s = createRandomString() }
        urls["http://tinyurl.com/\(s)"] = longUrl
        return "http://tinyurl.com/\(s)"
    }

    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        return urls[shortUrl]!
    }
}
