require 'rails_helper'

RSpec.describe Filme, type: :model do
  it "criando post sem nome" do
    post = Filme.new(nome: "", descricao:"a", ano:"2021-02-01")
    expect(post).to_not be_valid
  end
  it "criando post sem desc" do
    post = Filme.new(nome: "a", descricao:"", ano:"2021-02-01")
    expect(post).to_not be_valid
  end
  it "criando post sem ano" do
    post = Filme.new(nome: "a", descricao:"a", ano:"")
    expect(post).to_not be_valid
  end
  it "criando post completo" do
    post = Filme.new(nome: "nome", descricao:"a", ano:"2021-02-01")
    expect(post).to be_valid
  end
end
