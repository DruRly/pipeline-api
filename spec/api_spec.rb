require_relative "./spec_helper"

describe "api" do
  let(:email) { "test@gmail.com" }
  let(:password) { "password" }

  it "creates users via post request" do
    post "/users", user: { email: email, password: password }
    User.where(email: email).should exist
  end

  it "creates projects for user via post request"
  it "lists all projects for user"
end
