require "application_system_test_case"

class DetOrdensTest < ApplicationSystemTestCase
  setup do
    @det_orden = det_ordens(:one)
  end

  test "visiting the index" do
    visit det_ordens_url
    assert_selector "h1", text: "Det Ordens"
  end

  test "creating a Det orden" do
    visit det_ordens_url
    click_on "New Det Orden"

    fill_in "Cantidad", with: @det_orden.cantidad
    fill_in "Precio Venta", with: @det_orden.precio_venta
    fill_in "Producto", with: @det_orden.producto_id
    click_on "Create Det orden"

    assert_text "Det orden was successfully created"
    click_on "Back"
  end

  test "updating a Det orden" do
    visit det_ordens_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @det_orden.cantidad
    fill_in "Precio Venta", with: @det_orden.precio_venta
    fill_in "Producto", with: @det_orden.producto_id
    click_on "Update Det orden"

    assert_text "Det orden was successfully updated"
    click_on "Back"
  end

  test "destroying a Det orden" do
    visit det_ordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Det orden was successfully destroyed"
  end
end
