class user
    constructor: (name = "") -> @name = name
    set: (name) -> @name = name
    reset: (name) -> @name = ""
    get: () -> return @name
