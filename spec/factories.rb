FactoryGirl.define do
  factory(:user) do
    username("pdxhipster")
    email("pdxhipster@pdx.com")
    password("password")
    neighborhood_id(1)
  end

  factory(:listing) do
    name("Children's book")
    description('"Room on the Broom" is a wonderful story about a happy witch and her helpful animal friends. The book is in excellent condition.')
  end
end
