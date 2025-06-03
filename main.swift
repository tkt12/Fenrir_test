func isValid(_ s: String) -> Bool {
// ここにコードを書いてください
    var stack: [Character] = []
    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]

    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else if let opening = pairs[char] {
            if stack.isEmpty || stack.removeLast() != opening {
                return false
            }
        }
    }
    return stack.isEmpty
}

var s = "()"
print(isValid(s)) // true

s = "({)}"
print(isValid(s)) // false