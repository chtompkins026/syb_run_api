module CustomTokenResponse
  def body
    user = User.find(@token.resource_owner_id)
    client = user.client
    # call original `#body` method and merge its result with the additional data hash
       super.merge({
           status_code: 200,
           message: "Wooooo, you have have been logged in!",
           result: user,
           extra: client
       })
  end
end
