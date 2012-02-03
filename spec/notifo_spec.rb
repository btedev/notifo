require 'spec_helper'

describe Notifo do

  let(:username)  { "joeuser" }
  let(:apisecret) { "fakefakefakefake" }
  let(:subject)   { Notifo.new(username, apisecret) }
  let(:auth)      { {:username => username, :password => apisecret} }

  it "sets auth instance variables on initialize" do
    subject.auth[:username] = username
    subject.auth[:apisecret] = apisecret 
  end

  it "subscribes user" do
    options = { :body => {:username => username}, :basic_auth => auth }
    Notifo.should_receive(:post).with('/subscribe_user', options)
    subject.subscribe_user(username)
  end

  it "posts a message" do

    msg = 'The message'
    title = 'The title'
    uri = 'http://google.com'

    options = { 
      :body => {
        :to => username, 
        :msg => msg, 
        :label=>title, 
        :title=>title, 
        :uri=>uri
       }, 
      :basic_auth => auth 
    }

    Notifo.should_receive(:post).with('/send_notification', options)
    subject.post(username, msg, title, uri, title)
  end

end

