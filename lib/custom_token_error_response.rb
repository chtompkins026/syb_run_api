module CustomTokenErrorResponse
  def body
    {
      status_code: 401,
      message: "Error - you do not have access to this site",
      result: []
    }
    # or merge with existing values by
    # super.merge({key: value})
  end
end
