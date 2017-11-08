class Gonghao
  include Mongoid::Document
  include WeixinRailsMiddleware::AutoGenerateWeixinTokenSecretKey
  field :weixin_secret_key, type: String
  field :weixin_token, type: String
  field :name, type: String
  field :appid, type: String
  field :appsecret, type: String
end
