require 'user_agent'

describe "UserAgent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16" do

  before {
    @useragent = UserAgent.parse("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16")
  }

  it "should not be wechat" do
    expect(@useragent).to_not be_wechat
  end

end

# Wechat on iOS
describe "Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/5.3.1" do

  before {
    @useragent = UserAgent.parse("Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/5.3.1")
  }

  it "should be wechat" do
    expect(@useragent).to be_wechat
  end

end

# Wechat on Android
describe "Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-T10 Build/HuaweiH30-T10) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.0.51_r697493.440" do

  before {
    @useragent = UserAgent.parse("Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; H30-T10 Build/HuaweiH30-T10) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.3.0.51_r697493.440")
  }

  it "should be wechat" do
    expect(@useragent).to be_wechat
  end

end
