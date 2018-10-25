require 'test_helper'

class DetOrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @det_orden = det_ordens(:one)
  end

  test "should get index" do
    get det_ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_det_orden_url
    assert_response :success
  end

  test "should create det_orden" do
    assert_difference('DetOrden.count') do
      post det_ordens_url, params: { det_orden: { cantidad: @det_orden.cantidad, precio_venta: @det_orden.precio_venta, producto_id: @det_orden.producto_id } }
    end

    assert_redirected_to det_orden_url(DetOrden.last)
  end

  test "should show det_orden" do
    get det_orden_url(@det_orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_det_orden_url(@det_orden)
    assert_response :success
  end

  test "should update det_orden" do
    patch det_orden_url(@det_orden), params: { det_orden: { cantidad: @det_orden.cantidad, precio_venta: @det_orden.precio_venta, producto_id: @det_orden.producto_id } }
    assert_redirected_to det_orden_url(@det_orden)
  end

  test "should destroy det_orden" do
    assert_difference('DetOrden.count', -1) do
      delete det_orden_url(@det_orden)
    end

    assert_redirected_to det_ordens_url
  end
end
