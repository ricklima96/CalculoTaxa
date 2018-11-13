require "application_system_test_case"

class SimulationsTest < ApplicationSystemTestCase
  setup do
    @simulation = simulations(:one)
  end

  test "visiting the index" do
    visit simulations_url
    assert_selector "h1", text: "Simulations"
  end

  test "creating a Simulation" do
    visit simulations_url
    click_on "New Simulation"

    fill_in "Email", with: @simulation.email
    fill_in "Faturamentomensal", with: @simulation.faturamentoMensal
    fill_in "Nome", with: @simulation.nome
    fill_in "Nomeempresa", with: @simulation.nomeEmpresa
    fill_in "Prazotitulo", with: @simulation.prazoTitulo
    fill_in "Valorreceber", with: @simulation.valorReceber
    fill_in "Valortaxa", with: @simulation.valorTaxa
    fill_in "Valortitulo", with: @simulation.valorTitulo
    click_on "Create Simulation"

    assert_text "Simulation was successfully created"
    click_on "Back"
  end

  test "updating a Simulation" do
    visit simulations_url
    click_on "Edit", match: :first

    fill_in "Email", with: @simulation.email
    fill_in "Faturamentomensal", with: @simulation.faturamentoMensal
    fill_in "Nome", with: @simulation.nome
    fill_in "Nomeempresa", with: @simulation.nomeEmpresa
    fill_in "Prazotitulo", with: @simulation.prazoTitulo
    fill_in "Valorreceber", with: @simulation.valorReceber
    fill_in "Valortaxa", with: @simulation.valorTaxa
    fill_in "Valortitulo", with: @simulation.valorTitulo
    click_on "Update Simulation"

    assert_text "Simulation was successfully updated"
    click_on "Back"
  end

  test "destroying a Simulation" do
    visit simulations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simulation was successfully destroyed"
  end
end
