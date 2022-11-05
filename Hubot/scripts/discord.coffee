robothear = (response) -> return "#{response} who?"
class User
    constructor: (name = "") -> @name = name
    set: (name) -> @name = name
    reset: (name) -> @name = ""
    get: () -> return @name

module.exports = (robot) ->
  user = new User
  robot.hear /knock knock/i, (res) ->
    res.send "who's there?"
    user.set(res.envelope.user.name)

#    who = (ifKnockKnock) ->
#     robot.hear /(.*)/i, (response) ->
#         if ifKnockKnock
#             response.send robothear(response.match[1])

#   robot.listen(
#     (message) -> # Match function
#       # Occassionally respond to things that Steve says
#       message.user.name == user.get()
#     (response) -> # Standard listener callback
#       # Let Steve know how happy you are that he exists
#       response.reply "who's?"
#   )

